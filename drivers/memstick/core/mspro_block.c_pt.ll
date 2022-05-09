; ModuleID = '/llk/IR_all_yes/drivers/memstick/core/mspro_block.c_pt.bc'
source_filename = "../drivers/memstick/core/mspro_block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.memstick_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.memstick_device_id = type { i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.memstick_dev = type { %struct.memstick_device_id, ptr, %struct.ms_register_addr, %struct.completion, %struct.memstick_request, ptr, ptr, ptr, ptr, %struct.device }
%struct.ms_register_addr = type { i8, i8, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.83 }
%union.anon.83 = type { %struct.scatterlist }
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
%struct.mspro_block_data = type { ptr, i32, i32, ptr, ptr, ptr, %struct.blk_mq_tag_set, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, ptr, ptr, %struct.attribute_group, [32 x %struct.scatterlist], i32, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mspro_param_register = type <{ i8, i16, i32, i8 }>
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.mspro_devinfo = type { i16, i16, i16, i16, i16, [6 x i8] }
%struct.mspro_sys_info = type { i8, i8, i16, i16, i16, i16, [2 x i8], [8 x i8], i32, i8, [3 x i8], i16, i16, [4 x i8], i8, i8, i16, i16, i16, i16, i8, [4 x i8], i8, i16, i8, i8, i8, [7 x i8], [16 x i8], [16 x i8] }
%struct.anon.84 = type { i8, [15 x i8] }
%struct.mspro_attribute = type { i16, i16, i8, [11 x i8], [0 x %struct.mspro_attr_entry] }
%struct.mspro_attr_entry = type { i32, i32, i8, [3 x i8] }
%struct.mspro_sys_attr = type { i32, ptr, i8, [32 x i8], %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.mspro_mbr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.mspro_specfile = type { [8 x i8], [3 x i8], i8, [10 x i8], i16, i16, i16, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.82, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.82 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
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
%struct.hd_geometry = type { i8, i8, i16, i32 }

@__param_str_major = internal constant [18 x i8] c"mspro_block.major\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype278 = internal constant [31 x i8] c"mspro_block.parmtype=major:int\00", section ".modinfo", align 1
@mspro_block_driver = internal global { %struct.memstick_driver, [32 x i8] } { %struct.memstick_driver { ptr @mspro_block_id_tbl, ptr @mspro_block_probe, ptr @mspro_block_remove, ptr @mspro_block_suspend, ptr @mspro_block_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mspro_block\00", [20 x i8] zeroinitializer }, align 32
@mspro_block_disk_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.96, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mspro_block__289_1469_mspro_block_init6 = internal global ptr @mspro_block_init, section ".initcall6.init", align 4
@__exitcall_mspro_block_exit = internal global ptr @mspro_block_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [51 x i8] c"mspro_block.file=drivers/memstick/core/mspro_block\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [24 x i8] c"mspro_block.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [30 x i8] c"mspro_block.author=Alex Dubov\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [64 x i8] c"mspro_block.description=Sony MemoryStickPro block device driver\00", section ".modinfo", align 1
@mspro_block_id_tbl = internal global { [2 x %struct.memstick_device_id], [24 x i8] } { [2 x %struct.memstick_device_id] [%struct.memstick_device_id { i8 1, i8 1, i8 0, i8 0 }, %struct.memstick_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@mspro_block_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&msb->q_lock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mspro_block_init_card.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mspro_block_init_card\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/memstick/core/mspro_block.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"card activated\0A\00", [16 x i8] zeroinitializer }, align 32
@mspro_block_init_card.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"card r/w status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mspro_block_init_card.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"attributes loaded\0A\00", [45 x i8] zeroinitializer }, align 32
@mspro_block_complete_req.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mspro_block_complete_req\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"complete %d, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mspro_block_complete_req.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 -64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"transferred %x (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@h_mspro_block_wait_for_ced.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"h_mspro_block_wait_for_ced\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wait for ced: value %x\0A\00", [40 x i8] zeroinitializer }, align 32
@mspro_block_switch_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: could not switch to 4-bit mode, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mspro_block_switch_interface\00", [35 x i8] zeroinitializer }, align 32
@mspro_block_switch_interface._entry_ptr = internal global ptr @mspro_block_switch_interface._entry, section ".printk_index", align 4
@mspro_block_switch_interface._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: switching to 4-bit parallel mode\0A\00", [56 x i8] zeroinitializer }, align 32
@mspro_block_switch_interface._entry_ptr.16 = internal global ptr @mspro_block_switch_interface._entry.14, section ".printk_index", align 4
@mspro_block_switch_interface._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: switching to 8-bit parallel mode\0A\00", [56 x i8] zeroinitializer }, align 32
@mspro_block_switch_interface._entry_ptr.19 = internal global ptr @mspro_block_switch_interface._entry.17, section ".printk_index", align 4
@mspro_block_switch_interface._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.3, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014%s: could not switch to 8-bit mode, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mspro_block_switch_interface._entry_ptr.22 = internal global ptr @mspro_block_switch_interface._entry.20, section ".printk_index", align 4
@mspro_block_switch_interface._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.3, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: interface error, trying to fall back to serial\0A\00", [42 x i8] zeroinitializer }, align 32
@mspro_block_switch_interface._entry_ptr.25 = internal global ptr @mspro_block_switch_interface._entry.23, section ".printk_index", align 4
@mspro_block_read_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: unrecognized device signature %x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mspro_block_read_attributes\00", [36 x i8] zeroinitializer }, align 32
@mspro_block_read_attributes._entry_ptr = internal global ptr @mspro_block_read_attributes._entry, section ".printk_index", align 4
@mspro_block_read_attributes._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: way too many attribute entries\0A\00", [58 x i8] zeroinitializer }, align 32
@mspro_block_read_attributes._entry_ptr.30 = internal global ptr @mspro_block_read_attributes._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"media_attributes\00", [47 x i8] zeroinitializer }, align 32
@mspro_block_read_attributes.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.32, i8 1, i8 5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"adding attribute %d: id %x, address %x, size %zx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"attr_x%02x\00", [21 x i8] zeroinitializer }, align 32
@mspro_block_read_attributes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mspro_block_read_attributes.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.35, i8 1, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reading attribute range %x, %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attr_sysinfo\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"attr_modelname\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attr_mbr\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"attr_pbr16\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"attr_pbr32\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"attr_specfilevalues1\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"attr_specfilevalues2\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attr_devinfo\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"class: %x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block size: %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"block count: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"user block count: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"page size: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"assembly date: GMT%+d:%d %04u-%02u-%02u %02u:%02u:%02u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"serial number: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"assembly maker code: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"assembly model code: %02x%02x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"memory maker code: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"memory model code: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcc: %x\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpp: %x\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"controller number: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"controller function: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"start sector: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unit size: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sub class: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"interface type: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"controller code: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"format type: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device type: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mspro id: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"boot partition: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start head: %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"start cylinder: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"partition type: %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"end head: %x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"end sector: %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"end cylinder: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"start sectors: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sectors per partition: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"name: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ext: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"attribute: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"time: %d:%d:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"date: %d-%d-%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"start cluster: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"size: %x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cylinders: %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"heads: %x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bytes per track: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bytes per sector: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sectors per track: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@mspro_block_disk_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.92, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mspro_block_disk_lock, i64 52), ptr getelementptr (i8, ptr @mspro_block_disk_lock, i64 52) }, ptr @mspro_block_disk_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.93, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mspro_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @mspro_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mspro_block_init_disk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ms_block_bdops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @mspro_block_bd_open, ptr @mspro_block_bd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mspro_block_bd_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mspblk%d\00", [23 x i8] zeroinitializer }, align 32
@mspro_block_init_disk.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 1, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mspro_block_init_disk\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"capacity set %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mspro_block_disk_lock.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mspro_block_disk_lock\00", [42 x i8] zeroinitializer }, align 32
@mspro_block_remove.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.3, ptr @.str.95, i8 1, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mspro_block_remove\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mspro block remove\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mspro_block_disk_idr.xa_lock\00", [35 x i8] zeroinitializer }, align 32
@mspro_block_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mspro_block: failed to register major %d, error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mspro_block_init\00", [47 x i8] zeroinitializer }, align 32
@mspro_block_init._entry_ptr = internal global ptr @mspro_block_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 48]
@__sancov_gen_cov_switch_values.99 = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 21, i64 32, i64 33, i64 34, i64 37, i64 38, i64 48]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 8, i64 16, i64 21, i64 32, i64 37, i64 38, i64 48]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 7, i64 11, i64 13, i64 14]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 23, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"mspro_block_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1431, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1465, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"mspro_block_disk_idr\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"mspro_block_id_tbl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1424, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1294, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1146, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1159, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1166, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 746, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 769, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 562, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 902, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 910, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 920, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 924, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 937, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1004, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1011, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1024, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1042, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1047, i32 49 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1051, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1053, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1095, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 262, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 264, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 266, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 268, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 270, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 272, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 274, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 276, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 332, i32 47 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 334, i32 47 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 336, i32 47 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 338, i32 47 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 340, i32 47 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 342, i32 47 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 349, i32 47 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 352, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 354, i32 47 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 358, i32 47 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 360, i32 47 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 362, i32 47 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 364, i32 47 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 366, i32 47 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 369, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 371, i32 47 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 373, i32 47 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 375, i32 47 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 377, i32 47 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 379, i32 47 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 381, i32 47 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 383, i32 47 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 385, i32 47 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 411, i32 47 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 413, i32 47 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 417, i32 47 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 419, i32 47 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 421, i32 47 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 423, i32 47 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 425, i32 47 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 427, i32 47 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 430, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 451, i32 47 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 452, i32 47 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 453, i32 47 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 455, i32 47 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 459, i32 47 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 463, i32 47 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 465, i32 47 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 480, i32 47 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 482, i32 47 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 484, i32 47 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 486, i32 47 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 488, i32 47 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 302, i32 48 }
@___asan_gen_.380 = private unnamed_addr constant [22 x i8] c"mspro_block_disk_lock\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [13 x i8] c"mspro_mq_ops\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1171, i32 32 }
@___asan_gen_.386 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1213, i32 14 }
@___asan_gen_.389 = private unnamed_addr constant [15 x i8] c"ms_block_bdops\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 242, i32 45 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1232, i32 32 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1240, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 175, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1332, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 174, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private constant [39 x i8] c"../drivers/memstick/core/mspro_block.c\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1449, i32 3 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_majortype278, ptr @__exitcall_mspro_block_exit, ptr @__initcall__kmod_mspro_block__289_1469_mspro_block_init6, ptr @__param_major, ptr @mspro_block_exit, ptr @mspro_block_init._entry, ptr @mspro_block_init._entry_ptr, ptr @mspro_block_read_attributes._entry, ptr @mspro_block_read_attributes._entry.28, ptr @mspro_block_read_attributes._entry_ptr, ptr @mspro_block_read_attributes._entry_ptr.30, ptr @mspro_block_switch_interface._entry, ptr @mspro_block_switch_interface._entry.14, ptr @mspro_block_switch_interface._entry.17, ptr @mspro_block_switch_interface._entry.20, ptr @mspro_block_switch_interface._entry.23, ptr @mspro_block_switch_interface._entry_ptr, ptr @mspro_block_switch_interface._entry_ptr.16, ptr @mspro_block_switch_interface._entry_ptr.19, ptr @mspro_block_switch_interface._entry_ptr.22, ptr @mspro_block_switch_interface._entry_ptr.25, ptr @major, ptr @mspro_block_driver, ptr @.str, ptr @mspro_block_disk_idr, ptr @mspro_block_id_tbl, ptr @mspro_block_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mspro_block_read_attributes.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @mspro_block_disk_lock, ptr @mspro_mq_ops, ptr @mspro_block_init_disk.__key, ptr @ms_block_bdops, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_disk_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_id_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_switch_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_switch_interface._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_switch_interface._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_switch_interface._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_switch_interface._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_read_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_read_attributes._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_read_attributes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_disk_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_init_disk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_block_bdops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mspro_block_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mspro_block_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_unregister_driver(ptr noundef nonnull @mspro_block_driver) #13
  %0 = load i32, ptr @major, align 4
  tail call void @unregister_blkdev(i32 noundef %0, ptr noundef nonnull @.str) #13
  tail call void @idr_destroy(ptr noundef nonnull @mspro_block_disk_idr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  %call = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef nonnull @.str, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %1 = load i32, ptr @major, align 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %1, i32 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %call, ptr @major, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @memstick_register_driver(ptr noundef nonnull @mspro_block_driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load i32, ptr @major, align 4
  tail call void @unregister_blkdev(i32 noundef %2, ptr noundef nonnull @.str) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %if.then6 ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 944) #17
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
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %call7.i.i, align 8
  %q_lock = getelementptr inbounds %struct.mspro_block_data, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %q_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mspro_block_probe.__key, i16 noundef signext 3) #13
  %call3 = tail call fastcc i32 @mspro_block_init_card(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %attr_group = getelementptr inbounds %struct.mspro_block_data, ptr %call7.i.i, i32 0, i32 17
  %call7 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef %attr_group) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out_free_crit_edge

if.end6.out_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end10:                                         ; preds = %if.end6
  %call11 = tail call fastcc i32 @mspro_block_init_disk(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %check = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %check to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mspro_block_check_card, ptr %check, align 8
  %stop = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 7
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mspro_block_stop, ptr %stop, align 8
  %start = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 8
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mspro_block_start, ptr %start, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef %attr_group) #13
  br label %out_free

out_free:                                         ; preds = %if.end14, %if.end6.out_free_crit_edge, %if.end.out_free_crit_edge
  %rc.0 = phi i32 [ %call3, %if.end.out_free_crit_edge ], [ %call7, %if.end6.out_free_crit_edge ], [ %call11, %if.end14 ]
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.mspro_block_data, ptr %call7.i.i, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %out_free.mspro_block_data_clear.exit_crit_edge, label %for.cond.preheader.i

out_free.mspro_block_data_clear.exit_crit_edge:   ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_data_clear.exit

for.cond.preheader.i:                             ; preds = %out_free
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool3.not16.i = icmp eq ptr %10, null
  br i1 %tobool3.not16.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %11 = phi ptr [ %17, %for.body.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cnt.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr3.i.i = getelementptr i8, ptr %11, i32 -44
  %data.i = getelementptr i8, ptr %11, i32 -40
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %13) #13
  tail call void @kfree(ptr noundef %add.ptr3.i.i) #13
  %inc.i = add i32 %cnt.017.i, 1
  %14 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %inc.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %8, %for.cond.preheader.i.for.end.i_crit_edge ], [ %15, %for.body.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa.i) #13
  br label %mspro_block_data_clear.exit

mspro_block_data_clear.exit:                      ; preds = %for.end.i, %out_free.mspro_block_data_clear.exit_crit_edge
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mspro_block_data_clear.exit, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %mspro_block_data_clear.exit ], [ 0, %if.then13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mspro_block_remove(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %q_lock = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %eject = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %eject, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %eject, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  %queue = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_start_hw_queues(ptr noundef %4) #13
  %disk = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk, align 4
  tail call void @del_gendisk(ptr noundef %6) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_remove.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_remove, %do.end14)) #13
          to label %if.then [label %do.end14], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_remove.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.95) #13
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue, align 4
  tail call void @blk_cleanup_queue(ptr noundef %8) #13
  %tag_set = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 6
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #13
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %queue, align 4
  %dev17 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %attr_group = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 17
  tail call void @sysfs_remove_group(ptr noundef %dev17, ptr noundef %attr_group) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @mspro_block_disk_lock, i32 noundef 0) #13
  %attrs.i = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 17, i32 3
  %10 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end14.mspro_block_data_clear.exit_crit_edge, label %for.cond.preheader.i

do.end14.mspro_block_data_clear.exit_crit_edge:   ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_data_clear.exit

for.cond.preheader.i:                             ; preds = %do.end14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool3.not16.i = icmp eq ptr %13, null
  br i1 %tobool3.not16.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %14 = phi ptr [ %20, %for.body.i.for.body.i_crit_edge ], [ %13, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cnt.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr3.i.i = getelementptr i8, ptr %14, i32 -44
  %data.i = getelementptr i8, ptr %14, i32 -40
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %16) #13
  tail call void @kfree(ptr noundef %add.ptr3.i.i) #13
  %inc.i = add i32 %cnt.017.i, 1
  %17 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %inc.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %11, %for.cond.preheader.i.for.end.i_crit_edge ], [ %18, %for.body.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa.i) #13
  br label %mspro_block_data_clear.exit

mspro_block_data_clear.exit:                      ; preds = %for.end.i, %do.end14.mspro_block_data_clear.exit_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mspro_block_disk_lock) #13
  %22 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disk, align 4
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i, align 8
  %first_minor.i.i = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %first_minor.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_minor.i.i, align 4
  %and.i = lshr i32 %27, 3
  %shr.i = and i32 %and.i, 131071
  tail call void @mutex_lock_nested(ptr noundef nonnull @mspro_block_disk_lock, i32 noundef 0) #13
  %tobool.not.i32 = icmp eq ptr %25, null
  br i1 %tobool.not.i32, label %mspro_block_data_clear.exit.mspro_block_disk_release.exit_crit_edge, label %if.then.i

mspro_block_data_clear.exit.mspro_block_disk_release.exit_crit_edge: ; preds = %mspro_block_data_clear.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_disk_release.exit

if.then.i:                                        ; preds = %mspro_block_data_clear.exit
  %usage_count.i = getelementptr inbounds %struct.mspro_block_data, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i = icmp eq i32 %29, 0
  br i1 %tobool1.not.i, label %if.then.i.if.then6.i_crit_edge, label %if.end.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.end.i:                                         ; preds = %if.then.i
  %dec.i = add i32 %29, -1
  %30 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dec.i, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.then6.i_crit_edge, label %if.end.i.mspro_block_disk_release.exit_crit_edge

if.end.i.mspro_block_disk_release.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_disk_release.exit

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %25) #13
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %private_data.i, align 8
  %call8.i = tail call ptr @idr_remove(ptr noundef nonnull @mspro_block_disk_idr, i32 noundef %shr.i) #13
  tail call void @put_disk(ptr noundef %23) #13
  br label %mspro_block_disk_release.exit

mspro_block_disk_release.exit:                    ; preds = %if.then6.i, %if.end.i.mspro_block_disk_release.exit_crit_edge, %mspro_block_data_clear.exit.mspro_block_disk_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mspro_block_disk_lock) #13
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_suspend(ptr nocapture noundef readonly %card, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_stop_hw_queues(ptr noundef %3) #13
  %q_lock = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %active = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %active, align 1
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %active, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_resume(ptr noundef %card) #2 align 64 {
entry:
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 944) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %card, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call4 = tail call fastcc i32 @mspro_block_init_card(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

for.cond.preheader:                               ; preds = %if.end
  %attrs = getelementptr inbounds %struct.mspro_block_data, ptr %call7.i.i, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool8.not71 = icmp eq ptr %10, null
  br i1 %tobool8.not71, label %for.cond.preheader.out_free_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.out_free_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %attrs10 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 17, i32 3
  %11 = ptrtoint ptr %attrs10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs10, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %13 = phi ptr [ %10, %land.rhs.lr.ph ], [ %28, %for.inc.land.rhs_crit_edge ]
  %idxprom73 = phi i32 [ 0, %land.rhs.lr.ph ], [ %idxprom, %for.inc.land.rhs_crit_edge ]
  %cnt.072 = phi i8 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx12 = getelementptr ptr, ptr %12, i32 %idxprom73
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %land.rhs.out_free_crit_edge, label %for.body

land.rhs.out_free_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

for.body:                                         ; preds = %land.rhs
  %id = getelementptr i8, ptr %13, i32 -36
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp = icmp eq i8 %17, 16
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id25 = getelementptr i8, ptr %15, i32 -36
  %18 = ptrtoint ptr %id25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %19)
  %cmp29 = icmp eq i8 %19, 16
  br i1 %cmp29, label %if.then31, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true
  %add.ptr3.i.le = getelementptr i8, ptr %13, i32 -44
  %data = getelementptr i8, ptr %13, i32 -40
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %data32 = getelementptr i8, ptr %15, i32 -40
  %22 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data32, align 4
  %24 = ptrtoint ptr %add.ptr3.i.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr3.i.le, align 4
  %bcmp = tail call i32 @bcmp(ptr %21, ptr %23, i32 %25) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool34.not = icmp eq i32 %bcmp, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.out_free_crit_edge

if.then31.out_free_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %active = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %active, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %active, align 1
  br label %out_free

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i8 %cnt.072, 1
  %idxprom = zext i8 %inc to i32
  %arrayidx = getelementptr ptr, ptr %8, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %for.inc.out_free_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.inc.out_free_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

out_free:                                         ; preds = %for.inc.out_free_crit_edge, %if.end36, %if.then31.out_free_crit_edge, %land.rhs.out_free_crit_edge, %for.cond.preheader.out_free_crit_edge, %if.end.out_free_crit_edge
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %driver_data.i.i, align 4
  %attrs.i = getelementptr inbounds %struct.mspro_block_data, ptr %call7.i.i, i32 0, i32 17, i32 3
  %30 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %attrs.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %out_free.mspro_block_data_clear.exit_crit_edge, label %for.cond.preheader.i

out_free.mspro_block_data_clear.exit_crit_edge:   ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_data_clear.exit

for.cond.preheader.i:                             ; preds = %out_free
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool3.not16.i = icmp eq ptr %33, null
  br i1 %tobool3.not16.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %34 = phi ptr [ %40, %for.body.i.for.body.i_crit_edge ], [ %33, %for.cond.preheader.i.for.body.i_crit_edge ]
  %cnt.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr3.i.i = getelementptr i8, ptr %34, i32 -44
  %data.i = getelementptr i8, ptr %34, i32 -40
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %36) #13
  tail call void @kfree(ptr noundef %add.ptr3.i.i) #13
  %inc.i = add i32 %cnt.017.i, 1
  %37 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %38, i32 %inc.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %31, %for.cond.preheader.i.for.end.i_crit_edge ], [ %38, %for.body.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa.i) #13
  br label %mspro_block_data_clear.exit

mspro_block_data_clear.exit:                      ; preds = %for.end.i, %out_free.mspro_block_data_clear.exit_crit_edge
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out_unlock

out_unlock:                                       ; preds = %mspro_block_data_clear.exit, %entry.out_unlock_crit_edge
  %rc.0 = phi i32 [ %call4, %mspro_block_data_clear.exit ], [ -12, %entry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #13
  %queue = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_start_hw_queues(ptr noundef %43) #13
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_block_init_card(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %param.i154.i = alloca %struct.mspro_param_register, align 1
  %param.i131.i = alloca %struct.mspro_param_register, align 1
  %param.i.i = alloca %struct.mspro_param_register, align 8
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
  %system = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %system to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %system, align 4
  %setup_transfer = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @h_mspro_block_setup_cmd, ptr %setup_transfer, align 4
  %reg_addr = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 2
  %6 = ptrtoint ptr %reg_addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reg_addr, align 8
  %r_length = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %r_length to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %r_length, align 1
  %w_offset = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %w_offset to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %w_offset, align 2
  %w_length = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 2, i32 3
  %9 = ptrtoint ptr %w_length to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %w_length, align 1
  %call5 = tail call i32 @memstick_set_rw_addr(ptr noundef %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.memstick_host, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 32
  %caps6 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %caps6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %caps6, align 4
  tail call void @msleep(i32 noundef 150) #13
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %next_request.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %15 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %mrq_handler.i = getelementptr inbounds %struct.mspro_block_data, ptr %14, i32 0, i32 15
  %16 = ptrtoint ptr %mrq_handler.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @h_mspro_block_wait_for_ced, ptr %mrq_handler.i, align 4
  %current_mrq.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  tail call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  %17 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host1, align 4
  tail call void @memstick_new_req(ptr noundef %18) #13
  %mrq_complete.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %error.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %21 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host1, align 4
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  %caps.i = getelementptr inbounds %struct.mspro_block_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps.i, align 4
  %and170.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool.not171.i = icmp eq i32 %and170.i, 0
  br i1 %tobool.not171.i, label %if.end10.do.body_crit_edge, label %if.then.lr.ph.i

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then.lr.ph.i:                                  ; preds = %if.end10
  %system.i = getelementptr inbounds %struct.mspro_block_data, ptr %24, i32 0, i32 12
  %set_param.i = getelementptr inbounds %struct.memstick_host, ptr %22, i32 0, i32 9
  %dev13.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %init_name.i126.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 3
  %27 = getelementptr inbounds %struct.mspro_param_register, ptr %param.i131.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.mspro_param_register, ptr %param.i131.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.mspro_param_register, ptr %param.i131.i, i32 0, i32 3
  %mrq_handler.i117 = getelementptr inbounds %struct.mspro_block_data, ptr %24, i32 0, i32 15
  %30 = getelementptr inbounds %struct.mspro_param_register, ptr %param.i154.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.mspro_param_register, ptr %param.i154.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.mspro_param_register, ptr %param.i154.i, i32 0, i32 3
  br label %if.then.i

if.then.i:                                        ; preds = %if.then76.i.if.then.i_crit_edge, %if.then.lr.ph.i
  %33 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host1, align 4
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i.i) #13
  %37 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %param.i.i, align 8
  %38 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %mrq_handler.i.i = getelementptr inbounds %struct.mspro_block_data, ptr %36, i32 0, i32 15
  %39 = ptrtoint ptr %mrq_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @h_mspro_block_default, ptr %mrq_handler.i.i, align 4
  call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef nonnull %param.i.i, i32 noundef 8) #13
  call void @memstick_new_req(ptr noundef %34) #13
  call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %40 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not.i = icmp eq i32 %41, 0
  br i1 %tobool3.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  %42 = ptrtoint ptr %init_name.i126.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i126.i, align 8
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev13.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %45, %if.end.i.i ], [ %43, %do.end.i.dev_name.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i, i32 noundef %41) #16
  br label %do.body

if.end7.i:                                        ; preds = %if.then.i
  %46 = ptrtoint ptr %system.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %system.i, align 4
  %47 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_param.i, align 64
  %call8.i = call i32 %48(ptr noundef %22, i32 noundef 2, i32 noundef 1) #13
  %49 = ptrtoint ptr %init_name.i126.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i126.i, align 8
  %tobool.not.i127.i = icmp eq ptr %50, null
  br i1 %tobool.not.i127.i, label %if.end.i128.i, label %if.end7.i.dev_name.exit130.i_crit_edge

if.end7.i.dev_name.exit130.i_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit130.i

if.end.i128.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev13.i, align 4
  br label %dev_name.exit130.i

dev_name.exit130.i:                               ; preds = %if.end.i128.i, %if.end7.i.dev_name.exit130.i_crit_edge
  %retval.0.i129.i = phi ptr [ %52, %if.end.i128.i ], [ %50, %if.end7.i.dev_name.exit130.i_crit_edge ]
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i129.i) #16
  %53 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %caps.i, align 4
  %and17.i = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %dev_name.exit130.i.if.end42.i_crit_edge, label %if.then19.i

dev_name.exit130.i.if.end42.i_crit_edge:          ; preds = %dev_name.exit130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then19.i:                                      ; preds = %dev_name.exit130.i
  %55 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host1, align 4
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i131.i) #13
  %59 = ptrtoint ptr %param.i131.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 64, ptr %param.i131.i, align 1
  %60 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 0, ptr %27, align 1
  %61 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %28, align 1
  %62 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %29, align 1
  %63 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %mrq_handler.i135.i = getelementptr inbounds %struct.mspro_block_data, ptr %58, i32 0, i32 15
  %64 = ptrtoint ptr %mrq_handler.i135.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @h_mspro_block_default, ptr %mrq_handler.i135.i, align 4
  call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef nonnull %param.i131.i, i32 noundef 8) #13
  call void @memstick_new_req(ptr noundef %56) #13
  call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %65 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i131.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool21.not.i = icmp eq i32 %66, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %do.end36.i

if.then22.i:                                      ; preds = %if.then19.i
  %67 = ptrtoint ptr %system.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 64, ptr %system.i, align 4
  %68 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_param.i, align 64
  %call25.i = call i32 %69(ptr noundef %22, i32 noundef 2, i32 noundef 2) #13
  %70 = ptrtoint ptr %init_name.i126.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init_name.i126.i, align 8
  %tobool.not.i140.i = icmp eq ptr %71, null
  br i1 %tobool.not.i140.i, label %if.end.i141.i, label %if.then22.i.dev_name.exit143.i_crit_edge

if.then22.i.dev_name.exit143.i_crit_edge:         ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit143.i

if.end.i141.i:                                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev13.i, align 4
  br label %dev_name.exit143.i

dev_name.exit143.i:                               ; preds = %if.end.i141.i, %if.then22.i.dev_name.exit143.i_crit_edge
  %retval.0.i142.i = phi ptr [ %73, %if.end.i141.i ], [ %71, %if.then22.i.dev_name.exit143.i_crit_edge ]
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i142.i) #16
  br label %if.end42.i

do.end36.i:                                       ; preds = %if.then19.i
  %74 = ptrtoint ptr %init_name.i126.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i126.i, align 8
  %tobool.not.i145.i = icmp eq ptr %75, null
  br i1 %tobool.not.i145.i, label %if.end.i146.i, label %do.end36.i.dev_name.exit148.i_crit_edge

do.end36.i.dev_name.exit148.i_crit_edge:          ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit148.i

if.end.i146.i:                                    ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev13.i, align 4
  br label %dev_name.exit148.i

dev_name.exit148.i:                               ; preds = %if.end.i146.i, %do.end36.i.dev_name.exit148.i_crit_edge
  %retval.0.i147.i = phi ptr [ %77, %if.end.i146.i ], [ %75, %do.end36.i.dev_name.exit148.i_crit_edge ]
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i147.i, i32 noundef %66) #16
  br label %if.end42.i

if.end42.i:                                       ; preds = %dev_name.exit148.i, %dev_name.exit143.i, %dev_name.exit130.i.if.end42.i_crit_edge
  %78 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %79 = ptrtoint ptr %mrq_handler.i117 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @h_mspro_block_default, ptr %mrq_handler.i117, align 4
  call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  %80 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %host1, align 4
  call void @memstick_new_req(ptr noundef %81) #13
  call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %82 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool45.not.i = icmp eq i32 %83, 0
  br i1 %tobool45.not.i, label %if.end42.i.do.body_crit_edge, label %do.end49.i

if.end42.i.do.body_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end49.i:                                       ; preds = %if.end42.i
  %84 = ptrtoint ptr %init_name.i126.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init_name.i126.i, align 8
  %tobool.not.i150.i = icmp eq ptr %85, null
  br i1 %tobool.not.i150.i, label %if.end.i151.i, label %do.end49.i.dev_name.exit153.i_crit_edge

do.end49.i.dev_name.exit153.i_crit_edge:          ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit153.i

if.end.i151.i:                                    ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev13.i, align 4
  br label %dev_name.exit153.i

dev_name.exit153.i:                               ; preds = %if.end.i151.i, %do.end49.i.dev_name.exit153.i_crit_edge
  %retval.0.i152.i = phi ptr [ %87, %if.end.i151.i ], [ %85, %do.end49.i.dev_name.exit153.i_crit_edge ]
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %retval.0.i152.i) #16
  %88 = ptrtoint ptr %system.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -128, ptr %system.i, align 4
  %89 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_param.i, align 64
  %call56.i = call i32 %90(ptr noundef %22, i32 noundef 1, i32 noundef 0) #13
  call void @msleep(i32 noundef 10) #13
  %91 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_param.i, align 64
  %call58.i = call i32 %92(ptr noundef %22, i32 noundef 1, i32 noundef 1) #13
  %93 = ptrtoint ptr %set_param.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_param.i, align 64
  %call60.i = call i32 %94(ptr noundef %22, i32 noundef 2, i32 noundef 0) #13
  %call61.i = call i32 @memstick_set_rw_addr(ptr noundef %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end66.i, label %dev_name.exit153.i.cleanup_crit_edge

dev_name.exit153.i.cleanup_crit_edge:             ; preds = %dev_name.exit153.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end66.i:                                       ; preds = %dev_name.exit153.i
  %95 = ptrtoint ptr %system.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %system.i, align 4
  %97 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %host1, align 4
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i154.i) #13
  %101 = ptrtoint ptr %param.i154.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %96, ptr %param.i154.i, align 1
  %102 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 0, ptr %30, align 1
  %103 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 0, ptr %31, align 1
  %104 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %32, align 1
  %105 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %mrq_handler.i158.i = getelementptr inbounds %struct.mspro_block_data, ptr %100, i32 0, i32 15
  %106 = ptrtoint ptr %mrq_handler.i158.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @h_mspro_block_default, ptr %mrq_handler.i158.i, align 4
  call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 11, ptr noundef nonnull %param.i154.i, i32 noundef 8) #13
  call void @memstick_new_req(ptr noundef %98) #13
  call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %107 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i154.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool67.not.i = icmp eq i32 %108, 0
  br i1 %tobool67.not.i, label %if.then68.i, label %if.end66.i.cleanup_crit_edge

if.end66.i.cleanup_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then68.i:                                      ; preds = %if.end66.i
  call void @msleep(i32 noundef 150) #13
  %109 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver_data.i.i, align 4
  %111 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %mrq_handler.i164.i = getelementptr inbounds %struct.mspro_block_data, ptr %110, i32 0, i32 15
  %112 = ptrtoint ptr %mrq_handler.i164.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @h_mspro_block_wait_for_ced, ptr %mrq_handler.i164.i, align 4
  call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  %113 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host1, align 4
  call void @memstick_new_req(ptr noundef %114) #13
  call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %115 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool70.not.i = icmp eq i32 %116, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.then68.i.cleanup_crit_edge

if.then68.i.cleanup_crit_edge:                    ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end72.i:                                       ; preds = %if.then68.i
  %117 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %caps.i, align 4
  %and74.i = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.end72.i.do.body_crit_edge, label %if.then76.i

if.end72.i.do.body_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then76.i:                                      ; preds = %if.end72.i
  %and78.i = and i32 %118, -5
  %119 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %and78.i, ptr %caps.i, align 4
  %and.i = and i32 %118, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then76.i.do.body_crit_edge, label %if.then76.i.if.then.i_crit_edge

if.then76.i.if.then.i_crit_edge:                  ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then76.i.do.body_crit_edge:                    ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %if.then76.i.do.body_crit_edge, %if.end72.i.do.body_crit_edge, %if.end42.i.do.body_crit_edge, %dev_name.exit.i, %if.end10.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_init_card.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_init_card, %do.end)) #13
          to label %if.then20 [label %do.end], !srcloc !235

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_init_card.__UNIQUE_ID_ddebug284, ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %120 = ptrtoint ptr %system to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %system, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %121)
  %cmp.not = icmp eq i8 %121, -128
  br i1 %cmp.not, label %do.end.if.end26_crit_edge, label %if.then24

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %caps6 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %caps6, align 4
  %or = or i32 %123, 1
  store i32 %or, ptr %caps6, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.end.if.end26_crit_edge
  %124 = ptrtoint ptr %next_request.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @h_mspro_block_req_init, ptr %next_request.i, align 4
  %mrq_handler = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 15
  %125 = ptrtoint ptr %mrq_handler to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @h_mspro_block_get_ro, ptr %mrq_handler, align 4
  call void @memstick_init_req(ptr noundef %current_mrq.i, i8 noundef zeroext 4, ptr noundef null, i32 noundef 4) #13
  %126 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %host1, align 4
  call void @memstick_new_req(ptr noundef %127) #13
  call void @wait_for_completion(ptr noundef %mrq_complete.i) #13
  %128 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool29.not = icmp eq i32 %129, 0
  br i1 %tobool29.not, label %do.body34, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body34:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_init_card.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_init_card, %do.end54)) #13
          to label %if.then48 [label %do.end54], !srcloc !235

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  %dev49 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %read_only = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %130 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load = load i8, ptr %read_only, align 1
  %131 = xor i8 %bf.load, -1
  %132 = lshr i8 %131, 7
  %.not = zext i8 %132 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_init_card.__UNIQUE_ID_ddebug285, ptr noundef %dev49, ptr noundef nonnull @.str.5, i32 noundef %.not) #13
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body34
  %page_size = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 8
  %133 = ptrtoint ptr %page_size to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 512, ptr %page_size, align 4
  %call55 = call fastcc i32 @mspro_block_read_attributes(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %do.body59, label %do.end54.cleanup_crit_edge

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body59:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_init_card.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_init_card, %cleanup)) #13
          to label %if.then73 [label %cleanup], !srcloc !235

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #15
  %dev74 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_init_card.__UNIQUE_ID_ddebug286, ptr noundef %dev74, ptr noundef nonnull @.str.6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.body59, %do.end54.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then68.i.cleanup_crit_edge, %if.end66.i.cleanup_crit_edge, %dev_name.exit153.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %20, %if.end.cleanup_crit_edge ], [ %129, %if.end26.cleanup_crit_edge ], [ %call55, %do.end54.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %do.body59 ], [ %call61.i, %dev_name.exit153.i.cleanup_crit_edge ], [ %108, %if.end66.i.cleanup_crit_edge ], [ %116, %if.then68.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_block_init_disk(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %attrs = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not143 = icmp eq ptr %5, null
  br i1 %tobool.not143, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %15, %for.inc.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %dev_info.0146 = phi ptr [ %dev_info.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %rc.0145 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sys_info.0144 = phi ptr [ %sys_info.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %id = getelementptr i8, ptr %6, i32 -36
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %for.body.for.inc_crit_edge [
    i8 48, label %if.then
    i8 16, label %if.then10
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr i8, ptr %6, i32 -40
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %data11 = getelementptr i8, ptr %6, i32 -40
  %12 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then, %for.body.for.inc_crit_edge
  %sys_info.1 = phi ptr [ %sys_info.0144, %if.then ], [ %13, %if.then10 ], [ %sys_info.0144, %for.body.for.inc_crit_edge ]
  %dev_info.1 = phi ptr [ %11, %if.then ], [ %dev_info.0146, %if.then10 ], [ %dev_info.0146, %for.body.for.inc_crit_edge ]
  %inc = add i32 %rc.0145, 1
  %arrayidx = getelementptr ptr, ptr %3, i32 %inc
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool13.not = icmp eq ptr %dev_info.1, null
  %tobool14.not = icmp eq ptr %sys_info.1, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %16 = ptrtoint ptr %dev_info.1 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %dev_info.1, align 1
  %cylinders17 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %cylinders17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %cylinders17, align 2
  %heads = getelementptr inbounds %struct.mspro_devinfo, ptr %dev_info.1, i32 0, i32 1
  %19 = ptrtoint ptr %heads to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %heads, align 1
  %heads18 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %heads18 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %heads18, align 4
  %sectors_per_track = getelementptr inbounds %struct.mspro_devinfo, ptr %dev_info.1, i32 0, i32 4
  %22 = ptrtoint ptr %sectors_per_track to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %sectors_per_track, align 1
  %sectors_per_track19 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %sectors_per_track19 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %sectors_per_track19, align 2
  %unit_size = getelementptr inbounds %struct.mspro_sys_info, ptr %sys_info.1, i32 0, i32 19
  %25 = ptrtoint ptr %unit_size to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %unit_size, align 1
  %page_size = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %page_size to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %page_size, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mspro_block_disk_lock, i32 noundef 0) #13
  %call20 = tail call i32 @idr_alloc(ptr noundef nonnull @mspro_block_disk_idr, ptr noundef %card, i32 noundef 0, i32 noundef 256, i32 noundef 3264) #13
  tail call void @mutex_unlock(ptr noundef nonnull @mspro_block_disk_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end16.cleanup_crit_edge, label %if.end24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %tag_set = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 6
  %call25 = tail call i32 @blk_mq_alloc_sq_tag_set(ptr noundef %tag_set, ptr noundef nonnull @mspro_mq_ops, i32 noundef 2, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_release_id_crit_edge

if.end24.out_release_id_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_release_id

if.end28:                                         ; preds = %if.end24
  %call30 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %card, ptr noundef nonnull @mspro_block_init_disk.__key) #13
  %disk = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %disk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call30, ptr %disk, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %call30 to i32
  br label %out_free_tag_set

if.end36:                                         ; preds = %if.end28
  %queue = getelementptr inbounds %struct.gendisk, ptr %call30, i32 0, i32 9
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue, align 4
  %queue38 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %queue38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %queue38, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %31, i32 noundef 131071) #13
  %33 = ptrtoint ptr %queue38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue38, align 4
  tail call void @blk_queue_max_segments(ptr noundef %34, i16 noundef zeroext 32) #13
  %35 = ptrtoint ptr %queue38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue38, align 4
  %37 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %page_size, align 4
  %conv43 = zext i16 %38 to i32
  %mul = mul i32 %conv43, 131071
  tail call void @blk_queue_max_segment_size(ptr noundef %36, i32 noundef %mul) #13
  %39 = load i32, ptr @major, align 4
  %40 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disk, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %41, align 8
  %shl = shl i32 %call20, 3
  %43 = load ptr, ptr %disk, align 4
  %first_minor = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %first_minor to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl, ptr %first_minor, align 4
  %45 = load ptr, ptr %disk, align 4
  %minors = getelementptr inbounds %struct.gendisk, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %minors to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %minors, align 8
  %47 = load ptr, ptr %disk, align 4
  %fops = getelementptr inbounds %struct.gendisk, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ms_block_bdops, ptr %fops, align 8
  %usage_count = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %usage_count to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %usage_count, align 4
  %50 = load ptr, ptr %disk, align 4
  %private_data = getelementptr inbounds %struct.gendisk, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %1, ptr %private_data, align 8
  %52 = load ptr, ptr %disk, align 4
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %52, i32 0, i32 3
  %call50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name, ptr noundef nonnull @.str.89, i32 noundef %call20)
  %53 = ptrtoint ptr %queue38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue38, align 4
  %55 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %page_size, align 4
  %conv53 = zext i16 %56 to i32
  tail call void @blk_queue_logical_block_size(ptr noundef %54, i32 noundef %conv53) #13
  %user_block_count = getelementptr inbounds %struct.mspro_sys_info, ptr %sys_info.1, i32 0, i32 4
  %57 = ptrtoint ptr %user_block_count to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %user_block_count, align 1
  %conv54 = zext i16 %58 to i32
  %block_size = getelementptr inbounds %struct.mspro_sys_info, ptr %sys_info.1, i32 0, i32 2
  %59 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %block_size, align 1
  %conv55 = zext i16 %60 to i32
  %mul56 = mul nuw i32 %conv55, %conv54
  %61 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %page_size, align 4
  %63 = lshr i16 %62, 9
  %64 = zext i16 %63 to i32
  %mul59 = mul i32 %mul56, %64
  %65 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %disk, align 4
  %conv61 = zext i32 %mul59 to i64
  tail call void @set_capacity(ptr noundef %66, i64 noundef %conv61) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_init_disk.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_init_disk, %do.end)) #13
          to label %if.then68 [label %do.end], !srcloc !235

if.then68:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_init_disk.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %mul59) #13
  br label %do.end

do.end:                                           ; preds = %if.then68, %if.end36
  %dev70 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %67 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %disk, align 4
  %call72 = tail call i32 @device_add_disk(ptr noundef %dev70, ptr noundef %68, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %out_cleanup_disk

if.end75:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %active = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %69 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load = load i8, ptr %active, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %active, align 1
  br label %cleanup

out_cleanup_disk:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %disk, align 4
  tail call void @blk_cleanup_disk(ptr noundef %71) #13
  br label %out_free_tag_set

out_free_tag_set:                                 ; preds = %out_cleanup_disk, %if.then33
  %rc.1 = phi i32 [ %29, %if.then33 ], [ %call72, %out_cleanup_disk ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #13
  br label %out_release_id

out_release_id:                                   ; preds = %out_free_tag_set, %if.end24.out_release_id_crit_edge
  %rc.2 = phi i32 [ %call25, %if.end24.out_release_id_crit_edge ], [ %rc.1, %out_free_tag_set ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @mspro_block_disk_lock, i32 noundef 0) #13
  %call78 = tail call ptr @idr_remove(ptr noundef nonnull @mspro_block_disk_idr, i32 noundef %call20) #13
  tail call void @mutex_unlock(ptr noundef nonnull @mspro_block_disk_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out_release_id, %if.end75, %if.end16.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out_release_id ], [ 0, %if.end75 ], [ -19, %for.end.cleanup_crit_edge ], [ %call20, %if.end16.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mspro_block_check_card(ptr nocapture noundef readonly %card) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %active = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %active, align 1
  %3 = lshr i8 %bf.load, 4
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mspro_block_stop(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %q_lock = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 7
  %call314 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %block_req = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_req, align 4
  %tobool.not15 = icmp eq ptr %3, null
  br i1 %tobool.not15, label %entry.if.then_crit_edge, label %if.end9.critedge.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end9.critedge.lr.ph:                           ; preds = %entry
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  br label %if.end9.critedge

if.then:                                          ; preds = %if.end9.critedge.if.then_crit_edge, %entry.if.then_crit_edge
  %call3.lcssa = phi i32 [ %call314, %entry.if.then_crit_edge ], [ %call3, %if.end9.critedge.if.then_crit_edge ]
  %queue = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_stop_hw_queues(ptr noundef %5) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3.lcssa) #13
  ret void

if.end9.critedge:                                 ; preds = %if.end9.critedge.if.end9.critedge_crit_edge, %if.end9.critedge.lr.ph
  %call316 = phi i32 [ %call314, %if.end9.critedge.lr.ph ], [ %call3, %if.end9.critedge.if.end9.critedge_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call316) #13
  tail call void @wait_for_completion(ptr noundef %mrq_complete) #13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  %6 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_req, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end9.critedge.if.then_crit_edge, label %if.end9.critedge.if.end9.critedge_crit_edge

if.end9.critedge.if.end9.critedge_crit_edge:      ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.critedge

if.end9.critedge.if.then_crit_edge:               ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mspro_block_start(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_start_hw_queues(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @h_mspro_block_setup_cmd(ptr noundef %card, i64 noundef %offset, i32 noundef %length) #2 align 64 {
entry:
  %param = alloca %struct.mspro_param_register, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param) #13
  %2 = getelementptr inbounds %struct.mspro_param_register, ptr %param, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mspro_param_register, ptr %param, i32 0, i32 3
  %system1 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %system1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %system1, align 4
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %param, align 1
  %page_size = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %page_size, align 4
  %conv = zext i16 %8 to i32
  %div = udiv i32 %length, %conv
  %conv2 = trunc i32 %div to i16
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv2, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offset)
  %cmp172 = icmp ult i64 %offset, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !236

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv177 = trunc i64 %offset to i32
  %div180 = udiv i32 %conv177, %conv
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %offset) #19, !srcloc !237
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract.t299 = trunc i64 %asmresult1.i to i32
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %offset.addr.0.off0 = phi i32 [ %div180, %if.then176 ], [ %extract.t299, %if.else182 ]
  %12 = getelementptr inbounds %struct.mspro_param_register, ptr %param, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %offset.addr.0.off0, ptr %12, align 1
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %14 = ptrtoint ptr %next_request to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @h_mspro_block_req_init, ptr %next_request, align 4
  %mrq_handler = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %mrq_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @h_mspro_block_transfer_data, ptr %mrq_handler, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  call void @memstick_init_req(ptr noundef %current_mrq, i8 noundef zeroext 11, ptr noundef nonnull %param, i32 noundef 8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_set_rw_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h_mspro_block_req_init(ptr noundef %card, ptr nocapture noundef writeonly %mrq) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_mrq, ptr %mrq, align 4
  %mrq_handler = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %mrq_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrq_handler, align 4
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %5 = ptrtoint ptr %next_request to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %next_request, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_mspro_block_get_ro(ptr noundef %card, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %arrayidx = getelementptr %struct.anon.84, ptr %6, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %read_only3 = getelementptr inbounds %struct.mspro_block_data, ptr %5, i32 0, i32 13
  %9 = ptrtoint ptr %read_only3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load4 = load i8, ptr %read_only3, align 1
  %bf.clear5 = and i8 %bf.load4, 127
  %10 = shl i8 %8, 7
  %bf.set.sink = or i8 %bf.clear5, %10
  store i8 %bf.set.sink, ptr %read_only3, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %11 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrq, align 4
  %error8 = getelementptr inbounds %struct.memstick_request, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %error8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error8, align 4
  %call9 = tail call fastcc i32 @mspro_block_complete_req(ptr noundef %card, i32 noundef %14)
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_init_req(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_new_req(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_block_read_attributes(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %page_size = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %page_size, align 4
  %conv = zext i16 %3 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %req_sg = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %page_size, align 4
  %conv5 = zext i16 %5 to i32
  tail call void @sg_init_one(ptr noundef %req_sg, ptr noundef nonnull %call9.i, i32 noundef %conv5) #13
  %seg_count = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %seg_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %seg_count, align 4
  %current_seg = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %current_seg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_seg, align 4
  %current_page = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %current_page, align 4
  %data_dir = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %data_dir, align 1
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %data_dir, align 1
  %transfer_cmd = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %transfer_cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 36, ptr %transfer_cmd, align 2
  %setup_transfer = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup_transfer, align 4
  tail call void %12(ptr noundef %card, i64 noundef 0, i32 noundef %conv) #13
  %host = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 1
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  tail call void @memstick_new_req(ptr noundef %14) #13
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %mrq_complete) #13
  %error = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %if.end11, label %if.end.out_free_attr_crit_edge

if.end.out_free_attr_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_attr

if.end11:                                         ; preds = %if.end
  %17 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23101, i16 %18)
  %cmp.not = icmp eq i16 %18, -23101
  br i1 %cmp.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end11
  %init_name.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i406, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i406:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i406, %do.end.dev_name.exit_crit_edge
  %retval.0.i407 = phi ptr [ %22, %if.end.i406 ], [ %20, %do.end.dev_name.exit_crit_edge ]
  %conv17 = zext i16 %18 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i407, i32 noundef %conv17) #16
  br label %out_free_attr

if.end19:                                         ; preds = %if.end11
  %count = getelementptr inbounds %struct.mspro_attribute, ptr %call9.i, i32 0, i32 2
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %24)
  %cmp21 = icmp ugt i8 %24, 41
  br i1 %cmp21, label %do.end26, label %if.else

do.end26:                                         ; preds = %if.end19
  %init_name.i408 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %init_name.i408 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i408, align 8
  %tobool.not.i409 = icmp eq ptr %26, null
  br i1 %tobool.not.i409, label %if.end.i410, label %do.end26.dev_name.exit412_crit_edge

do.end26.dev_name.exit412_crit_edge:              ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit412

if.end.i410:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  %dev28 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %27 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev28, align 4
  br label %dev_name.exit412

dev_name.exit412:                                 ; preds = %if.end.i410, %do.end26.dev_name.exit412_crit_edge
  %retval.0.i411 = phi ptr [ %28, %if.end.i410 ], [ %26, %do.end26.dev_name.exit412_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %retval.0.i411) #16
  br label %if.end7.i.i

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %conv20 = zext i8 %24 to i32
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else, %dev_name.exit412
  %attr_count.0 = phi i32 [ 41, %dev_name.exit412 ], [ %conv20, %if.else ]
  %add = shl nuw nsw i32 %attr_count.0, 2
  %29 = add nuw nsw i32 %add, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #20
  %attrs = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 17, i32 3
  %30 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i, ptr %attrs, align 4
  %tobool37.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool37.not, label %if.end7.i.i.out_free_attr_crit_edge, label %if.end39

if.end7.i.i.out_free_attr_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_attr

if.end39:                                         ; preds = %if.end7.i.i
  %attr_group = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %attr_group to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.31, ptr %attr_group, align 4
  %call41 = tail call ptr @kmemdup(ptr noundef nonnull %call9.i, i32 noundef %conv, i32 noundef 3264) #13
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end39.out_free_attr_crit_edge, label %for.cond.preheader

if.end39.out_free_attr_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_attr

for.cond.preheader:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr_count.0)
  %cmp45467.not = icmp eq i32 %attr_count.0, 0
  br i1 %cmp45467.not, label %for.cond.preheader.out_free_buffer_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_free_buffer_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev67 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %buffer.0472 = phi ptr [ %call41, %for.body.lr.ph ], [ %buffer.2, %for.inc.for.body_crit_edge ]
  %cnt.0470 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %attr_len.0469 = phi i32 [ %conv, %for.body.lr.ph ], [ %attr_len.2, %for.inc.for.body_crit_edge ]
  %attr_offset.0468 = phi i32 [ 0, %for.body.lr.ph ], [ %attr_offset.1, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 72) #17
  %tobool48.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool48.not, label %for.body.out_free_buffer_crit_edge, label %if.end50

for.body.out_free_buffer_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end50:                                         ; preds = %for.body
  %dev_attr = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attrs, align 4
  %arrayidx54 = getelementptr ptr, ptr %34, i32 %cnt.0470
  %35 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev_attr, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr %struct.mspro_attribute, ptr %call9.i, i32 0, i32 4, i32 %cnt.0470
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx55, align 4
  %size = getelementptr %struct.mspro_attribute, ptr %call9.i, i32 0, i32 4, i32 %cnt.0470, i32 1
  %38 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_read_attributes.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_read_attributes, %do.end74)) #13
          to label %if.then66 [label %do.end74], !srcloc !235

if.then66:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr %struct.mspro_attribute, ptr %call9.i, i32 0, i32 4, i32 %cnt.0470, i32 2
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %id, align 4
  %conv70 = zext i8 %42 to i32
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_read_attributes.__UNIQUE_ID_ddebug282, ptr noundef %dev67, ptr noundef nonnull @.str.32, i32 noundef %cnt.0470, i32 noundef %conv70, i32 noundef %37, i32 noundef %44) #13
  br label %do.end74

do.end74:                                         ; preds = %if.then66, %if.end50
  %id77 = getelementptr %struct.mspro_attribute, ptr %call9.i, i32 0, i32 4, i32 %cnt.0470, i32 2
  %45 = ptrtoint ptr %id77 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id77, align 4
  %id78 = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %id78 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %id78, align 8
  %48 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %46, label %if.else89 [
    i8 16, label %do.end74.mspro_block_attr_name.exit426_crit_edge
    i8 21, label %sw.bb1.i417
    i8 32, label %sw.bb2.i418
    i8 33, label %sw.bb3.i419
    i8 34, label %sw.bb4.i420
    i8 37, label %sw.bb5.i421
    i8 38, label %sw.bb6.i422
    i8 48, label %sw.bb7.i423
  ]

do.end74.mspro_block_attr_name.exit426_crit_edge: ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb1.i417:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb2.i418:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb3.i419:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb4.i420:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb5.i421:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb6.i422:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

sw.bb7.i423:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_name.exit426

mspro_block_attr_name.exit426:                    ; preds = %sw.bb7.i423, %sw.bb6.i422, %sw.bb5.i421, %sw.bb4.i420, %sw.bb3.i419, %sw.bb2.i418, %sw.bb1.i417, %do.end74.mspro_block_attr_name.exit426_crit_edge
  %retval.0.i425 = phi ptr [ @.str.43, %sw.bb7.i423 ], [ @.str.42, %sw.bb6.i422 ], [ @.str.41, %sw.bb5.i421 ], [ @.str.40, %sw.bb4.i420 ], [ @.str.39, %sw.bb3.i419 ], [ @.str.38, %sw.bb2.i418 ], [ @.str.37, %sw.bb1.i417 ], [ @.str.36, %do.end74.mspro_block_attr_name.exit426_crit_edge ]
  %name83445 = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 3
  %call88 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name83445, i32 noundef 32, ptr noundef nonnull @.str.33, ptr noundef nonnull %retval.0.i425)
  br label %do.body98

if.else89:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  %name90 = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 3
  %conv95 = zext i8 %46 to i32
  %call96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name90, i32 noundef 32, ptr noundef nonnull @.str.34, i32 noundef %conv95)
  br label %do.body98

do.body98:                                        ; preds = %if.else89, %mspro_block_attr_name.exit426
  %key = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %49 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mspro_block_read_attributes.__key, ptr %key, align 4
  %name103 = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %dev_attr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %name103, ptr %dev_attr, align 4
  %mode = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %51 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 292, ptr %mode, align 8
  %52 = ptrtoint ptr %id78 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %id78, align 8
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %53, label %sw.default.i431 [
    i8 16, label %do.body98.mspro_block_attr_show.exit_crit_edge
    i8 21, label %sw.bb1.i427
    i8 32, label %sw.bb2.i428
    i8 37, label %do.body98.sw.bb3.i429_crit_edge
    i8 38, label %do.body98.sw.bb3.i429_crit_edge480
    i8 48, label %sw.bb4.i430
  ]

do.body98.sw.bb3.i429_crit_edge480:               ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i429

do.body98.sw.bb3.i429_crit_edge:                  ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3.i429

do.body98.mspro_block_attr_show.exit_crit_edge:   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_show.exit

sw.bb1.i427:                                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_show.exit

sw.bb2.i428:                                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_show.exit

sw.bb3.i429:                                      ; preds = %do.body98.sw.bb3.i429_crit_edge, %do.body98.sw.bb3.i429_crit_edge480
  br label %mspro_block_attr_show.exit

sw.bb4.i430:                                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_show.exit

sw.default.i431:                                  ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_attr_show.exit

mspro_block_attr_show.exit:                       ; preds = %sw.default.i431, %sw.bb4.i430, %sw.bb3.i429, %sw.bb2.i428, %sw.bb1.i427, %do.body98.mspro_block_attr_show.exit_crit_edge
  %retval.0.i432 = phi ptr [ @mspro_block_attr_show_default, %sw.default.i431 ], [ @mspro_block_attr_show_devinfo, %sw.bb4.i430 ], [ @mspro_block_attr_show_specfile, %sw.bb3.i429 ], [ @mspro_block_attr_show_mbr, %sw.bb2.i428 ], [ @mspro_block_attr_show_modelname, %sw.bb1.i427 ], [ @mspro_block_attr_show_sysinfo, %do.body98.mspro_block_attr_show.exit_crit_edge ]
  %show = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i432, ptr %show, align 8
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool114.not = icmp eq i32 %57, 0
  br i1 %tobool114.not, label %mspro_block_attr_show.exit.for.inc_crit_edge, label %if.end8.i371

mspro_block_attr_show.exit.for.inc_crit_edge:     ; preds = %mspro_block_attr_show.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end8.i371:                                     ; preds = %mspro_block_attr_show.exit
  %call9.i370 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 3264) #20
  %data = getelementptr inbounds %struct.mspro_sys_attr, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i370, ptr %data, align 4
  %tobool120.not = icmp eq ptr %call9.i370, null
  br i1 %tobool120.not, label %if.end8.i371.out_free_buffer_crit_edge, label %if.end122

if.end8.i371.out_free_buffer_crit_edge:           ; preds = %if.end8.i371
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end122:                                        ; preds = %if.end8.i371
  %59 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %page_size, align 4
  %conv124 = zext i16 %60 to i32
  %.frozen = freeze i32 %37
  %conv124.frozen = freeze i32 %conv124
  %div = udiv i32 %.frozen, %conv124.frozen
  %div127 = udiv i32 %attr_offset.0468, %conv124
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div127)
  %cmp128 = icmp eq i32 %div, %div127
  br i1 %cmp128, label %land.lhs.true, label %if.end122.if.end145_crit_edge

if.end122.if.end145_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

land.lhs.true:                                    ; preds = %if.end122
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call7.i.i, align 8
  %add131 = add i32 %37, -1
  %sub = add i32 %add131, %62
  %div134 = udiv i32 %sub, %conv124
  call void @__sanitizer_cov_trace_cmp4(i32 %div134, i32 %div)
  %cmp138 = icmp eq i32 %div134, %div
  br i1 %cmp138, label %if.then140, label %land.lhs.true.if.end145_crit_edge

land.lhs.true.if.end145_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.then140:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %rem = urem i32 %37, %conv124
  %add.ptr = getelementptr i8, ptr %buffer.0472, i32 %rem
  %63 = call ptr @memcpy(ptr %call9.i370, ptr %add.ptr, i32 %62)
  br label %for.inc

if.end145:                                        ; preds = %land.lhs.true.if.end145_crit_edge, %if.end122.if.end145_crit_edge
  %64 = mul i32 %div, %conv124.frozen
  %.decomposed = sub i32 %.frozen, %64
  %mul = sub i32 %37, %.decomposed
  %add151 = add i32 %mul, %attr_len.0469
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call7.i.i, align 8
  %add153 = add i32 %66, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add151, i32 %add153)
  %cmp154 = icmp ult i32 %add151, %add153
  br i1 %cmp154, label %if.then156, label %if.end145.if.end171_crit_edge

if.end145.if.end171_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then156:                                       ; preds = %if.end145
  tail call void @kfree(ptr noundef %buffer.0472) #13
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call7.i.i, align 8
  %add158 = add i32 %68, %37
  %69 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %page_size, align 4
  %conv160 = zext i16 %70 to i32
  %div161 = udiv i32 %add158, %conv160
  %add162 = add i32 %div161, 1
  %mul165 = mul i32 %add162, %conv160
  %sub166 = sub i32 %mul165, %mul
  %call9.i399 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub166, i32 noundef 3264) #20
  %tobool168.not = icmp eq ptr %call9.i399, null
  br i1 %tobool168.not, label %if.then156.out_free_attr_crit_edge, label %if.then156.if.end171_crit_edge

if.then156.if.end171_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then156.out_free_attr_crit_edge:               ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_attr

if.end171:                                        ; preds = %if.then156.if.end171_crit_edge, %if.end145.if.end171_crit_edge
  %attr_len.1 = phi i32 [ %sub166, %if.then156.if.end171_crit_edge ], [ %attr_len.0469, %if.end145.if.end171_crit_edge ]
  %buffer.1 = phi ptr [ %call9.i399, %if.then156.if.end171_crit_edge ], [ %buffer.0472, %if.end145.if.end171_crit_edge ]
  tail call void @sg_init_one(ptr noundef %req_sg, ptr noundef %buffer.1, i32 noundef %attr_len.1) #13
  %71 = ptrtoint ptr %seg_count to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %seg_count, align 4
  %72 = ptrtoint ptr %current_seg to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %current_seg, align 4
  %73 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %current_page, align 4
  %74 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load178 = load i8, ptr %data_dir, align 1
  %bf.clear179 = and i8 %bf.load178, -33
  store i8 %bf.clear179, ptr %data_dir, align 1
  %75 = ptrtoint ptr %transfer_cmd to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 36, ptr %transfer_cmd, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_read_attributes.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_read_attributes, %do.end200)) #13
          to label %if.then196 [label %do.end200], !srcloc !235

if.then196:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_read_attributes.__UNIQUE_ID_ddebug283, ptr noundef %dev67, ptr noundef nonnull @.str.35, i32 noundef %mul, i32 noundef %attr_len.1) #13
  br label %do.end200

do.end200:                                        ; preds = %if.then196, %if.end171
  %76 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %setup_transfer, align 4
  %conv202 = zext i32 %mul to i64
  tail call void %77(ptr noundef %card, i64 noundef %conv202, i32 noundef %attr_len.1) #13
  %78 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host, align 4
  tail call void @memstick_new_req(ptr noundef %79) #13
  tail call void @wait_for_completion(ptr noundef %mrq_complete) #13
  %80 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool207.not = icmp eq i32 %81, 0
  br i1 %tobool207.not, label %if.end211, label %do.end200.out_free_buffer_crit_edge

do.end200.out_free_buffer_crit_edge:              ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

if.end211:                                        ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data, align 4
  %84 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %page_size, align 4
  %conv214 = zext i16 %85 to i32
  %rem215 = urem i32 %37, %conv214
  %add.ptr216 = getelementptr i8, ptr %buffer.1, i32 %rem215
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call7.i.i, align 8
  %88 = call ptr @memcpy(ptr %83, ptr %add.ptr216, i32 %87)
  br label %for.inc

for.inc:                                          ; preds = %if.end211, %if.then140, %mspro_block_attr_show.exit.for.inc_crit_edge
  %attr_offset.1 = phi i32 [ %attr_offset.0468, %if.then140 ], [ %mul, %if.end211 ], [ %attr_offset.0468, %mspro_block_attr_show.exit.for.inc_crit_edge ]
  %attr_len.2 = phi i32 [ %attr_len.0469, %if.then140 ], [ %attr_len.1, %if.end211 ], [ %attr_len.0469, %mspro_block_attr_show.exit.for.inc_crit_edge ]
  %buffer.2 = phi ptr [ %buffer.0472, %if.then140 ], [ %buffer.1, %if.end211 ], [ %buffer.0472, %mspro_block_attr_show.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %cnt.0470, 1
  %exitcond.not = icmp eq i32 %inc, %attr_count.0
  br i1 %exitcond.not, label %for.inc.out_free_buffer_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_free_buffer_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buffer

out_free_buffer:                                  ; preds = %for.inc.out_free_buffer_crit_edge, %do.end200.out_free_buffer_crit_edge, %if.end8.i371.out_free_buffer_crit_edge, %for.body.out_free_buffer_crit_edge, %for.cond.preheader.out_free_buffer_crit_edge
  %rc.0 = phi i32 [ 0, %for.cond.preheader.out_free_buffer_crit_edge ], [ 0, %for.inc.out_free_buffer_crit_edge ], [ %81, %do.end200.out_free_buffer_crit_edge ], [ -12, %if.end8.i371.out_free_buffer_crit_edge ], [ -12, %for.body.out_free_buffer_crit_edge ]
  %buffer.3 = phi ptr [ %call41, %for.cond.preheader.out_free_buffer_crit_edge ], [ %buffer.2, %for.inc.out_free_buffer_crit_edge ], [ %buffer.1, %do.end200.out_free_buffer_crit_edge ], [ %buffer.0472, %if.end8.i371.out_free_buffer_crit_edge ], [ %buffer.0472, %for.body.out_free_buffer_crit_edge ]
  tail call void @kfree(ptr noundef %buffer.3) #13
  br label %out_free_attr

out_free_attr:                                    ; preds = %out_free_buffer, %if.then156.out_free_attr_crit_edge, %if.end39.out_free_attr_crit_edge, %if.end7.i.i.out_free_attr_crit_edge, %dev_name.exit, %if.end.out_free_attr_crit_edge
  %rc.1 = phi i32 [ -19, %dev_name.exit ], [ %rc.0, %out_free_buffer ], [ %16, %if.end.out_free_attr_crit_edge ], [ -12, %if.end7.i.i.out_free_attr_crit_edge ], [ -12, %if.end39.out_free_attr_crit_edge ], [ -12, %if.then156.out_free_attr_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_attr, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out_free_attr ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_mspro_block_transfer_data(ptr noundef %card, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  %t_val = alloca i8, align 1
  %t_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t_val) #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t_sg) #13
  %2 = call ptr @memset(ptr %t_sg, i32 0, i32 20)
  %3 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mrq, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @mspro_block_complete_req(ptr noundef %card, i32 noundef %6)
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %4, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %8, label %do.body [
    i8 11, label %sw.bb
    i8 14, label %sw.bb3
    i8 7, label %sw.bb7
    i8 2, label %if.end.sw.bb59_crit_edge
    i8 13, label %if.end.sw.bb59_crit_edge114
  ]

if.end.sw.bb59_crit_edge114:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

if.end.sw.bb59_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %transfer_cmd = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 14
  tail call void @memstick_init_req(ptr noundef %4, i8 noundef zeroext 14, ptr noundef %transfer_cmd, i32 noundef 1) #13
  %10 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mrq, align 4
  %need_card_int = getelementptr inbounds %struct.memstick_request, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %need_card_int, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %need_card_int, align 1
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %int_reg = getelementptr inbounds %struct.memstick_request, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %int_reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %int_reg, align 2
  %15 = ptrtoint ptr %t_val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %t_val, align 1
  tail call void @memstick_init_req(ptr noundef %4, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  %caps = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.has_int_reg_crit_edge

sw.bb3.has_int_reg_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %has_int_reg

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = getelementptr inbounds %struct.memstick_request, ptr %4, i32 0, i32 4
  %data = getelementptr inbounds %struct.anon.84, ptr %18, i32 0, i32 1
  br label %has_int_reg

has_int_reg:                                      ; preds = %if.then65, %sw.bb7, %sw.bb3.has_int_reg_crit_edge
  %.in = phi ptr [ %int_reg66, %if.then65 ], [ %data, %sw.bb7 ], [ %t_val, %sw.bb3.has_int_reg_crit_edge ]
  %19 = ptrtoint ptr %.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %.in, align 1
  %21 = and i8 %20, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool10.not = icmp eq i8 %21, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %has_int_reg
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %t_val to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 37, ptr %t_val, align 1
  %23 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mrq, align 4
  call void @memstick_init_req(ptr noundef %24, i8 noundef zeroext 14, ptr noundef nonnull %t_val, i32 noundef 1) #13
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %25 = ptrtoint ptr %next_request to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @h_mspro_block_default, ptr %next_request, align 4
  br label %cleanup

if.end12:                                         ; preds = %has_int_reg
  %current_page = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %current_page, align 4
  %current_seg = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %current_seg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %current_seg, align 4
  %length = getelementptr %struct.mspro_block_data, ptr %1, i32 0, i32 18, i32 %29, i32 2
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  %page_size = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %page_size, align 4
  %conv14 = zext i16 %33 to i32
  %div = udiv i32 %31, %conv14
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %div)
  %cmp = icmp eq i32 %27, %div
  br i1 %cmp, label %if.then16, label %if.end12.if.end30_crit_edge

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then16:                                        ; preds = %if.end12
  %34 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %current_page, align 4
  %inc = add i32 %29, 1
  %35 = ptrtoint ptr %current_seg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc, ptr %current_seg, align 4
  %seg_count = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %seg_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %37)
  %cmp20 = icmp eq i32 %inc, %37
  br i1 %cmp20, label %if.then22, label %if.then16.if.end30_crit_edge

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool25.not = icmp sgt i8 %20, -1
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call fastcc i32 @mspro_block_complete_req(ptr noundef %card, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %next_request28 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %38 = ptrtoint ptr %next_request28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @h_mspro_block_wait_for_ced, ptr %next_request28, align 4
  %39 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mrq, align 4
  tail call void @memstick_init_req(ptr noundef %40, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  br label %cleanup

if.end30:                                         ; preds = %if.then16.if.end30_crit_edge, %if.end12.if.end30_crit_edge
  %41 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool33.not = icmp eq i8 %41, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mrq, align 4
  tail call void @memstick_init_req(ptr noundef %43, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %44 = ptrtoint ptr %current_seg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %current_seg, align 4
  %arrayidx38 = getelementptr %struct.mspro_block_data, ptr %1, i32 0, i32 18, i32 %45
  %46 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %page_size, align 4
  %conv41 = zext i16 %47 to i32
  %48 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx38, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !236

do.body2.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #13, !srcloc !238
  unreachable

sg_page.exit:                                     ; preds = %if.end35
  %50 = ptrtoint ptr %t_sg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %t_sg, align 4
  %and.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !236

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !239
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and.i = and i32 %49, -4
  %52 = inttoptr i32 %and.i to ptr
  %53 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %current_page, align 4
  %mul = mul i32 %54, %conv41
  %offset = getelementptr %struct.mspro_block_data, ptr %1, i32 0, i32 18, i32 %45, i32 1
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset, align 4
  %add = add i32 %mul, %56
  %shr = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %52, i32 %shr
  %57 = ptrtoint ptr %add.ptr to i32
  %and48 = and i32 %add, 4095
  %and.i.i113 = and i32 %51, 3
  %or.i.i = or i32 %and.i.i113, %57
  %58 = ptrtoint ptr %t_sg to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i.i, ptr %t_sg, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %t_sg, i32 0, i32 1
  %59 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and48, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %t_sg, i32 0, i32 2
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv41, ptr %length.i, align 4
  %61 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mrq, align 4
  %data_dir = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %63 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load49 = load i8, ptr %data_dir, align 1
  %64 = and i8 %bf.load49, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp52 = icmp eq i8 %64, 0
  %conv54 = select i1 %cmp52, i8 2, i8 13
  call void @memstick_init_req_sg(ptr noundef %62, i8 noundef zeroext %conv54, ptr noundef nonnull %t_sg) #13
  %65 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mrq, align 4
  %need_card_int55 = getelementptr inbounds %struct.memstick_request, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %need_card_int55 to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load56 = load i8, ptr %need_card_int55, align 1
  %bf.set58 = or i8 %bf.load56, 64
  store i8 %bf.set58, ptr %need_card_int55, align 1
  br label %cleanup

sw.bb59:                                          ; preds = %if.end.sw.bb59_crit_edge, %if.end.sw.bb59_crit_edge114
  %current_page60 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 21
  %68 = ptrtoint ptr %current_page60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %current_page60, align 4
  %inc61 = add i32 %69, 1
  store i32 %inc61, ptr %current_page60, align 4
  %caps62 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %caps62 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %caps62, align 4
  %and63 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %72 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mrq, align 4
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  %int_reg66 = getelementptr inbounds %struct.memstick_request, ptr %73, i32 0, i32 2
  br label %has_int_reg

if.else67:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @memstick_init_req(ptr noundef %73, i8 noundef zeroext 7, ptr noundef null, i32 noundef 1) #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/memstick/core/mspro_block.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 657, 0\0A.popsection", ""() #13, !srcloc !240
  unreachable

cleanup:                                          ; preds = %if.else67, %sg_set_page.exit, %if.then34, %if.else, %if.then26, %if.then11, %sw.bb3.cleanup_crit_edge, %sw.bb, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %if.then11 ], [ %call27, %if.then26 ], [ 0, %if.else ], [ 0, %sg_set_page.exit ], [ 0, %if.then34 ], [ 0, %if.else67 ], [ 0, %sw.bb ], [ 0, %sw.bb3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t_sg) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t_val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_block_complete_req(ptr noundef %card, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %q_lock = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %q_lock) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_complete_req.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_complete_req, %do.end14)) #13
          to label %if.then [label %do.end14], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %block_req = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block_req, align 4
  %tobool12.not = icmp ne ptr %3, null
  %cond = zext i1 %tobool12.not to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_complete_req.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %cond, i32 noundef %error) #13
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry
  %block_req15 = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %block_req15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block_req15, align 4
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %if.else85, label %if.then17

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %error)
  %cmp18 = icmp eq i32 %error, -11
  %spec.store.select = select i1 %cmp18, i32 0, i32 %error
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool22.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then17.if.then26_crit_edge

if.then17.if.then26_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.then17
  %current_mrq = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 4
  %6 = ptrtoint ptr %current_mrq to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_mrq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %7)
  %cmp24 = icmp eq i8 %7, 37
  br i1 %cmp24, label %lor.lhs.false.if.then26_crit_edge, label %if.else

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.then17.if.then26_crit_edge
  %data_dir = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %data_dir, align 1
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp28 = icmp eq i8 %9, 0
  br i1 %cmp28, label %for.cond.preheader, label %if.then26.do.body45_crit_edge

if.then26.do.body45_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

for.cond.preheader:                               ; preds = %if.then26
  %current_seg = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %current_seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_seg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31136.not = icmp eq i32 %11, 0
  br i1 %cmp31136.not, label %for.cond.preheader.do.body45_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body45_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %page_size = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %page_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %page_size, align 4
  %conv33 = zext i16 %13 to i32
  %current_page = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %current_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool34.not = icmp eq i32 %15, 0
  %sub = add i32 %15, -1
  %add37 = select i1 %tobool34.not, i32 0, i32 %sub
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cnt.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %t_len.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %mul, %for.body.for.body_crit_edge ]
  %length = getelementptr %struct.mspro_block_data, ptr %1, i32 0, i32 18, i32 %cnt.0138, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %div = udiv i32 %17, %conv33
  %add = add i32 %div, %t_len.0137
  %t_len.1 = add i32 %add, %add37
  %mul = mul i32 %t_len.1, %conv33
  %inc = add nuw i32 %cnt.0138, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.body.do.body45_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.do.body45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %__data_len.i = getelementptr inbounds %struct.request, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %__data_len.i, align 8
  br label %do.body45

do.body45:                                        ; preds = %if.else, %for.body.do.body45_crit_edge, %for.cond.preheader.do.body45_crit_edge, %if.then26.do.body45_crit_edge
  %t_len.2 = phi i32 [ 0, %if.then26.do.body45_crit_edge ], [ %19, %if.else ], [ 0, %for.cond.preheader.do.body45_crit_edge ], [ %mul, %for.body.do.body45_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mspro_block_complete_req.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mspro_block_complete_req, %do.end63)) #13
          to label %if.then59 [label %do.end63], !srcloc !235

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  %dev60 = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mspro_block_complete_req.__UNIQUE_ID_ddebug281, ptr noundef %dev60, ptr noundef nonnull @.str.9, i32 noundef %t_len.2, i32 noundef %spec.store.select) #13
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.body45
  %tobool22.not.not = xor i1 %tobool22.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t_len.2)
  %tobool65.not = icmp eq i32 %t_len.2, 0
  %or.cond = select i1 %tobool22.not.not, i1 %tobool65.not, i1 false
  br i1 %or.cond, label %if.then66, label %do.end63.if.end69_crit_edge

do.end63.if.end69_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then66:                                        ; preds = %do.end63
  %20 = ptrtoint ptr %block_req15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %block_req15, align 4
  %bio.i = getelementptr inbounds %struct.request, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bio.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then66.if.end69_crit_edge, label %land.lhs.true.i.i

if.then66.if.end69_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true.i.i:                                ; preds = %if.then66
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end69_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.end69_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %27 to i8
  %28 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %trunc.i.i, label %if.end4.i [
    i8 3, label %land.lhs.true2.i.i.if.end69_crit_edge
    i8 5, label %land.lhs.true2.i.i.if.end69_crit_edge139
    i8 9, label %land.lhs.true2.i.i.if.end69_crit_edge140
  ]

land.lhs.true2.i.i.if.end69_crit_edge140:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true2.i.i.if.end69_crit_edge139:         ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true2.i.i.if.end69_crit_edge:            ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end4.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 20
  %29 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_idx.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %23, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_bvec_done.i, align 8
  %bv_len26.i = getelementptr %struct.bio_vec, ptr %30, i32 %32, i32 1
  %35 = ptrtoint ptr %bv_len26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_len26.i, align 4
  %sub.i = sub i32 %36, %34
  %37 = tail call i32 @llvm.umin.i32(i32 %25, i32 %sub.i) #13
  %bv_offset36.i = getelementptr %struct.bio_vec, ptr %30, i32 %32, i32 2
  %38 = ptrtoint ptr %bv_offset36.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_offset36.i, align 4
  %add40.i = add i32 %39, %34
  %rem.i = and i32 %add40.i, 4095
  %sub41.i = sub nuw nsw i32 4096, %rem.i
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %sub41.i) #13
  br label %if.end69

if.end69:                                         ; preds = %if.end4.i, %land.lhs.true2.i.i.if.end69_crit_edge, %land.lhs.true2.i.i.if.end69_crit_edge139, %land.lhs.true2.i.i.if.end69_crit_edge140, %land.lhs.true.i.i.if.end69_crit_edge, %if.then66.if.end69_crit_edge, %do.end63.if.end69_crit_edge
  %t_len.3 = phi i32 [ %t_len.2, %do.end63.if.end69_crit_edge ], [ %40, %if.end4.i ], [ 0, %if.then66.if.end69_crit_edge ], [ %25, %land.lhs.true2.i.i.if.end69_crit_edge ], [ %25, %land.lhs.true2.i.i.if.end69_crit_edge139 ], [ %25, %land.lhs.true2.i.i.if.end69_crit_edge140 ], [ 0, %land.lhs.true.i.i.if.end69_crit_edge ]
  %41 = ptrtoint ptr %block_req15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %block_req15, align 4
  %call71 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %spec.store.select) #13
  %call72 = tail call zeroext i1 @blk_update_request(ptr noundef %42, i8 noundef zeroext %call71, i32 noundef %t_len.3) #13
  br i1 %call72, label %if.then75, label %if.else80

if.then75:                                        ; preds = %if.end69
  %call76 = tail call fastcc i32 @mspro_block_issue_req(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.out_crit_edge, label %if.then75.if.end89_crit_edge

if.then75.if.end89_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then75.out_crit_edge:                          ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else80:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %block_req15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %block_req15, align 4
  %call82 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %spec.store.select) #13
  tail call void @__blk_mq_end_request(ptr noundef %44, i8 noundef zeroext %call82) #13
  %45 = ptrtoint ptr %block_req15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %block_req15, align 4
  br label %if.end89

if.else85:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool86.not = icmp eq i32 %error, 0
  %spec.store.select91 = select i1 %tobool86.not, i32 -11, i32 %error
  br label %if.end89

if.end89:                                         ; preds = %if.else85, %if.else80, %if.then75.if.end89_crit_edge
  %error.addr.0 = phi i32 [ %call76, %if.then75.if.end89_crit_edge ], [ %spec.store.select, %if.else80 ], [ %spec.store.select91, %if.else85 ]
  %next_request = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 6
  %46 = ptrtoint ptr %next_request to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @h_mspro_block_default_bad, ptr %next_request, align 4
  %mrq_complete = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 3
  tail call void @complete_all(ptr noundef %mrq_complete) #13
  br label %out

out:                                              ; preds = %if.end89, %if.then75.out_crit_edge
  %error.addr.1 = phi i32 [ %error.addr.0, %if.end89 ], [ 0, %if.then75.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %q_lock, i32 noundef %call3) #13
  ret i32 %error.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_mspro_block_default(ptr noundef %card, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  %call = tail call fastcc i32 @mspro_block_complete_req(ptr noundef %card, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h_mspro_block_wait_for_ced(ptr noundef %card, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h_mspro_block_wait_for_ced.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@h_mspro_block_wait_for_ced, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %2 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %data = getelementptr inbounds %struct.anon.84, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @h_mspro_block_wait_for_ced.__UNIQUE_ID_ddebug279, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrq, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end20_crit_edge

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then5:                                         ; preds = %do.end
  %9 = getelementptr inbounds %struct.memstick_request, ptr %6, i32 0, i32 4
  %data6 = getelementptr inbounds %struct.anon.84, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data6, align 1
  %conv8 = zext i8 %11 to i32
  %and = and i32 %conv8, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -14, ptr %error, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then5
  %and15 = and i32 %conv8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.return_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then10, %do.end.if.end20_crit_edge
  %13 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mrq, align 4
  %error21 = getelementptr inbounds %struct.memstick_request, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %error21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error21, align 4
  %call22 = tail call fastcc i32 @mspro_block_complete_req(ptr noundef %card, i32 noundef %16)
  br label %return

return:                                           ; preds = %if.end20, %if.else.return_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ 0, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_init_req_sg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mspro_block_issue_req(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %last_sg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_page = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 21
  %current_seg = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 20
  %block_req = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 5
  %req_sg = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 18
  %seg_count = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %blk_rq_cur_bytes.exit.while.cond_crit_edge, %entry
  %2 = ptrtoint ptr %current_page to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %current_page, align 4
  %3 = ptrtoint ptr %current_seg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %current_seg, align 4
  %4 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block_req, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i) #13
  %8 = ptrtoint ptr %last_sg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %last_sg.i, align 4
  %call.i = call i32 @__blk_rq_map_sg(ptr noundef %7, ptr noundef %5, ptr noundef %req_sg, ptr noundef nonnull %last_sg.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i) #13
  %9 = ptrtoint ptr %seg_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %seg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %10 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block_req, align 4
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %while.cond
  %bio.i = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bio.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.blk_rq_cur_bytes.exit_crit_edge, label %land.lhs.true.i.i

if.then.blk_rq_cur_bytes.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_rq_cur_bytes.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i = trunc i32 %17 to i8
  %18 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %trunc.i.i, label %if.end4.i [
    i8 3, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge
    i8 5, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge55
    i8 9, label %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge56
  ]

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge56: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge55: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_rq_cur_bytes.exit

land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_rq_cur_bytes.exit

if.end4.i:                                        ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 20
  %19 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_idx.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %13, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_bvec_done.i, align 8
  %bv_len26.i = getelementptr %struct.bio_vec, ptr %20, i32 %22, i32 1
  %25 = ptrtoint ptr %bv_len26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_len26.i, align 4
  %sub.i = sub i32 %26, %24
  %27 = call i32 @llvm.umin.i32(i32 %15, i32 %sub.i) #13
  %bv_offset36.i = getelementptr %struct.bio_vec, ptr %20, i32 %22, i32 2
  %28 = ptrtoint ptr %bv_offset36.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_offset36.i, align 4
  %add40.i = add i32 %29, %24
  %rem.i = and i32 %add40.i, 4095
  %sub41.i = sub nuw nsw i32 4096, %rem.i
  %30 = call i32 @llvm.umin.i32(i32 %27, i32 %sub41.i) #13
  br label %blk_rq_cur_bytes.exit

blk_rq_cur_bytes.exit:                            ; preds = %if.end4.i, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge55, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge56, %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge, %if.then.blk_rq_cur_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ %30, %if.end4.i ], [ 0, %if.then.blk_rq_cur_bytes.exit_crit_edge ], [ %15, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge ], [ %15, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge55 ], [ %15, %land.lhs.true2.i.i.blk_rq_cur_bytes.exit_crit_edge56 ], [ 0, %land.lhs.true.i.i.blk_rq_cur_bytes.exit_crit_edge ]
  %call7 = call zeroext i1 @blk_update_request(ptr noundef %11, i8 noundef zeroext 9, i32 noundef %retval.0.i) #13
  br i1 %call7, label %blk_rq_cur_bytes.exit.while.cond_crit_edge, label %if.end

blk_rq_cur_bytes.exit.while.cond_crit_edge:       ; preds = %blk_rq_cur_bytes.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end:                                           ; preds = %blk_rq_cur_bytes.exit
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %block_req, align 4
  call void @__blk_mq_end_request(ptr noundef %32, i8 noundef zeroext 9) #13
  %33 = ptrtoint ptr %block_req to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %block_req, align 4
  br label %cleanup27

if.end13:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %__sector.i = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 9
  %34 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %__sector.i, align 8
  %shl = shl i64 %35, 9
  %__data_len.i = getelementptr inbounds %struct.request, ptr %11, i32 0, i32 8
  %36 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %__data_len.i, align 8
  %setup_transfer = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setup_transfer, align 4
  call void %39(ptr noundef %card, i64 noundef %shl, i32 noundef %37) #13
  %40 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %block_req, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %data_dir = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %data_dir, align 1
  %45 = trunc i32 %and.i to i8
  %46 = shl nuw nsw i8 %45, 5
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %46, %bf.clear
  store i8 %bf.set, ptr %data_dir, align 1
  %conv26 = select i1 %tobool.i.not, i8 32, i8 33
  %transfer_cmd = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 14
  %47 = ptrtoint ptr %transfer_cmd to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv26, ptr %transfer_cmd, align 2
  %host = getelementptr inbounds %struct.memstick_dev, ptr %card, i32 0, i32 1
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host, align 4
  call void @memstick_new_req(ptr noundef %49) #13
  br label %cleanup27

cleanup27:                                        ; preds = %if.end13, %if.end
  %retval.2 = phi i32 [ 0, %if.end13 ], [ -11, %if.end ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h_mspro_block_default_bad(ptr nocapture noundef readnone %card, ptr nocapture noundef readnone %mrq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_attr_show_sysinfo(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %assembly_date = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %assembly_date to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assembly_date, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %3)
  %cmp = icmp ugt i8 %3, -128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add = sub nsw i32 0, %conv
  %and = and i32 %add, 3
  %shr = ashr i32 %add, 2
  %sub = sub nsw i32 0, %shr
  %mul = mul nuw nsw i32 %and, 15
  br label %if.end17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp8 = icmp sgt i8 %3, -1
  br i1 %cmp8, label %if.then10, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %and14 = and i32 %conv, 3
  %4 = lshr i32 %conv, 2
  %mul16 = mul nuw nsw i32 %and14, 15
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.else.if.end17_crit_edge, %if.then
  %date_tz.0 = phi i32 [ %sub, %if.then ], [ %4, %if.then10 ], [ 0, %if.else.if.end17_crit_edge ]
  %date_tz_f.0 = phi i32 [ %mul, %if.then ], [ %mul16, %if.then10 ], [ 0, %if.else.if.end17_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv20 = zext i8 %6 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.44, i32 noundef %conv20) #13
  %add.ptr22 = getelementptr i8, ptr %buffer, i32 %call
  %sub23 = sub i32 4096, %call
  %block_size = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %block_size, align 1
  %conv24 = zext i16 %8 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.45, i32 noundef %conv24) #13
  %add26 = add i32 %call25, %call
  %add.ptr27 = getelementptr i8, ptr %buffer, i32 %add26
  %sub28 = sub i32 4096, %add26
  %block_count = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %block_count to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %block_count, align 1
  %conv29 = zext i16 %10 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.46, i32 noundef %conv29) #13
  %add31 = add i32 %call30, %add26
  %add.ptr32 = getelementptr i8, ptr %buffer, i32 %add31
  %sub33 = sub i32 4096, %add31
  %user_block_count = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %user_block_count to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %user_block_count, align 1
  %conv34 = zext i16 %12 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.47, i32 noundef %conv34) #13
  %add36 = add i32 %call35, %add31
  %add.ptr37 = getelementptr i8, ptr %buffer, i32 %add36
  %sub38 = sub i32 4096, %add36
  %page_size = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %page_size to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %page_size, align 1
  %conv39 = zext i16 %14 to i32
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.48, i32 noundef %conv39) #13
  %add41 = add i32 %call40, %add36
  %add.ptr42 = getelementptr i8, ptr %buffer, i32 %add41
  %sub43 = sub i32 4096, %add41
  %arrayidx45 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx45, align 2
  %conv47 = zext i16 %16 to i32
  %arrayidx49 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %18 to i32
  %arrayidx52 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 7, i32 4
  %19 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %20 to i32
  %arrayidx55 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %22 to i32
  %arrayidx58 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 7, i32 6
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %24 to i32
  %arrayidx61 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 7, i32 7
  %25 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %26 to i32
  %call63 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.49, i32 noundef %date_tz.0, i32 noundef %date_tz_f.0, i32 noundef %conv47, i32 noundef %conv50, i32 noundef %conv53, i32 noundef %conv56, i32 noundef %conv59, i32 noundef %conv62) #13
  %add64 = add i32 %call63, %add41
  %add.ptr65 = getelementptr i8, ptr %buffer, i32 %add64
  %sub66 = sub i32 4096, %add64
  %serial_number = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %serial_number to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %serial_number, align 1
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65, i32 noundef %sub66, ptr noundef nonnull @.str.50, i32 noundef %28) #13
  %add68 = add i32 %call67, %add64
  %add.ptr69 = getelementptr i8, ptr %buffer, i32 %add68
  %sub70 = sub i32 4096, %add68
  %assembly_maker_code = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %assembly_maker_code to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %assembly_maker_code, align 1
  %conv71 = zext i8 %30 to i32
  %call72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.51, i32 noundef %conv71) #13
  %add73 = add i32 %call72, %add68
  %add.ptr74 = getelementptr i8, ptr %buffer, i32 %add73
  %sub75 = sub i32 4096, %add73
  %assembly_model_code = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %assembly_model_code to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %assembly_model_code, align 1
  %conv77 = zext i8 %32 to i32
  %arrayidx79 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %34 to i32
  %arrayidx82 = getelementptr %struct.mspro_sys_info, ptr %1, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %36 to i32
  %call84 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.52, i32 noundef %conv77, i32 noundef %conv80, i32 noundef %conv83) #13
  %add85 = add i32 %call84, %add73
  %add.ptr86 = getelementptr i8, ptr %buffer, i32 %add85
  %sub87 = sub i32 4096, %add85
  %memory_maker_code = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 11
  %37 = ptrtoint ptr %memory_maker_code to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %memory_maker_code, align 1
  %conv88 = zext i16 %38 to i32
  %call89 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr86, i32 noundef %sub87, ptr noundef nonnull @.str.53, i32 noundef %conv88) #13
  %add90 = add i32 %call89, %add85
  %add.ptr91 = getelementptr i8, ptr %buffer, i32 %add90
  %sub92 = sub i32 4096, %add90
  %memory_model_code = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %memory_model_code to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %memory_model_code, align 1
  %conv93 = zext i16 %40 to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.54, i32 noundef %conv93) #13
  %add95 = add i32 %call94, %add90
  %add.ptr96 = getelementptr i8, ptr %buffer, i32 %add95
  %sub97 = sub i32 4096, %add95
  %vcc = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 14
  %41 = ptrtoint ptr %vcc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vcc, align 1
  %conv98 = zext i8 %42 to i32
  %call99 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.55, i32 noundef %conv98) #13
  %add100 = add i32 %call99, %add95
  %add.ptr101 = getelementptr i8, ptr %buffer, i32 %add100
  %sub102 = sub i32 4096, %add100
  %vpp = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 15
  %43 = ptrtoint ptr %vpp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vpp, align 1
  %conv103 = zext i8 %44 to i32
  %call104 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr101, i32 noundef %sub102, ptr noundef nonnull @.str.56, i32 noundef %conv103) #13
  %add105 = add i32 %call104, %add100
  %add.ptr106 = getelementptr i8, ptr %buffer, i32 %add105
  %sub107 = sub i32 4096, %add105
  %controller_number = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 16
  %45 = ptrtoint ptr %controller_number to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %controller_number, align 1
  %conv108 = zext i16 %46 to i32
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106, i32 noundef %sub107, ptr noundef nonnull @.str.57, i32 noundef %conv108) #13
  %add110 = add i32 %call109, %add105
  %add.ptr111 = getelementptr i8, ptr %buffer, i32 %add110
  %sub112 = sub i32 4096, %add110
  %controller_function = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 17
  %47 = ptrtoint ptr %controller_function to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %controller_function, align 1
  %conv113 = zext i16 %48 to i32
  %call114 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.58, i32 noundef %conv113) #13
  %add115 = add i32 %call114, %add110
  %add.ptr116 = getelementptr i8, ptr %buffer, i32 %add115
  %sub117 = sub i32 4096, %add115
  %start_sector = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %start_sector to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %start_sector, align 1
  %conv118 = zext i16 %50 to i32
  %call119 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr116, i32 noundef %sub117, ptr noundef nonnull @.str.59, i32 noundef %conv118) #13
  %add120 = add i32 %call119, %add115
  %add.ptr121 = getelementptr i8, ptr %buffer, i32 %add120
  %sub122 = sub i32 4096, %add120
  %unit_size = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 19
  %51 = ptrtoint ptr %unit_size to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %unit_size, align 1
  %conv123 = zext i16 %52 to i32
  %call124 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr121, i32 noundef %sub122, ptr noundef nonnull @.str.60, i32 noundef %conv123) #13
  %add125 = add i32 %call124, %add120
  %add.ptr126 = getelementptr i8, ptr %buffer, i32 %add125
  %sub127 = sub i32 4096, %add125
  %ms_sub_class = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 20
  %53 = ptrtoint ptr %ms_sub_class to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ms_sub_class, align 1
  %conv128 = zext i8 %54 to i32
  %call129 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr126, i32 noundef %sub127, ptr noundef nonnull @.str.61, i32 noundef %conv128) #13
  %add130 = add i32 %call129, %add125
  %add.ptr131 = getelementptr i8, ptr %buffer, i32 %add130
  %sub132 = sub i32 4096, %add130
  %interface_type = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 22
  %55 = ptrtoint ptr %interface_type to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %interface_type, align 1
  %conv133 = zext i8 %56 to i32
  %call134 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr131, i32 noundef %sub132, ptr noundef nonnull @.str.62, i32 noundef %conv133) #13
  %add135 = add i32 %call134, %add130
  %add.ptr136 = getelementptr i8, ptr %buffer, i32 %add135
  %sub137 = sub i32 4096, %add135
  %controller_code = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 23
  %57 = ptrtoint ptr %controller_code to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %controller_code, align 1
  %conv138 = zext i16 %58 to i32
  %call139 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr136, i32 noundef %sub137, ptr noundef nonnull @.str.63, i32 noundef %conv138) #13
  %add140 = add i32 %call139, %add135
  %add.ptr141 = getelementptr i8, ptr %buffer, i32 %add140
  %sub142 = sub i32 4096, %add140
  %format_type = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 24
  %59 = ptrtoint ptr %format_type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %format_type, align 1
  %conv143 = zext i8 %60 to i32
  %call144 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr141, i32 noundef %sub142, ptr noundef nonnull @.str.64, i32 noundef %conv143) #13
  %add145 = add i32 %call144, %add140
  %add.ptr146 = getelementptr i8, ptr %buffer, i32 %add145
  %sub147 = sub i32 4096, %add145
  %device_type = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 26
  %61 = ptrtoint ptr %device_type to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %device_type, align 1
  %conv148 = zext i8 %62 to i32
  %call149 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146, i32 noundef %sub147, ptr noundef nonnull @.str.65, i32 noundef %conv148) #13
  %add150 = add i32 %call149, %add145
  %add.ptr151 = getelementptr i8, ptr %buffer, i32 %add150
  %sub152 = sub i32 4096, %add150
  %mspro_id = getelementptr inbounds %struct.mspro_sys_info, ptr %1, i32 0, i32 28
  %call153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr151, i32 noundef %sub152, ptr noundef nonnull @.str.66, ptr noundef %mspro_id) #13
  %add154 = add i32 %add150, %call153
  ret i32 %add154
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_attr_show_modelname(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.33, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_attr_show_mbr(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.67, i32 noundef %conv) #13
  %add.ptr2 = getelementptr i8, ptr %buffer, i32 %call
  %sub3 = sub i32 4096, %call
  %start_head = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %start_head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %start_head, align 1
  %conv4 = zext i8 %5 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.68, i32 noundef %conv4) #13
  %add6 = add i32 %call5, %call
  %add.ptr7 = getelementptr i8, ptr %buffer, i32 %add6
  %sub8 = sub i32 4096, %add6
  %start_sector = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %start_sector to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %start_sector, align 1
  %conv9 = zext i8 %7 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.59, i32 noundef %conv9) #13
  %add11 = add i32 %call10, %add6
  %add.ptr12 = getelementptr i8, ptr %buffer, i32 %add11
  %sub13 = sub i32 4096, %add11
  %start_cylinder = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %start_cylinder to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %start_cylinder, align 1
  %conv14 = zext i8 %9 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.69, i32 noundef %conv14) #13
  %add16 = add i32 %call15, %add11
  %add.ptr17 = getelementptr i8, ptr %buffer, i32 %add16
  %sub18 = sub i32 4096, %add16
  %partition_type = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %partition_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %partition_type, align 1
  %conv19 = zext i8 %11 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.70, i32 noundef %conv19) #13
  %add21 = add i32 %call20, %add16
  %add.ptr22 = getelementptr i8, ptr %buffer, i32 %add21
  %sub23 = sub i32 4096, %add21
  %end_head = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %end_head to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %end_head, align 1
  %conv24 = zext i8 %13 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.71, i32 noundef %conv24) #13
  %add26 = add i32 %call25, %add21
  %add.ptr27 = getelementptr i8, ptr %buffer, i32 %add26
  %sub28 = sub i32 4096, %add26
  %end_sector = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %end_sector to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %end_sector, align 1
  %conv29 = zext i8 %15 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.72, i32 noundef %conv29) #13
  %add31 = add i32 %call30, %add26
  %add.ptr32 = getelementptr i8, ptr %buffer, i32 %add31
  %sub33 = sub i32 4096, %add31
  %end_cylinder = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %end_cylinder to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %end_cylinder, align 1
  %conv34 = zext i8 %17 to i32
  %call35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.73, i32 noundef %conv34) #13
  %add36 = add i32 %call35, %add31
  %add.ptr37 = getelementptr i8, ptr %buffer, i32 %add36
  %sub38 = sub i32 4096, %add36
  %start_sectors = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %start_sectors to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %start_sectors, align 1
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr37, i32 noundef %sub38, ptr noundef nonnull @.str.74, i32 noundef %19) #13
  %add40 = add i32 %call39, %add36
  %add.ptr41 = getelementptr i8, ptr %buffer, i32 %add40
  %sub42 = sub i32 4096, %add40
  %sectors_per_partition = getelementptr inbounds %struct.mspro_mbr, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %sectors_per_partition to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %sectors_per_partition, align 1
  %call43 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.75, i32 noundef %21) #13
  %add44 = add i32 %call43, %add40
  ret i32 %add44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_attr_show_specfile(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  %name = alloca [9 x i8], align 8
  %ext = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %name) #13
  %2 = getelementptr inbounds [9 x i8], ptr %name, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext) #13
  %3 = getelementptr inbounds [4 x i8], ptr %ext, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %1, align 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %name, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %2, align 8
  %ext4 = getelementptr inbounds %struct.mspro_specfile, ptr %1, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %ext, ptr %ext4, i32 3)
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.76, ptr noundef nonnull %name) #13
  %add.ptr9 = getelementptr i8, ptr %buffer, i32 %call
  %sub10 = sub i32 4096, %call
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.77, ptr noundef nonnull %ext) #13
  %add13 = add i32 %call12, %call
  %add.ptr14 = getelementptr i8, ptr %buffer, i32 %add13
  %sub15 = sub i32 4096, %add13
  %attr16 = getelementptr inbounds %struct.mspro_specfile, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %attr16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %attr16, align 1
  %conv = zext i8 %11 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.78, i32 noundef %conv) #13
  %add18 = add i32 %call17, %add13
  %add.ptr19 = getelementptr i8, ptr %buffer, i32 %add18
  %sub20 = sub i32 4096, %add18
  %time = getelementptr inbounds %struct.mspro_specfile, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %time to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %time, align 1
  %conv21 = zext i16 %13 to i32
  %14 = lshr i32 %conv21, 11
  %15 = lshr i32 %conv21, 5
  %and = and i32 %15, 63
  %and27 = shl nuw nsw i32 %conv21, 1
  %mul = and i32 %and27, 62
  %call28 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.79, i32 noundef %14, i32 noundef %and, i32 noundef %mul) #13
  %add29 = add i32 %call28, %add18
  %add.ptr30 = getelementptr i8, ptr %buffer, i32 %add29
  %sub31 = sub i32 4096, %add29
  %date = getelementptr inbounds %struct.mspro_specfile, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %date to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %date, align 1
  %conv32 = zext i16 %17 to i32
  %18 = lshr i32 %conv32, 9
  %add34 = add nuw nsw i32 %18, 1980
  %19 = lshr i32 %conv32, 5
  %and38 = and i32 %19, 15
  %and41 = and i32 %conv32, 31
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr30, i32 noundef %sub31, ptr noundef nonnull @.str.80, i32 noundef %add34, i32 noundef %and38, i32 noundef %and41) #13
  %add43 = add i32 %call42, %add29
  %add.ptr44 = getelementptr i8, ptr %buffer, i32 %add43
  %sub45 = sub i32 4096, %add43
  %cluster = getelementptr inbounds %struct.mspro_specfile, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %cluster to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %cluster, align 1
  %conv46 = zext i16 %21 to i32
  %call47 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.81, i32 noundef %conv46) #13
  %add48 = add i32 %call47, %add43
  %add.ptr49 = getelementptr i8, ptr %buffer, i32 %add48
  %sub50 = sub i32 4096, %add48
  %size = getelementptr inbounds %struct.mspro_specfile, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %size, align 1
  %call51 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.82, i32 noundef %23) #13
  %add52 = add i32 %call51, %add48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %name) #13
  ret i32 %add52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_attr_show_devinfo(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %attr, i32 -40
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv) #13
  %add.ptr2 = getelementptr i8, ptr %buffer, i32 %call
  %sub3 = sub i32 4096, %call
  %heads = getelementptr inbounds %struct.mspro_devinfo, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %heads to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %heads, align 1
  %conv4 = zext i16 %5 to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.84, i32 noundef %conv4) #13
  %add6 = add i32 %call5, %call
  %add.ptr7 = getelementptr i8, ptr %buffer, i32 %add6
  %sub8 = sub i32 4096, %add6
  %bytes_per_track = getelementptr inbounds %struct.mspro_devinfo, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bytes_per_track to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %bytes_per_track, align 1
  %conv9 = zext i16 %7 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.85, i32 noundef %conv9) #13
  %add11 = add i32 %call10, %add6
  %add.ptr12 = getelementptr i8, ptr %buffer, i32 %add11
  %sub13 = sub i32 4096, %add11
  %bytes_per_sector = getelementptr inbounds %struct.mspro_devinfo, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bytes_per_sector to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %bytes_per_sector, align 1
  %conv14 = zext i16 %9 to i32
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.86, i32 noundef %conv14) #13
  %add16 = add i32 %call15, %add11
  %add.ptr17 = getelementptr i8, ptr %buffer, i32 %add16
  %sub18 = sub i32 4096, %add16
  %sectors_per_track = getelementptr inbounds %struct.mspro_devinfo, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %sectors_per_track to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %sectors_per_track, align 1
  %conv19 = zext i16 %11 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.87, i32 noundef %conv19) #13
  %add21 = add i32 %call20, %add16
  ret i32 %add21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_attr_show_default(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -44
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr i8, ptr %attr, i32 -40
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %rc.023 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end4.for.body_crit_edge ]
  %cnt.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %if.end4.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.022)
  %tobool.not = icmp eq i32 %cnt.022, 0
  %2 = and i32 %cnt.022, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp ne i32 %2, 0
  %or.cond.not = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rc.023)
  %tobool2.not = icmp eq i32 %rc.023, 4096
  %or.cond20 = select i1 %or.cond.not, i1 true, i1 %tobool2.not
  br i1 %or.cond20, label %for.body.if.end4_crit_edge, label %if.then3

for.body.if.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add i32 %rc.023, 1
  %arrayidx = getelementptr i8, ptr %buffer, i32 %rc.023
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %arrayidx, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body.if.end4_crit_edge
  %rc.1 = phi i32 [ %inc, %if.then3 ], [ %rc.023, %for.body.if.end4_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %buffer, i32 %rc.1
  %sub6 = sub i32 4096, %rc.1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx7 = getelementptr i8, ptr %5, i32 %cnt.022
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.88, i32 noundef %conv) #13
  %add = add i32 %call, %rc.1
  %inc8 = add nuw i32 %cnt.022, 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %cmp = icmp ult i32 %inc8, %9
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end4.for.end_crit_edge ]
  ret i32 %rc.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mspro_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #2 align 64 {
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
  %q_lock = getelementptr inbounds %struct.mspro_block_data, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %q_lock) #13
  %block_req = getelementptr inbounds %struct.mspro_block_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %block_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_req, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %eject = getelementptr inbounds %struct.mspro_block_data, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %eject, align 1
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  %10 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd, align 4
  tail call void @blk_mq_start_request(ptr noundef %11) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd, align 4
  %14 = ptrtoint ptr %block_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %block_req, align 4
  %15 = load ptr, ptr %bd, align 4
  tail call void @blk_mq_start_request(ptr noundef %15) #13
  %call9 = tail call fastcc i32 @mspro_block_issue_req(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end5.if.end13_crit_edge, label %if.then11

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %block_req to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %block_req, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end5.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %q_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then3, %if.then
  %retval.0 = phi i8 [ 13, %if.then ], [ 10, %if.then3 ], [ 0, %if.end13 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mspro_block_bd_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #2 align 64 {
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
  tail call void @mutex_lock_nested(ptr noundef nonnull @mspro_block_disk_lock, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %usage_count = getelementptr inbounds %struct.mspro_block_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %usage_count, align 4
  %and = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true3

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true3:                                   ; preds = %if.then
  %read_only = getelementptr inbounds %struct.mspro_block_data, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %read_only, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %land.lhs.true3.if.else_crit_edge, label %land.lhs.true3.if.end6_crit_edge

land.lhs.true3.if.end6_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %if.then.if.else_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %if.else, %land.lhs.true3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %rc.0 = phi i32 [ 0, %if.else ], [ -6, %land.lhs.true.if.end6_crit_edge ], [ -6, %entry.if.end6_crit_edge ], [ -30, %land.lhs.true3.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @mspro_block_disk_lock) #13
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mspro_block_bd_release(ptr noundef %disk, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %first_minor.i.i = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 1
  %2 = ptrtoint ptr %first_minor.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_minor.i.i, align 4
  %and.i = lshr i32 %3, 3
  %shr.i = and i32 %and.i, 131071
  tail call void @mutex_lock_nested(ptr noundef nonnull @mspro_block_disk_lock, i32 noundef 0) #13
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mspro_block_disk_release.exit_crit_edge, label %if.then.i

entry.mspro_block_disk_release.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_disk_release.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.mspro_block_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.then.i.if.then6.i_crit_edge, label %if.end.i

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.end.i:                                         ; preds = %if.then.i
  %dec.i = add i32 %5, -1
  %6 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec.i, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool5.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.then6.i_crit_edge, label %if.end.i.mspro_block_disk_release.exit_crit_edge

if.end.i.mspro_block_disk_release.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mspro_block_disk_release.exit

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #13
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %private_data.i, align 8
  %call8.i = tail call ptr @idr_remove(ptr noundef nonnull @mspro_block_disk_idr, i32 noundef %shr.i) #13
  tail call void @put_disk(ptr noundef %disk) #13
  br label %mspro_block_disk_release.exit

mspro_block_disk_release.exit:                    ; preds = %if.then6.i, %if.end.i.mspro_block_disk_release.exit_crit_edge, %entry.mspro_block_disk_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mspro_block_disk_lock) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mspro_block_bd_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #7 align 64 {
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
  %heads = getelementptr inbounds %struct.mspro_block_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %heads to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %heads, align 4
  %conv = trunc i16 %5 to i8
  %6 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %geo, align 4
  %sectors_per_track = getelementptr inbounds %struct.mspro_block_data, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %sectors_per_track to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sectors_per_track, align 2
  %conv2 = trunc i16 %8 to i8
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %9 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %sectors, align 1
  %cylinders = getelementptr inbounds %struct.mspro_block_data, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cylinders, align 2
  %cylinders3 = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %12 = ptrtoint ptr %cylinders3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %cylinders3, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_stop_hw_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_hw_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !85, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !206, !208, !209, !210, !212, !214, !216, !217, !218, !220, !221, !223, !224, !225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__param_major, !1, !"__param_major", i1 false, i1 false}
!1 = !{!"../drivers/memstick/core/mspro_block.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_majortype278, !1, !"__UNIQUE_ID_majortype278", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/memstick/core/mspro_block.c", i32 1465, i32 27}
!5 = !{ptr @__initcall__kmod_mspro_block__289_1469_mspro_block_init6, !6, !"__initcall__kmod_mspro_block__289_1469_mspro_block_init6", i1 false, i1 false}
!6 = !{!"../drivers/memstick/core/mspro_block.c", i32 1469, i32 1}
!7 = !{ptr @__exitcall_mspro_block_exit, !8, !"__exitcall_mspro_block_exit", i1 false, i1 false}
!8 = !{!"../drivers/memstick/core/mspro_block.c", i32 1470, i32 1}
!9 = !{ptr @__UNIQUE_ID_file290, !10, !"__UNIQUE_ID_file290", i1 false, i1 false}
!10 = !{!"../drivers/memstick/core/mspro_block.c", i32 1472, i32 1}
!11 = !{ptr @__UNIQUE_ID_license291, !10, !"__UNIQUE_ID_license291", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author292, !13, !"__UNIQUE_ID_author292", i1 false, i1 false}
!13 = !{!"../drivers/memstick/core/mspro_block.c", i32 1473, i32 1}
!14 = !{ptr @__UNIQUE_ID_description293, !15, !"__UNIQUE_ID_description293", i1 false, i1 false}
!15 = !{!"../drivers/memstick/core/mspro_block.c", i32 1474, i32 1}
!16 = !{ptr @major, !17, !"major", i1 false, i1 false}
!17 = !{!"../drivers/memstick/core/mspro_block.c", i32 23, i32 12}
!18 = !{ptr @__param_str_major, !1, !"__param_str_major", i1 false, i1 false}
!19 = !{ptr @mspro_block_driver, !20, !"mspro_block_driver", i1 false, i1 false}
!20 = !{!"../drivers/memstick/core/mspro_block.c", i32 1431, i32 31}
!21 = !{ptr @mspro_block_id_tbl, !22, !"mspro_block_id_tbl", i1 false, i1 false}
!22 = !{!"../drivers/memstick/core/mspro_block.c", i32 1424, i32 34}
!23 = !{ptr @mspro_block_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/memstick/core/mspro_block.c", i32 1294, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memstick/core/mspro_block.c", i32 1146, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mspro_block_init_card.__UNIQUE_ID_ddebug284, !27, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memstick/core/mspro_block.c", i32 1159, i32 2}
!33 = !{ptr @mspro_block_init_card.__UNIQUE_ID_ddebug285, !32, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memstick/core/mspro_block.c", i32 1166, i32 2}
!36 = !{ptr @mspro_block_init_card.__UNIQUE_ID_ddebug286, !35, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memstick/core/mspro_block.c", i32 746, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mspro_block_complete_req.__UNIQUE_ID_ddebug280, !38, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memstick/core/mspro_block.c", i32 769, i32 3}
!43 = !{ptr @mspro_block_complete_req.__UNIQUE_ID_ddebug281, !42, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memstick/core/mspro_block.c", i32 562, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @h_mspro_block_wait_for_ced.__UNIQUE_ID_ddebug279, !45, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memstick/core/mspro_block.c", i32 902, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mspro_block_switch_interface._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mspro_block_switch_interface._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memstick/core/mspro_block.c", i32 910, i32 2}
!55 = !{ptr @mspro_block_switch_interface._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mspro_block_switch_interface._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memstick/core/mspro_block.c", i32 920, i32 4}
!59 = !{ptr @mspro_block_switch_interface._entry.17, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mspro_block_switch_interface._entry_ptr.19, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memstick/core/mspro_block.c", i32 924, i32 4}
!63 = !{ptr @mspro_block_switch_interface._entry.20, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mspro_block_switch_interface._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memstick/core/mspro_block.c", i32 937, i32 3}
!67 = !{ptr @mspro_block_switch_interface._entry.23, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @mspro_block_switch_interface._entry_ptr.25, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/memstick/core/mspro_block.c", i32 1004, i32 3}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mspro_block_read_attributes._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mspro_block_read_attributes._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memstick/core/mspro_block.c", i32 1011, i32 3}
!76 = !{ptr @mspro_block_read_attributes._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mspro_block_read_attributes._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memstick/core/mspro_block.c", i32 1024, i32 25}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memstick/core/mspro_block.c", i32 1042, i32 3}
!82 = !{ptr @mspro_block_read_attributes.__UNIQUE_ID_ddebug282, !81, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memstick/core/mspro_block.c", i32 1047, i32 49}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/memstick/core/mspro_block.c", i32 1051, i32 6}
!87 = !{ptr @mspro_block_read_attributes.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/memstick/core/mspro_block.c", i32 1053, i32 3}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memstick/core/mspro_block.c", i32 1095, i32 3}
!91 = !{ptr @mspro_block_read_attributes.__UNIQUE_ID_ddebug283, !90, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memstick/core/mspro_block.c", i32 262, i32 10}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memstick/core/mspro_block.c", i32 264, i32 10}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memstick/core/mspro_block.c", i32 266, i32 10}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/memstick/core/mspro_block.c", i32 268, i32 10}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/memstick/core/mspro_block.c", i32 270, i32 10}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memstick/core/mspro_block.c", i32 272, i32 10}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/memstick/core/mspro_block.c", i32 274, i32 10}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memstick/core/mspro_block.c", i32 276, i32 10}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/memstick/core/mspro_block.c", i32 332, i32 47}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memstick/core/mspro_block.c", i32 334, i32 47}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/memstick/core/mspro_block.c", i32 336, i32 47}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/memstick/core/mspro_block.c", i32 338, i32 47}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memstick/core/mspro_block.c", i32 340, i32 47}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/memstick/core/mspro_block.c", i32 342, i32 47}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/memstick/core/mspro_block.c", i32 349, i32 47}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memstick/core/mspro_block.c", i32 352, i32 4}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memstick/core/mspro_block.c", i32 354, i32 47}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/memstick/core/mspro_block.c", i32 358, i32 47}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/memstick/core/mspro_block.c", i32 360, i32 47}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memstick/core/mspro_block.c", i32 362, i32 47}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/memstick/core/mspro_block.c", i32 364, i32 47}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memstick/core/mspro_block.c", i32 366, i32 47}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/memstick/core/mspro_block.c", i32 369, i32 4}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/memstick/core/mspro_block.c", i32 371, i32 47}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/memstick/core/mspro_block.c", i32 373, i32 47}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/memstick/core/mspro_block.c", i32 375, i32 47}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/memstick/core/mspro_block.c", i32 377, i32 47}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/memstick/core/mspro_block.c", i32 379, i32 47}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/memstick/core/mspro_block.c", i32 381, i32 47}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/memstick/core/mspro_block.c", i32 383, i32 47}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/memstick/core/mspro_block.c", i32 385, i32 47}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/memstick/core/mspro_block.c", i32 411, i32 47}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/memstick/core/mspro_block.c", i32 413, i32 47}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memstick/core/mspro_block.c", i32 417, i32 47}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memstick/core/mspro_block.c", i32 419, i32 47}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/memstick/core/mspro_block.c", i32 421, i32 47}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/memstick/core/mspro_block.c", i32 423, i32 47}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/memstick/core/mspro_block.c", i32 425, i32 47}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/memstick/core/mspro_block.c", i32 427, i32 47}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memstick/core/mspro_block.c", i32 430, i32 4}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/memstick/core/mspro_block.c", i32 451, i32 47}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/memstick/core/mspro_block.c", i32 452, i32 47}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/memstick/core/mspro_block.c", i32 453, i32 47}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/memstick/core/mspro_block.c", i32 455, i32 47}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/memstick/core/mspro_block.c", i32 459, i32 47}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/memstick/core/mspro_block.c", i32 463, i32 47}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/memstick/core/mspro_block.c", i32 465, i32 47}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/memstick/core/mspro_block.c", i32 480, i32 47}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/memstick/core/mspro_block.c", i32 482, i32 47}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/memstick/core/mspro_block.c", i32 484, i32 47}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/memstick/core/mspro_block.c", i32 486, i32 47}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memstick/core/mspro_block.c", i32 488, i32 47}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/memstick/core/mspro_block.c", i32 302, i32 48}
!198 = !{ptr @mspro_block_init_disk.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../drivers/memstick/core/mspro_block.c", i32 1213, i32 14}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/memstick/core/mspro_block.c", i32 1232, i32 32}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/memstick/core/mspro_block.c", i32 1240, i32 2}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @mspro_block_init_disk.__UNIQUE_ID_ddebug287, !203, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/memstick/core/mspro_block.c", i32 175, i32 8}
!208 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @mspro_block_disk_lock, !207, !"mspro_block_disk_lock", i1 false, i1 false}
!210 = !{ptr @mspro_mq_ops, !211, !"mspro_mq_ops", i1 false, i1 false}
!211 = !{!"../drivers/memstick/core/mspro_block.c", i32 1171, i32 32}
!212 = !{ptr @ms_block_bdops, !213, !"ms_block_bdops", i1 false, i1 false}
!213 = !{!"../drivers/memstick/core/mspro_block.c", i32 242, i32 45}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/memstick/core/mspro_block.c", i32 1332, i32 2}
!216 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @mspro_block_remove.__UNIQUE_ID_ddebug288, !215, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!218 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/memstick/core/mspro_block.c", i32 174, i32 8}
!220 = !{ptr @mspro_block_disk_idr, !219, !"mspro_block_disk_idr", i1 false, i1 false}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/memstick/core/mspro_block.c", i32 1449, i32 3}
!223 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @mspro_block_init._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @mspro_block_init._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2148344855, i64 2148344860, i64 2148344873, i64 2148344917, i64 2148344951, i64 2148344972}
!236 = !{!"branch_weights", i32 2000, i32 1}
!237 = !{i64 2148370042, i64 2148370322, i64 2148370656, i64 2148370990}
!238 = !{i64 2154343389, i64 2154347942, i64 2154343426, i64 2154343482, i64 2154343516, i64 2154343540, i64 2154343581, i64 2154343602, i64 2154343630, i64 2154343664}
!239 = !{i64 2154341441, i64 2154341933, i64 2154341478, i64 2154341534, i64 2154341568, i64 2154341592, i64 2154341633, i64 2154341654, i64 2154341682, i64 2154341716}
!240 = !{i64 2154479917, i64 2154480417, i64 2154479954, i64 2154480010, i64 2154480044, i64 2154480068, i64 2154480109, i64 2154480130, i64 2154480158, i64 2154480192}
