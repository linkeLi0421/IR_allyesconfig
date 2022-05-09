; ModuleID = '/llk/IR_all_yes/drivers/media/cec/core/cec-core.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cec_allocate_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_cec_allocate_adapter\09\09\09\09"
module asm "\09.long\09__crc_cec_allocate_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_allocate_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_allocate_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_allocate_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cec_register_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_cec_register_adapter\09\09\09\09"
module asm "\09.long\09__crc_cec_register_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_register_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_register_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_register_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cec_unregister_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_cec_unregister_adapter\09\09\09\09"
module asm "\09.long\09__crc_cec_unregister_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_unregister_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_unregister_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_unregister_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cec_delete_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_cec_delete_adapter\09\09\09\09"
module asm "\09.long\09__crc_cec_delete_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_delete_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_delete_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_delete_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_fh = type { %struct.list_head, %struct.list_head, ptr, i8, i8, %struct.wait_queue_head, %struct.mutex, [8 x %struct.list_head], [8 x i16], i32, [2 x %struct.cec_event_entry], %struct.list_head, i32 }
%struct.cec_event_entry = type { %struct.list_head, %struct.cec_event }
%struct.cec_event = type { i64, i32, i32, %union.anon.72 }
%union.anon.72 = type { [16 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__param_str_debug = internal constant [10 x i8] c"cec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cec_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @cec_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype228 = internal constant [23 x i8] c"cec.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug229 = internal constant [33 x i8] c"cec.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__param_str_debug_phys_addr = internal constant [20 x i8] c"cec.debug_phys_addr\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug_phys_addr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug_phys_addr = internal constant %struct.kernel_param { ptr @__param_str_debug_phys_addr, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug_phys_addr } }, section "__param", align 4
@__UNIQUE_ID_debug_phys_addrtype230 = internal constant [34 x i8] c"cec.parmtype=debug_phys_addr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_phys_addr231 = internal constant [54 x i8] c"cec.parm=debug_phys_addr:add CEC_CAP_PHYS_ADDR if set\00", section ".modinfo", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/cec/core/cec-core.c\00", [62 x i8] zeroinitializer }, align 32
@cec_allocate_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&adap->lock\00", [20 x i8] zeroinitializer }, align 32
@cec_allocate_adapter.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adap->kthread_waitq\00", [43 x i8] zeroinitializer }, align 32
@cec_allocate_adapter.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&adap->devnode.lock_fhs\00", [40 x i8] zeroinitializer }, align 32
@cec_allocate_adapter.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adap->devnode.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cec-%s\00", [25 x i8] zeroinitializer }, align 32
@cec_allocate_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cec-%s: kernel_thread() failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cec_allocate_adapter\00", [43 x i8] zeroinitializer }, align 32
@cec_allocate_adapter._entry_ptr = internal global ptr @cec_allocate_adapter._entry, section ".printk_index", align 4
@cec_allocate_adapter._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cec-%s: failed to allocate memory for rc_dev\0A\00", [48 x i8] zeroinitializer }, align 32
@cec_allocate_adapter._entry_ptr.13 = internal global ptr @cec_allocate_adapter._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rc-cec\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_cec_allocate_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_allocate_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_allocate_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_allocate_adapter to i32), ptr @__kstrtab_cec_allocate_adapter, ptr @__kstrtabns_cec_allocate_adapter }, section "___ksymtab_gpl+cec_allocate_adapter", align 4
@cec_register_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cec-%s: failed to prepare input device\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cec_register_adapter\00", [43 x i8] zeroinitializer }, align 32
@cec_register_adapter._entry_ptr = internal global ptr @cec_register_adapter._entry, section ".printk_index", align 4
@top_cec_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"error-inj\00", [22 x i8] zeroinitializer }, align 32
@cec_error_inj_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @cec_error_inj_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cec_error_inj_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_cec_register_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_register_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_register_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_register_adapter to i32), ptr @__kstrtab_cec_register_adapter, ptr @__kstrtabns_cec_register_adapter }, section "___ksymtab_gpl+cec_register_adapter", align 4
@__kstrtab_cec_unregister_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_unregister_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_unregister_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_unregister_adapter to i32), ptr @__kstrtab_cec_unregister_adapter, ptr @__kstrtabns_cec_unregister_adapter }, section "___ksymtab_gpl+cec_unregister_adapter", align 4
@__kstrtab_cec_delete_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_delete_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_delete_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_delete_adapter to i32), ptr @__kstrtab_cec_delete_adapter, ptr @__kstrtabns_cec_delete_adapter }, section "___ksymtab_gpl+cec_delete_adapter", align 4
@cec_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cec_dev_t = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cec__234_451_cec_devnode_init4 = internal global ptr @cec_devnode_init, section ".initcall4.init", align 4
@__exitcall_cec_devnode_exit = internal global ptr @cec_devnode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"cec.author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"cec.description=Device node registration for cec drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [36 x i8] c"cec.file=drivers/media/cec/core/cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [16 x i8] c"cec.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cec_devnode_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cec_devnode_lock, i64 52), ptr getelementptr (i8, ptr @cec_devnode_lock, i64 52) }, ptr @cec_devnode_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cec_devnode_nums = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@cec_devnode_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013could not get a free minor\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cec_devnode_register\00", [43 x i8] zeroinitializer }, align 32
@cec_devnode_register._entry_ptr = internal global ptr @cec_devnode_register._entry, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cec%d\00", [26 x i8] zeroinitializer }, align 32
@cec_devnode_fops = external dso_local constant %struct.file_operations, align 4
@cec_devnode_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: cdev_device_add failed\0A\00", [34 x i8] zeroinitializer }, align 32
@cec_devnode_register._entry_ptr.26 = internal global ptr @cec_devnode_register._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cec_devnode_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cec_devnode_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cec_devnode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014cec: unable to allocate major\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cec_devnode_init\00", [47 x i8] zeroinitializer }, align 32
@cec_devnode_init._entry_ptr = internal global ptr @cec_devnode_init._entry, section ".printk_index", align 4
@cec_devnode_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014cec: Failed to create debugfs cec dir\0A\00", [55 x i8] zeroinitializer }, align 32
@cec_devnode_init._entry_ptr.34 = internal global ptr @cec_devnode_init._entry.32, section ".printk_index", align 4
@cec_devnode_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014cec: bus_register failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cec_devnode_init._entry_ptr.37 = internal global ptr @cec_devnode_init._entry.35, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 35]
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"cec_debug\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 23, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"debug_phys_addr\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 27, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 248, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 270, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 273, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 277, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 278, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 280, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 282, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 295, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 303, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 311, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 314, i32 23 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 341, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"top_cec_dir\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 37, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 368, i32 50 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 373, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"cec_error_inj_fops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 228, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"cec_bus_type\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 84, i32 24 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"cec_dev_t\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 31, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"cec_devnode_lock\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"cec_devnode_nums\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 35, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 112, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 123, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 135, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 34, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 204, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 422, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 429, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [37 x i8] c"../drivers/media/cec/core/cec-core.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 437, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_debug229, ptr @__UNIQUE_ID_debug_phys_addr231, ptr @__UNIQUE_ID_debug_phys_addrtype230, ptr @__UNIQUE_ID_debugtype228, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_cec_devnode_exit, ptr @__initcall__kmod_cec__234_451_cec_devnode_init4, ptr @__ksymtab_cec_allocate_adapter, ptr @__ksymtab_cec_delete_adapter, ptr @__ksymtab_cec_register_adapter, ptr @__ksymtab_cec_unregister_adapter, ptr @__param_debug, ptr @__param_debug_phys_addr, ptr @cec_allocate_adapter._entry, ptr @cec_allocate_adapter._entry.11, ptr @cec_allocate_adapter._entry_ptr, ptr @cec_allocate_adapter._entry_ptr.13, ptr @cec_devnode_exit, ptr @cec_devnode_init._entry, ptr @cec_devnode_init._entry.32, ptr @cec_devnode_init._entry.35, ptr @cec_devnode_init._entry_ptr, ptr @cec_devnode_init._entry_ptr.34, ptr @cec_devnode_init._entry_ptr.37, ptr @cec_devnode_register._entry, ptr @cec_devnode_register._entry.24, ptr @cec_devnode_register._entry_ptr, ptr @cec_devnode_register._entry_ptr.26, ptr @cec_register_adapter._entry, ptr @cec_register_adapter._entry_ptr, ptr @cec_debug, ptr @debug_phys_addr, ptr @.str, ptr @cec_allocate_adapter.__key, ptr @.str.1, ptr @cec_allocate_adapter.__key.2, ptr @.str.3, ptr @cec_allocate_adapter.__key.4, ptr @.str.5, ptr @cec_allocate_adapter.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @top_cec_dir, ptr @.str.19, ptr @.str.20, ptr @cec_error_inj_fops, ptr @cec_bus_type, ptr @cec_dev_t, ptr @cec_devnode_lock, ptr @cec_devnode_nums, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_phys_addr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_allocate_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_allocate_adapter.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_allocate_adapter.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_allocate_adapter.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_allocate_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_allocate_adapter._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_register_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_cec_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_error_inj_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_dev_t to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_nums to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_devnode_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cec_get_device(ptr noundef %devnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cec_devnode, ptr %devnode, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %registered = getelementptr inbounds %struct.cec_devnode, ptr %devnode, i32 0, i32 4
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @get_device(ptr noundef %devnode) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.return_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cec_put_device(ptr noundef %devnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %devnode) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cec_allocate_adapter(ptr noundef %ops, ptr noundef %priv, ptr noundef %name, i32 noundef %caps, i8 noundef zeroext %available_las) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %caps)
  %tobool.not = icmp eq i32 %caps, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !125

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 248, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool25.not = icmp eq ptr %ops, null
  br i1 %tobool25.not, label %do.end43, label %if.end60, !prof !125

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  %0 = add i8 %available_las, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %0)
  %1 = icmp ult i8 %0, -4
  br i1 %1, label %do.end79, label %if.end96, !prof !125

do.end79:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end96:                                         ; preds = %if.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1832) #11
  %tobool98.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool98.not, label %if.end96.cleanup_crit_edge, label %if.end101

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101:                                        ; preds = %if.end96
  %name102 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 1
  %call103 = tail call i32 @strscpy(ptr noundef %name102, ptr noundef %name, i32 noundef 32) #8
  %phys_addr = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 18
  %3 = ptrtoint ptr %phys_addr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %phys_addr, align 2
  %cec_pin_is_high = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 22
  %4 = ptrtoint ptr %cec_pin_is_high to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cec_pin_is_high, align 1
  %cec_version = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 31, i32 2
  %5 = ptrtoint ptr %cec_version to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %cec_version, align 2
  %vendor_id = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 31, i32 4
  %6 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %vendor_id, align 8
  %capabilities = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %caps, ptr %capabilities, align 8
  %8 = load i8, ptr @debug_phys_addr, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool105.not = icmp eq i8 %8, 0
  br i1 %tobool105.not, label %if.end101.if.end108_crit_edge, label %if.then106

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %caps, 1
  %9 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %capabilities, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end101.if.end108_crit_edge
  %needs_hpd = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 19
  %10 = trunc i32 %caps to i8
  %11 = lshr i8 %10, 6
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %needs_hpd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %needs_hpd, align 8
  %available_log_addrs = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %available_log_addrs to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %available_las, ptr %available_log_addrs, align 4
  %sequence = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 37
  %15 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sequence, align 8
  %ops110 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 14
  %16 = ptrtoint ptr %ops110 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ops, ptr %ops110, align 8
  %priv111 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 15
  %17 = ptrtoint ptr %priv111 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %priv, ptr %priv111, align 4
  %lock = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cec_allocate_adapter.__key) #8
  %transmit_queue = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %transmit_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transmit_queue, ptr %transmit_queue, align 8
  %prev.i = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transmit_queue, ptr %prev.i, align 4
  %wait_queue = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %wait_queue to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %wait_queue, ptr %wait_queue, align 4
  %prev.i247 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %prev.i247 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wait_queue, ptr %prev.i247, align 8
  %kthread_waitq = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %kthread_waitq, ptr noundef nonnull @.str.3, ptr noundef nonnull @cec_allocate_adapter.__key.2) #8
  %fhs = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %fhs to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %fhs, ptr %fhs, align 8
  %prev.i248 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 2, i32 7, i32 1
  %23 = ptrtoint ptr %prev.i248 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fhs, ptr %prev.i248, align 4
  %lock_fhs = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 2, i32 6
  tail call void @__mutex_init(ptr noundef %lock_fhs, ptr noundef nonnull @.str.5, ptr noundef nonnull @cec_allocate_adapter.__key.4) #8
  %lock124 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @__mutex_init(ptr noundef %lock124, ptr noundef nonnull @.str.7, ptr noundef nonnull @cec_allocate_adapter.__key.6) #8
  %call127 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cec_thread_func, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %name) #8
  %cmp.i = icmp ugt ptr %call127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end138, label %if.end144

do.end138:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %kthread250 = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %kthread250 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call127, ptr %kthread250, align 8
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name) #12
  %25 = ptrtoint ptr %kthread250 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kthread250, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end144:                                        ; preds = %if.end108
  %call130 = tail call i32 @wake_up_process(ptr noundef %call127) #8
  %kthread = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call127, ptr %kthread, align 8
  %and145 = and i32 %caps, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.cleanup_crit_edge, label %if.end148

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %if.end144
  %call149 = tail call ptr @rc_allocate_device(i32 noundef 0) #8
  %rc = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call149, ptr %rc, align 4
  %tobool151.not = icmp eq ptr %call149, null
  br i1 %tobool151.not, label %do.end155, label %if.end161

do.end155:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #12
  %29 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kthread, align 8
  %call159 = tail call i32 @kthread_stop(ptr noundef %30) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end161:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %input_phys = getelementptr inbounds %struct.cec_adapter, ptr %call7.i.i, i32 0, i32 38
  %call165 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input_phys, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %name102)
  %31 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rc, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %name102, ptr %device_name, align 8
  %34 = load ptr, ptr %rc, align 4
  %input_phys172 = getelementptr inbounds %struct.rc_dev, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %input_phys172 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %input_phys, ptr %input_phys172, align 4
  %36 = load ptr, ptr %rc, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 30, ptr %input_id, align 8
  %38 = load ptr, ptr %rc, align 4
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %38, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %vendor, align 2
  %40 = load ptr, ptr %rc, align 4
  %product = getelementptr inbounds %struct.rc_dev, ptr %40, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %product, align 4
  %42 = load ptr, ptr %rc, align 4
  %version = getelementptr inbounds %struct.rc_dev, ptr %42, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %version, align 2
  %44 = load ptr, ptr %rc, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.15, ptr %driver_name, align 8
  %46 = load ptr, ptr %rc, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 4194304, ptr %allowed_protocols, align 8
  %48 = load ptr, ptr %rc, align 4
  %priv183 = getelementptr inbounds %struct.rc_dev, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %priv183 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %priv183, align 4
  %50 = load ptr, ptr %rc, align 4
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.16, ptr %map_name, align 4
  %52 = load ptr, ptr %rc, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %52, i32 0, i32 34
  %53 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 550000, ptr %timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end155, %if.end144.cleanup_crit_edge, %do.end138, %if.end96.cleanup_crit_edge, %do.end79, %do.end43, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end43 ], [ inttoptr (i32 -22 to ptr), %do.end79 ], [ %26, %do.end138 ], [ %call7.i.i, %if.end161 ], [ inttoptr (i32 -12 to ptr), %do.end155 ], [ %call7.i.i, %if.end144.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end96.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_thread_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cec_register_adapter(ptr noundef %adap, ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %adap, null
  %cmp.i = icmp ugt ptr %adap, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !125

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %driver = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %adap, align 8
  %devnode = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2
  %parent27 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %parent27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent, ptr %parent27, align 8
  %capabilities = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 16
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 8
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end25.if.end44_crit_edge, label %if.then29

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then29:                                        ; preds = %if.end25
  %rc = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 4
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc, align 4
  %parent31 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent, ptr %parent31, align 8
  %11 = load ptr, ptr %rc, align 4
  %call33 = tail call i32 @rc_register_device(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then29.if.end44_crit_edge, label %do.end38

if.then29.if.end44_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end38:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 1
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #12
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc, align 4
  tail call void @rc_free_device(ptr noundef %13) #8
  %14 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rc, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.then29.if.end44_crit_edge, %if.end25.if.end44_crit_edge
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @cec_devnode_lock, i32 noundef 0) #8
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @cec_devnode_nums, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i)
  %cmp.i101 = icmp eq i32 %call.i, 256
  br i1 %cmp.i101, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %if.then49

if.end.i:                                         ; preds = %if.end44
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef nonnull @cec_devnode_nums) #8
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #8
  %minor2.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %minor2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %minor2.i, align 8
  %bus.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 0, i32 5
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cec_bus_type, ptr %bus.i, align 8
  %19 = load i32, ptr @cec_dev_t, align 4
  %shr.i = and i32 %19, -1048576
  %or.i = or i32 %shr.i, %call.i
  %devt.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 0, i32 29
  %20 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %devt.i, align 8
  %release.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 0, i32 35
  %21 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cec_devnode_release, ptr %release.i, align 4
  %call7.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %devnode, ptr noundef nonnull @.str.23, i32 noundef %call.i) #8
  tail call void @device_initialize(ptr noundef %devnode) #8
  %cdev.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 1
  tail call void @cdev_init(ptr noundef %cdev.i, ptr noundef nonnull @cec_devnode_fops) #8
  %owner10.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 1, i32 1
  %22 = ptrtoint ptr %owner10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %owner10.i, align 8
  %23 = ptrtoint ptr %minor2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minor2.i, align 8
  %call13.i = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %cdev.i, ptr noundef nonnull @.str.23, i32 noundef %24) #8
  %registered.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %registered.i, align 8
  %call16.i = tail call i32 @cdev_device_add(ptr noundef %cdev.i, ptr noundef %devnode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i102 = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i102, label %if.end52, label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %registered.i, align 8
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.22) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @cec_devnode_lock, i32 noundef 0) #8
  %27 = ptrtoint ptr %minor2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %minor2.i, align 8
  tail call void @_clear_bit(i32 noundef %28, ptr noundef nonnull @cec_devnode_nums) #8
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #8
  br label %if.then49

if.then49:                                        ; preds = %if.then17.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %call16.i, %if.then17.i ], [ -23, %if.then.i ]
  %rc50 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 4
  %29 = ptrtoint ptr %rc50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rc50, align 4
  tail call void @rc_unregister_device(ptr noundef %30) #8
  %31 = ptrtoint ptr %rc50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rc50, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end.i
  %driver_data.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %adap, ptr %driver_data.i, align 4
  %33 = load ptr, ptr @top_cec_dir, align 4
  %tobool55.not = icmp eq ptr %33, null
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.end57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %init_name.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i103 = icmp eq ptr %35, null
  br i1 %tobool.not.i103, label %if.end.i104, label %if.end57.dev_name.exit_crit_edge

if.end57.dev_name.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i104:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %devnode, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i104, %if.end57.dev_name.exit_crit_edge
  %retval.0.i105 = phi ptr [ %37, %if.end.i104 ], [ %35, %if.end57.dev_name.exit_crit_edge ]
  %call61 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i105, ptr noundef nonnull %33) #8
  %cec_dir = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 36
  %38 = ptrtoint ptr %cec_dir to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call61, ptr %cec_dir, align 4
  tail call void @debugfs_create_devm_seqfile(ptr noundef %devnode, ptr noundef nonnull @.str.19, ptr noundef %call61, ptr noundef nonnull @cec_adap_status) #8
  %ops = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 14
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 8
  %error_inj_show = getelementptr inbounds %struct.cec_adap_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %error_inj_show to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %error_inj_show, align 4
  %tobool65.not = icmp eq ptr %42, null
  br i1 %tobool65.not, label %dev_name.exit.cleanup_crit_edge, label %lor.lhs.false

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_name.exit
  %error_inj_parse_line = getelementptr inbounds %struct.cec_adap_ops, ptr %40, i32 0, i32 8
  %43 = ptrtoint ptr %error_inj_parse_line to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %error_inj_parse_line, align 4
  %tobool67.not = icmp eq ptr %44, null
  br i1 %tobool67.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end69

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %cec_dir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cec_dir, align 4
  %call71 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 420, ptr noundef %46, ptr noundef nonnull %adap, ptr noundef nonnull @cec_error_inj_fops) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %lor.lhs.false.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then49, %do.end38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %do.end38 ], [ %retval.0.i.ph, %if.then49 ], [ 0, %if.end69 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_adap_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cec_unregister_adapter(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %adap, null
  %cmp.i = icmp ugt ptr %adap, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %rc = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc, align 4
  tail call void @rc_unregister_device(ptr noundef %1) #8
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rc, align 4
  %cec_dir = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 36
  %3 = ptrtoint ptr %cec_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cec_dir, align 4
  tail call void @debugfs_remove(ptr noundef %4) #8
  %notifier = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 34
  %5 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %notifier, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %6, ptr noundef nonnull %adap) #8
  %devnode1.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2
  %lock.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %registered.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %registered.i, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i8 = icmp eq i8 %8, 0
  br i1 %tobool.not.i8, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %unregistered.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %unregistered.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unregistered.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %registered.i, align 8
  %12 = ptrtoint ptr %unregistered.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %unregistered.i, align 1
  %lock_fhs.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock_fhs.i, i32 noundef 0) #8
  %fhs.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 7
  %13 = ptrtoint ptr %fhs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %fh.037.i = load ptr, ptr %fhs.i, align 8
  %cmp.not38.i = icmp eq ptr %fh.037.i, %fhs.i
  br i1 %cmp.not38.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %fh.039.i = phi ptr [ %fh.0.i, %for.body.i.for.body.i_crit_edge ], [ %fh.037.i, %if.end.i.for.body.i_crit_edge ]
  %wait.i = getelementptr inbounds %struct.cec_fh, ptr %fh.039.i, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %14 = ptrtoint ptr %fh.039.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %fh.0.i = load ptr, ptr %fh.039.i, align 8
  %cmp.not.i = icmp eq ptr %fh.0.i, %fhs.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock_fhs.i) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %lock14.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock14.i, i32 noundef 0) #8
  tail call void @__cec_s_phys_addr(ptr noundef %adap, i16 noundef zeroext -1, i1 noundef zeroext false) #8
  %call.i = tail call i32 @__cec_s_log_addrs(ptr noundef %adap, ptr noundef null, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %lock14.i) #8
  %cdev.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 2, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev.i, ptr noundef %devnode1.i) #8
  tail call void @put_device(ptr noundef %devnode1.i) #8
  br label %return

return:                                           ; preds = %for.end.i, %if.then.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cec_delete_adapter(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %adap, null
  %cmp.i = icmp ugt ptr %adap, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %kthread_config = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 10
  %0 = ptrtoint ptr %kthread_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kthread_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @kthread_stop(ptr noundef nonnull %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %kthread = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 12
  %2 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread, align 8
  %call5 = tail call i32 @kthread_stop(ptr noundef %3) #8
  %ops = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %adap_free = getelementptr inbounds %struct.cec_adap_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %adap_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap_free, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef nonnull %adap) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %rc = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 4
  %8 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rc, align 4
  tail call void @rc_free_device(ptr noundef %9) #8
  tail call void @kfree(ptr noundef nonnull %adap) #8
  br label %return

return:                                           ; preds = %if.end10, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cec_devnode_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @top_cec_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  tail call void @bus_unregister(ptr noundef nonnull @cec_bus_type) #8
  %1 = load i32, ptr @cec_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 256) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_devnode_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @cec_dev_t, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.15, ptr noundef null) #8
  store ptr %call2, ptr @top_cec_dir, align 4
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  store ptr null, ptr @top_cec_dir, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @bus_register(ptr noundef nonnull @cec_bus_type) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @cec_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 256) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then13, %entry.cleanup.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.36, %if.then13 ], [ @.str.30, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %if.then13 ], [ %call, %entry.cleanup.sink.split_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.36.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_devnode_release(ptr noundef %cd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cec_devnode_lock, i32 noundef 0) #8
  %minor = getelementptr inbounds %struct.cec_devnode, ptr %cd, i32 0, i32 2
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 8
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @cec_devnode_nums) #8
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #8
  %add.ptr3 = getelementptr i8, ptr %cd, i32 -40
  %tobool.not.i.i = icmp eq ptr %add.ptr3, null
  %cmp.i.i = icmp ugt ptr %add.ptr3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cec_delete_adapter.exit_crit_edge, label %if.end.i

entry.cec_delete_adapter.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cec_delete_adapter.exit

if.end.i:                                         ; preds = %entry
  %kthread_config.i = getelementptr i8, ptr %cd, i32 1412
  %2 = ptrtoint ptr %kthread_config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread_config.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @kthread_stop(ptr noundef nonnull %3) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i.if.end4.i_crit_edge
  %kthread.i = getelementptr i8, ptr %cd, i32 1472
  %4 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kthread.i, align 8
  %call5.i = tail call i32 @kthread_stop(ptr noundef %5) #8
  %ops.i = getelementptr i8, ptr %cd, i32 1528
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %adap_free.i = getelementptr inbounds %struct.cec_adap_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %adap_free.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap_free.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end10.i_crit_edge, label %if.then7.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef nonnull %add.ptr3) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end4.i.if.end10.i_crit_edge
  %rc.i = getelementptr i8, ptr %cd, i32 1380
  %10 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rc.i, align 4
  tail call void @rc_free_device(ptr noundef %11) #8
  tail call void @kfree(ptr noundef nonnull %add.ptr3) #8
  br label %cec_delete_adapter.exit

cec_delete_adapter.exit:                          ; preds = %if.end10.i, %entry.cec_delete_adapter.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_error_inj_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 4096)
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %4) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %p, align 4
  %tobool.not30 = icmp eq ptr %call, null
  br i1 %tobool.not30, label %if.end.while.end_crit_edge, label %land.rhs.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %ops = getelementptr inbounds %struct.cec_adapter, ptr %3, i32 0, i32 14
  br label %land.rhs

while.condthread-pre-split:                       ; preds = %if.end11.while.condthread-pre-split_crit_edge, %while.body.while.condthread-pre-split_crit_edge, %while.body.while.condthread-pre-split_crit_edge31
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %while.condthread-pre-split.while.end_crit_edge, label %while.condthread-pre-split.land.rhs_crit_edge

while.condthread-pre-split.land.rhs_crit_edge:    ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.condthread-pre-split.land.rhs_crit_edge, %land.rhs.lr.ph
  %8 = phi ptr [ %call, %land.rhs.lr.ph ], [ %.pr, %while.condthread-pre-split.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call4 = call ptr @skip_spaces(ptr noundef nonnull %8) #8
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %p, align 4
  %call5 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.29) #8
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call5, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.end11 [
    i8 0, label %while.body.while.condthread-pre-split_crit_edge
    i8 35, label %while.body.while.condthread-pre-split_crit_edge31
  ]

while.body.while.condthread-pre-split_crit_edge31: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.condthread-pre-split

while.body.while.condthread-pre-split_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.condthread-pre-split

if.end11:                                         ; preds = %while.body
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 8
  %error_inj_parse_line = getelementptr inbounds %struct.cec_adap_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %error_inj_parse_line to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %error_inj_parse_line, align 4
  %call12 = call zeroext i1 %18(ptr noundef %3, ptr noundef %call5) #8
  br i1 %call12, label %if.end11.while.condthread-pre-split_crit_edge, label %if.then13

if.end11.while.condthread-pre-split_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.condthread-pre-split

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.condthread-pre-split.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @kfree(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then13, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -22, %if.then13 ], [ %count, %while.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_error_inj_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cec_error_inj_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_error_inj_show(ptr noundef %sf, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ops = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %error_inj_show = getelementptr inbounds %struct.cec_adap_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %error_inj_show to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %error_inj_show, align 4
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %sf) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cec_s_log_addrs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/core/cec-core.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype228, !1, !"__UNIQUE_ID_debugtype228", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug229, !4, !"__UNIQUE_ID_debug229", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/core/cec-core.c", i32 25, i32 1}
!5 = !{ptr @__param_debug_phys_addr, !6, !"__param_debug_phys_addr", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/core/cec-core.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_debug_phys_addrtype230, !6, !"__UNIQUE_ID_debug_phys_addrtype230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug_phys_addr231, !9, !"__UNIQUE_ID_debug_phys_addr231", i1 false, i1 false}
!9 = !{!"../drivers/media/cec/core/cec-core.c", i32 29, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/core/cec-core.c", i32 248, i32 6}
!12 = !{ptr @cec_allocate_adapter.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/core/cec-core.c", i32 270, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cec_allocate_adapter.__key.2, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/media/cec/core/cec-core.c", i32 273, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cec_allocate_adapter.__key.4, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/cec/core/cec-core.c", i32 277, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cec_allocate_adapter.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/cec/core/cec-core.c", i32 278, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/cec/core/cec-core.c", i32 280, i32 18}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/cec/core/cec-core.c", i32 282, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cec_allocate_adapter._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cec_allocate_adapter._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/cec/core/cec-core.c", i32 295, i32 3}
!33 = !{ptr @cec_allocate_adapter._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cec_allocate_adapter._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/cec/core/cec-core.c", i32 303, i32 4}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/cec/core/cec-core.c", i32 311, i32 26}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/cec/core/cec-core.c", i32 314, i32 23}
!41 = !{ptr @__ksymtab_cec_allocate_adapter, !42, !"__ksymtab_cec_allocate_adapter", i1 false, i1 false}
!42 = !{!"../drivers/media/cec/core/cec-core.c", i32 319, i32 1}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/cec/core/cec-core.c", i32 341, i32 4}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cec_register_adapter._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cec_register_adapter._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/cec/core/cec-core.c", i32 368, i32 50}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/cec/core/cec-core.c", i32 373, i32 22}
!52 = !{ptr @__ksymtab_cec_register_adapter, !53, !"__ksymtab_cec_register_adapter", i1 false, i1 false}
!53 = !{!"../drivers/media/cec/core/cec-core.c", i32 378, i32 1}
!54 = !{ptr @__ksymtab_cec_unregister_adapter, !55, !"__ksymtab_cec_unregister_adapter", i1 false, i1 false}
!55 = !{!"../drivers/media/cec/core/cec-core.c", i32 396, i32 1}
!56 = !{ptr @__ksymtab_cec_delete_adapter, !57, !"__ksymtab_cec_delete_adapter", i1 false, i1 false}
!57 = !{!"../drivers/media/cec/core/cec-core.c", i32 412, i32 1}
!58 = !{ptr @__initcall__kmod_cec__234_451_cec_devnode_init4, !59, !"__initcall__kmod_cec__234_451_cec_devnode_init4", i1 false, i1 false}
!59 = !{!"../drivers/media/cec/core/cec-core.c", i32 451, i32 1}
!60 = !{ptr @__exitcall_cec_devnode_exit, !61, !"__exitcall_cec_devnode_exit", i1 false, i1 false}
!61 = !{!"../drivers/media/cec/core/cec-core.c", i32 452, i32 1}
!62 = !{ptr @__UNIQUE_ID_author235, !63, !"__UNIQUE_ID_author235", i1 false, i1 false}
!63 = !{!"../drivers/media/cec/core/cec-core.c", i32 454, i32 1}
!64 = !{ptr @__UNIQUE_ID_description236, !65, !"__UNIQUE_ID_description236", i1 false, i1 false}
!65 = !{!"../drivers/media/cec/core/cec-core.c", i32 455, i32 1}
!66 = !{ptr @__UNIQUE_ID_file237, !67, !"__UNIQUE_ID_file237", i1 false, i1 false}
!67 = !{!"../drivers/media/cec/core/cec-core.c", i32 456, i32 1}
!68 = !{ptr @__UNIQUE_ID_license238, !67, !"__UNIQUE_ID_license238", i1 false, i1 false}
!69 = !{ptr @cec_debug, !70, !"cec_debug", i1 false, i1 false}
!70 = !{!"../drivers/media/cec/core/cec-core.c", i32 23, i32 5}
!71 = !{ptr @debug_phys_addr, !72, !"debug_phys_addr", i1 false, i1 false}
!72 = !{!"../drivers/media/cec/core/cec-core.c", i32 27, i32 13}
!73 = !{ptr @cec_dev_t, !74, !"cec_dev_t", i1 false, i1 false}
!74 = !{!"../drivers/media/cec/core/cec-core.c", i32 31, i32 14}
!75 = !{ptr @top_cec_dir, !76, !"top_cec_dir", i1 false, i1 false}
!76 = !{!"../drivers/media/cec/core/cec-core.c", i32 37, i32 23}
!77 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!78 = !{ptr @__param_str_debug_phys_addr, !6, !"__param_str_debug_phys_addr", i1 false, i1 false}
!79 = !{ptr @.str.21, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/cec/core/cec-core.c", i32 112, i32 3}
!81 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cec_devnode_register._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @cec_devnode_register._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/cec/core/cec-core.c", i32 123, i32 30}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/cec/core/cec-core.c", i32 135, i32 3}
!88 = !{ptr @cec_devnode_register._entry.24, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cec_devnode_register._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/cec/core/cec-core.c", i32 34, i32 8}
!92 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cec_devnode_lock, !91, !"cec_devnode_lock", i1 false, i1 false}
!94 = !{ptr @cec_devnode_nums, !95, !"cec_devnode_nums", i1 false, i1 false}
!95 = !{!"../drivers/media/cec/core/cec-core.c", i32 35, i32 8}
!96 = !{ptr @cec_error_inj_fops, !97, !"cec_error_inj_fops", i1 false, i1 false}
!97 = !{!"../drivers/media/cec/core/cec-core.c", i32 228, i32 37}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/cec/core/cec-core.c", i32 204, i32 21}
!100 = !{ptr @cec_bus_type, !101, !"cec_bus_type", i1 false, i1 false}
!101 = !{!"../drivers/media/cec/core/cec-core.c", i32 84, i32 24}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/cec/core/cec-core.c", i32 422, i32 3}
!104 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cec_devnode_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @cec_devnode_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/cec/core/cec-core.c", i32 429, i32 3}
!109 = !{ptr @cec_devnode_init._entry.32, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cec_devnode_init._entry_ptr.34, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/cec/core/cec-core.c", i32 437, i32 3}
!113 = !{ptr @cec_devnode_init._entry.35, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cec_devnode_init._entry_ptr.37, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{!"branch_weights", i32 1, i32 2000}
