; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdoops.c_pt.bc'
source_filename = "../drivers/mtd/mtdoops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.mtdoops_context = type { %struct.kmsg_dumper, i32, %struct.work_struct, %struct.work_struct, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.kmsg_dumper = type { %struct.list_head, ptr, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtd_notifier = type { ptr, ptr, %struct.list_head }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.kmsg_dump_iter = type { i64, i64 }
%struct.erase_info = type { i64, i64, i64 }

@__param_str_record_size = internal constant [20 x i8] c"mtdoops.record_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@record_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_record_size = internal constant %struct.kernel_param { ptr @__param_str_record_size, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @record_size } }, section "__param", align 4
@__UNIQUE_ID_record_sizetype189 = internal constant [35 x i8] c"mtdoops.parmtype=record_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_record_size190 = internal constant [80 x i8] c"mtdoops.parm=record_size:record size for MTD OOPS pages in bytes (default 4096)\00", section ".modinfo", align 1
@__param_str_mtddev = internal constant [15 x i8] c"mtdoops.mtddev\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_mtddev = internal constant %struct.kparam_string { i32 80, ptr @mtddev }, align 4
@__param_mtddev = internal constant %struct.kernel_param { ptr @__param_str_mtddev, ptr null, ptr @param_ops_string, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @__param_string_mtddev } }, section "__param", align 4
@__UNIQUE_ID_mtddevtype191 = internal constant [31 x i8] c"mtdoops.parmtype=mtddev:string\00", section ".modinfo", align 1
@__UNIQUE_ID_mtddev192 = internal constant [66 x i8] c"mtdoops.parm=mtddev:name or index number of the MTD device to use\00", section ".modinfo", align 1
@__param_str_dump_oops = internal constant [18 x i8] c"mtdoops.dump_oops\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dump_oops = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_dump_oops = internal constant %struct.kernel_param { ptr @__param_str_dump_oops, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @dump_oops } }, section "__param", align 4
@__UNIQUE_ID_dump_oopstype193 = internal constant [31 x i8] c"mtdoops.parmtype=dump_oops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_oops194 = internal constant [82 x i8] c"mtdoops.parm=dump_oops:set to 1 to dump oopses, 0 to only dump panics (default 1)\00", section ".modinfo", align 1
@oops_cxt = internal global { %struct.mtdoops_context, [52 x i8] } zeroinitializer, align 32
@mtdoops_notifier = internal global { %struct.mtd_notifier, [16 x i8] } { %struct.mtd_notifier { ptr @mtdoops_notify_add, ptr @mtdoops_notify_remove, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_mtdoops__195_426_mtdoops_init6 = internal global ptr @mtdoops_init, section ".initcall6.init", align 4
@__exitcall_mtdoops_exit = internal global ptr @mtdoops_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file196 = internal constant [33 x i8] c"mtdoops.file=drivers/mtd/mtdoops\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [20 x i8] c"mtdoops.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [55 x i8] c"mtdoops.author=Richard Purdie <rpurdie@openedhand.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [57 x i8] c"mtdoops.description=MTD Oops/Panic console logger/driver\00", section ".modinfo", align 1
@mtddev = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@mtdoops_notify_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013mtdoops: MTD partition %d not big enough for mtdoops\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtdoops_notify_add\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/mtdoops.c\00", [42 x i8] zeroinitializer }, align 32
@mtdoops_notify_add._entry_ptr = internal global ptr @mtdoops_notify_add._entry, section ".printk_index", align 4
@mtdoops_notify_add._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013mtdoops: eraseblock size of MTD partition %d too small\0A\00", [38 x i8] zeroinitializer }, align 32
@mtdoops_notify_add._entry_ptr.5 = internal global ptr @mtdoops_notify_add._entry.3, section ".printk_index", align 4
@mtdoops_notify_add._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013mtdoops: mtd%d is too large (limit is %d MiB)\0A\00", [47 x i8] zeroinitializer }, align 32
@mtdoops_notify_add._entry_ptr.8 = internal global ptr @mtdoops_notify_add._entry.6, section ".printk_index", align 4
@mtdoops_notify_add._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013mtdoops: could not allocate page array\0A\00", [54 x i8] zeroinitializer }, align 32
@mtdoops_notify_add._entry_ptr.11 = internal global ptr @mtdoops_notify_add._entry.9, section ".printk_index", align 4
@mtdoops_notify_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013mtdoops: registering kmsg dumper failed, error %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mtdoops_notify_add._entry_ptr.14 = internal global ptr @mtdoops_notify_add._entry.12, section ".printk_index", align 4
@mtdoops_notify_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mtdoops: Attached to MTD device %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mtdoops_notify_add._entry_ptr.17 = internal global ptr @mtdoops_notify_add._entry.15, section ".printk_index", align 4
@mtdoops_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013mtdoops: Cannot write from panic without panic_write\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdoops_write\00", [18 x i8] zeroinitializer }, align 32
@mtdoops_write._entry_ptr = internal global ptr @mtdoops_write._entry, section ".printk_index", align 4
@mtdoops_write._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013mtdoops: write failure at %ld (%td of %ld written), error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtdoops_write._entry_ptr.22 = internal global ptr @mtdoops_write._entry.20, section ".printk_index", align 4
@mtdoops_inc_counter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017mtdoops: ready %d, %d (no erase)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtdoops_inc_counter\00", [44 x i8] zeroinitializer }, align 32
@mtdoops_inc_counter._entry_ptr = internal global ptr @mtdoops_inc_counter._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@find_next_position._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013mtdoops: read failure at %ld (%td of %d read), err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"find_next_position\00", [45 x i8] zeroinitializer }, align 32
@find_next_position._entry_ptr = internal global ptr @find_next_position._entry, section ".printk_index", align 4
@mtdoops_notify_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014mtdoops: could not unregister kmsg_dumper\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtdoops_notify_remove\00", [42 x i8] zeroinitializer }, align 32
@mtdoops_notify_remove._entry_ptr = internal global ptr @mtdoops_notify_remove._entry, section ".printk_index", align 4
@mtdoops_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013mtdoops: mtd device (mtddev=name/number) must be supplied\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtdoops_init\00", [19 x i8] zeroinitializer }, align 32
@mtdoops_init._entry_ptr = internal global ptr @mtdoops_init._entry, section ".printk_index", align 4
@mtdoops_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mtdoops: record_size must be a multiple of 4096\0A\00", [45 x i8] zeroinitializer }, align 32
@mtdoops_init._entry_ptr.33 = internal global ptr @mtdoops_init._entry.31, section ".printk_index", align 4
@mtdoops_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013mtdoops: record_size must be over 4096 bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@mtdoops_init._entry_ptr.36 = internal global ptr @mtdoops_init._entry.34, section ".printk_index", align 4
@mtdoops_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&cxt->work_erase)\00", [60 x i8] zeroinitializer }, align 32
@mtdoops_init.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&cxt->work_write)\00", [60 x i8] zeroinitializer }, align 32
@mtdoops_workfunc_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014mtdoops: bad block at %08lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtdoops_workfunc_erase\00", [41 x i8] zeroinitializer }, align 32
@mtdoops_workfunc_erase._entry_ptr = internal global ptr @mtdoops_workfunc_erase._entry, section ".printk_index", align 4
@mtdoops_workfunc_erase._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013mtdoops: all blocks bad!\0A\00", [36 x i8] zeroinitializer }, align 32
@mtdoops_workfunc_erase._entry_ptr.44 = internal global ptr @mtdoops_workfunc_erase._entry.42, section ".printk_index", align 4
@mtdoops_workfunc_erase._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mtdoops: mtd_block_isbad failed, aborting\0A\00", [51 x i8] zeroinitializer }, align 32
@mtdoops_workfunc_erase._entry_ptr.47 = internal global ptr @mtdoops_workfunc_erase._entry.45, section ".printk_index", align 4
@mtdoops_workfunc_erase._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017mtdoops: ready %d, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtdoops_workfunc_erase._entry_ptr.50 = internal global ptr @mtdoops_workfunc_erase._entry.48, section ".printk_index", align 4
@mtdoops_workfunc_erase._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013mtdoops: block_markbad failed, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@mtdoops_workfunc_erase._entry_ptr.53 = internal global ptr @mtdoops_workfunc_erase._entry.51, section ".printk_index", align 4
@mtdoops_erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014mtdoops: erase of region [0x%llx, 0x%llx] on \22%s\22 failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtdoops_erase_block\00", [44 x i8] zeroinitializer }, align 32
@mtdoops_erase_block._entry_ptr = internal global ptr @mtdoops_erase_block._entry, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"record_size\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 28, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"dump_oops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 38, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [9 x i8] c"oops_cxt\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 57, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"mtdoops_notifier\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 373, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"mtddev\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 33, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 316, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 321, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 326, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 337, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 345, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 354, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 196, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 204, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 116, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 238, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 365, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 385, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 389, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 393, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 409, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 410, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 141, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 148, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 154, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 162, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 170, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [25 x i8] c"../drivers/mtd/mtdoops.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 89, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_dump_oops194, ptr @__UNIQUE_ID_dump_oopstype193, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__UNIQUE_ID_mtddev192, ptr @__UNIQUE_ID_mtddevtype191, ptr @__UNIQUE_ID_record_size190, ptr @__UNIQUE_ID_record_sizetype189, ptr @__exitcall_mtdoops_exit, ptr @__initcall__kmod_mtdoops__195_426_mtdoops_init6, ptr @__param_dump_oops, ptr @__param_mtddev, ptr @__param_record_size, ptr @find_next_position._entry, ptr @find_next_position._entry_ptr, ptr @mtdoops_erase_block._entry, ptr @mtdoops_erase_block._entry_ptr, ptr @mtdoops_exit, ptr @mtdoops_inc_counter._entry, ptr @mtdoops_inc_counter._entry_ptr, ptr @mtdoops_init._entry, ptr @mtdoops_init._entry.31, ptr @mtdoops_init._entry.34, ptr @mtdoops_init._entry_ptr, ptr @mtdoops_init._entry_ptr.33, ptr @mtdoops_init._entry_ptr.36, ptr @mtdoops_notify_add._entry, ptr @mtdoops_notify_add._entry.12, ptr @mtdoops_notify_add._entry.15, ptr @mtdoops_notify_add._entry.3, ptr @mtdoops_notify_add._entry.6, ptr @mtdoops_notify_add._entry.9, ptr @mtdoops_notify_add._entry_ptr, ptr @mtdoops_notify_add._entry_ptr.11, ptr @mtdoops_notify_add._entry_ptr.14, ptr @mtdoops_notify_add._entry_ptr.17, ptr @mtdoops_notify_add._entry_ptr.5, ptr @mtdoops_notify_add._entry_ptr.8, ptr @mtdoops_notify_remove._entry, ptr @mtdoops_notify_remove._entry_ptr, ptr @mtdoops_workfunc_erase._entry, ptr @mtdoops_workfunc_erase._entry.42, ptr @mtdoops_workfunc_erase._entry.45, ptr @mtdoops_workfunc_erase._entry.48, ptr @mtdoops_workfunc_erase._entry.51, ptr @mtdoops_workfunc_erase._entry_ptr, ptr @mtdoops_workfunc_erase._entry_ptr.44, ptr @mtdoops_workfunc_erase._entry_ptr.47, ptr @mtdoops_workfunc_erase._entry_ptr.50, ptr @mtdoops_workfunc_erase._entry_ptr.53, ptr @mtdoops_write._entry, ptr @mtdoops_write._entry.20, ptr @mtdoops_write._entry_ptr, ptr @mtdoops_write._entry_ptr.22, ptr @record_size, ptr @dump_oops, ptr @oops_cxt, ptr @mtdoops_notifier, ptr @mtddev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @mtdoops_init.__key, ptr @.str.37, ptr @mtdoops_init.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @record_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_oops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oops_cxt to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notifier to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtddev to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_add._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_add._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_add._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_write._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_inc_counter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_next_position._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_notify_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_init.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_workfunc_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_workfunc_erase._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_workfunc_erase._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_workfunc_erase._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_workfunc_erase._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdoops_erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtdoops_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_mtd_user(ptr noundef nonnull @mtdoops_notifier) #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  tail call void @vfree(ptr noundef %0) #8
  %1 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_mtd_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdoops_init() #0 section ".init.text" align 64 {
entry:
  %endp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp) #8
  %0 = ptrtoint ptr %endp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp, align 4, !annotation !144
  %char0 = load i8, ptr @mtddev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @record_size, align 4
  %and = and i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp10 = icmp ult i32 %1, 4096
  br i1 %cmp10, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  store i32 -1, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  %call19 = call i32 @simple_strtoul(ptr noundef nonnull @mtddev, ptr noundef nonnull %endp, i32 noundef 0) #8
  %2 = ptrtoint ptr %endp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %endp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp20 = icmp eq i8 %5, 0
  br i1 %cmp20, label %if.then22, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %call19, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17.if.end24_crit_edge
  %6 = load i32, ptr @record_size, align 4
  %call25 = call noalias ptr @vmalloc(i32 noundef %6) #12
  store ptr %call25, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 10), align 4
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @record_size, align 4
  %8 = call ptr @memset(ptr %call25, i32 255, i32 %7)
  store i32 0, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 9), align 4
  call void @__init_work(ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2), i32 noundef 0) #8
  store i32 -64, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2), align 4
  call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2, i32 3), ptr noundef nonnull @.str.37, ptr noundef nonnull @mtdoops_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  store volatile ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2, i32 1), ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2, i32 1), align 4
  store ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2, i32 1), ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2, i32 1, i32 1), align 4
  store ptr @mtdoops_workfunc_erase, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2, i32 2), align 4
  call void @__init_work(ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3), i32 noundef 0) #8
  store i32 -64, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3, i32 3), ptr noundef nonnull @.str.39, ptr noundef nonnull @mtdoops_init.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  store volatile ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3, i32 1, i32 1), align 4
  store ptr @mtdoops_workfunc_write, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3, i32 2), align 4
  call void @register_mtd_user(ptr noundef nonnull @mtdoops_notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ -22, %do.end14 ], [ 0, %if.end28 ], [ -12, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdoops_notify_add(ptr noundef %mtd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size, align 8
  %2 = load i32, ptr @record_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %cmp164.i.i = icmp ult i64 %1, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !145

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %1 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %2
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %1) #13, !srcloc !146
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull @mtddev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %div_u64.exit.if.end_crit_edge

div_u64.exit.if.end_crit_edge:                    ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  store i32 %7, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %div_u64.exit.if.end_crit_edge
  %index2 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %8 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index2, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp.not = icmp ne i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5 = icmp slt i32 %10, 0
  %or.cond = or i1 %cmp.not, %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %13 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize, align 8
  %mul = shl i32 %14, 1
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv)
  %cmp9 = icmp ult i64 %12, %conv
  br i1 %cmp9, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %2)
  %cmp16 = icmp ult i32 %14, %2
  br i1 %cmp16, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %12)
  %cmp27 = icmp ugt i64 %12, 8388608
  br i1 %cmp27, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %9, i32 noundef 8) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %sub = add i64 %dividend.addr.0.i.i, 31
  %div103 = lshr i64 %sub, 5
  %conv37 = trunc i64 %div103 to i32
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv37, i32 4) #8
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %retval.0.i = select i1 %16, i32 -1, i32 %17
  %call39 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #12
  store ptr %call39, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  store i32 2, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 0, i32 2), align 4
  store ptr @mtdoops_do_dump, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 0, i32 1), align 4
  %call52 = tail call i32 @kmsg_dump_register(ptr noundef nonnull @oops_cxt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end62, label %do.end57

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call52) #11
  %18 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  tail call void @vfree(ptr noundef %18) #8
  store ptr null, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %mtd, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size, align 8
  %conv65 = trunc i64 %20 to i32
  %21 = load i32, ptr @record_size, align 4
  %div66 = udiv i32 %conv65, %21
  store i32 %div66, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  tail call fastcc void @find_next_position()
  %22 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index2, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end57, %do.end45, %do.end32, %do.end21, %do.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdoops_notify_remove(ptr nocapture noundef readonly %mtd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp ne i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp slt i32 %2, 0
  %or.cond = or i1 %cmp.not, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @kmsg_dump_unregister(ptr noundef nonnull @oops_cxt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  store ptr null, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %call8 = tail call zeroext i1 @flush_work(ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2)) #8
  %call9 = tail call zeroext i1 @flush_work(ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 3)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdoops_do_dump(ptr noundef %dumper, i32 noundef %reason) #3 align 64 {
entry:
  %iter = alloca %struct.kmsg_dump_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reason)
  %cmp = icmp eq i32 %reason, 2
  %0 = call ptr @memset(ptr %iter, i32 255, i32 16)
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @dump_oops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @kmsg_dump_rewind(ptr noundef nonnull %iter) #8
  %oops_buf_busy = getelementptr inbounds %struct.mtdoops_context, ptr %dumper, i32 0, i32 9
  %call = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %oops_buf_busy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %oops_buf = getelementptr inbounds %struct.mtdoops_context, ptr %dumper, i32 0, i32 10
  %2 = ptrtoint ptr %oops_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oops_buf, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 8
  %4 = load i32, ptr @record_size, align 4
  %sub = add i32 %4, -8
  %call5 = call zeroext i1 @kmsg_dump_get_buffer(ptr noundef nonnull %iter, i1 noundef zeroext true, ptr noundef %add.ptr4, i32 noundef %sub, ptr noundef null) #8
  call void @_clear_bit(i32 noundef 0, ptr noundef %oops_buf_busy) #8
  br i1 %cmp, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mtdoops_write(ptr noundef %dumper, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %work_write = getelementptr inbounds %struct.mtdoops_context, ptr %dumper, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work_write) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmsg_dump_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @find_next_position() unnamed_addr #3 align 64 {
entry:
  %count = alloca [2 x i32], align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 4), align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #8
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %count, align 4, !annotation !144
  %2 = getelementptr inbounds [2 x i32], ptr %count, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %4 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %retlen, align 4, !annotation !144
  %5 = load i32, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp sgt i32 %5, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %maxcount.018 = phi i32 [ %maxcount.1, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %maxpos.015 = phi i32 [ %maxpos.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %page.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = load i32, ptr @record_size, align 4
  %mul = mul i32 %6, %page.011
  %conv = zext i32 %mul to i64
  %call = call i32 @mtd_block_isbad(ptr noundef %0, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  call void @_set_bit(i32 noundef %page.011, ptr noundef %7) #8
  %8 = load i32, ptr @record_size, align 4
  %mul2 = mul i32 %8, %page.011
  %conv3 = zext i32 %mul2 to i64
  %call4 = call i32 @mtd_read(ptr noundef %0, i64 noundef %conv3, i32 noundef 8, ptr noundef nonnull %retlen, ptr noundef nonnull %count) #8
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp5.not = icmp eq i32 %10, 8
  br i1 %cmp5.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp7 = icmp sgt i32 %call4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -117
  %or.cond9 = or i1 %cmp7, %cmp.i.not
  br i1 %or.cond9, label %if.end14, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %11 = load i32, ptr @record_size, align 4
  %mul12 = mul i32 %11, %page.011
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %mul12, i32 noundef %10, i32 noundef 8, i32 noundef %call4) #11
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp16 = icmp eq i32 %13, -1
  br i1 %cmp16, label %land.lhs.true18, label %if.end14.lor.lhs.false27_crit_edge

if.end14.lor.lhs.false27_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false27

land.lhs.true18:                                  ; preds = %if.end14
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp20 = icmp eq i32 %15, -1
  br i1 %cmp20, label %if.end23, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23:                                         ; preds = %land.lhs.true18
  %16 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  call void @_clear_bit(i32 noundef %page.011, ptr noundef %16) #8
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp25 = icmp eq i32 %.pr, -1
  br i1 %cmp25, label %if.end23.for.inc_crit_edge, label %if.end23.lor.lhs.false27_crit_edge

if.end23.lor.lhs.false27_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false27

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false27:                                  ; preds = %if.end23.lor.lhs.false27_crit_edge, %if.end14.lor.lhs.false27_crit_edge
  %18 = phi i32 [ %.pr, %if.end23.lor.lhs.false27_crit_edge ], [ %13, %if.end14.lor.lhs.false27_crit_edge ]
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1560304896, i32 %20)
  %cmp29.not = icmp eq i32 %20, 1560304896
  br i1 %cmp29.not, label %if.end32, label %lor.lhs.false27.for.inc_crit_edge

lor.lhs.false27.for.inc_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end32:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %maxcount.018)
  %cmp33 = icmp eq i32 %maxcount.018, -1
  br i1 %cmp33, label %if.end32.for.inc_crit_edge, label %if.else

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %18)
  %cmp38 = icmp ult i32 %18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %maxcount.018)
  %cmp41 = icmp ugt i32 %maxcount.018, -1073741824
  %or.cond = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.else.for.inc_crit_edge, label %if.else45

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %maxcount.018)
  %cmp47 = icmp ugt i32 %18, %maxcount.018
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %18)
  %cmp51 = icmp ult i32 %18, -1073741824
  %or.cond2 = and i1 %cmp47, %cmp51
  br i1 %or.cond2, label %if.else45.for.inc_crit_edge, label %if.else55

if.else45.for.inc_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else55:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %18)
  %cmp61 = icmp ugt i32 %18, -1073741824
  %or.cond3 = and i1 %cmp47, %cmp61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %maxcount.018)
  %cmp64 = icmp ugt i32 %maxcount.018, -2147483648
  %or.cond4 = and i1 %cmp64, %or.cond3
  %spec.select = select i1 %or.cond4, i32 %page.011, i32 %maxpos.015
  %spec.select5 = select i1 %or.cond4, i32 %18, i32 %maxcount.018
  br label %for.inc

for.inc:                                          ; preds = %if.else55, %if.else45.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %lor.lhs.false27.for.inc_crit_edge, %if.end23.for.inc_crit_edge, %land.lhs.true18.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %maxpos.1 = phi i32 [ %maxpos.015, %for.body.for.inc_crit_edge ], [ %maxpos.015, %do.end ], [ %maxpos.015, %if.end23.for.inc_crit_edge ], [ %maxpos.015, %lor.lhs.false27.for.inc_crit_edge ], [ %page.011, %if.end32.for.inc_crit_edge ], [ %page.011, %if.else.for.inc_crit_edge ], [ %page.011, %if.else45.for.inc_crit_edge ], [ %spec.select, %if.else55 ], [ %maxpos.015, %land.lhs.true18.for.inc_crit_edge ]
  %maxcount.1 = phi i32 [ %maxcount.018, %for.body.for.inc_crit_edge ], [ %maxcount.018, %do.end ], [ %maxcount.018, %if.end23.for.inc_crit_edge ], [ %maxcount.018, %lor.lhs.false27.for.inc_crit_edge ], [ %18, %if.end32.for.inc_crit_edge ], [ %18, %if.else.for.inc_crit_edge ], [ %18, %if.else45.for.inc_crit_edge ], [ %spec.select5, %if.else55 ], [ %maxcount.018, %land.lhs.true18.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %page.011, 1
  %21 = load i32, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %maxpos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %maxpos.1, %for.inc.for.end_crit_edge ]
  %maxcount.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %maxcount.1, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %21, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %maxcount.0.lcssa)
  %cmp72 = icmp eq i32 %maxcount.0.lcssa, -1
  %sub = add i32 %.lcssa, -1
  %storemerge1 = select i1 %cmp72, i32 %sub, i32 %maxpos.0.lcssa
  %inc.i = add i32 %storemerge1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %.lcssa)
  %cmp.not.i = icmp slt i32 %inc.i, %.lcssa
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  store i32 %spec.store.select.i, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %maxcount.0.lcssa.op = add nuw i32 %maxcount.0.lcssa, 1
  %inc3.i = select i1 %cmp72, i32 1, i32 %maxcount.0.lcssa.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc3.i)
  %cmp5.i = icmp eq i32 %inc3.i, -1
  %storemerge.i = select i1 %cmp5.i, i32 0, i32 %inc3.i
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 7), align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 8), align 4
  %div3.i.i.i = lshr i32 %spec.store.select.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %22, i32 %div3.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %spec.store.select.i, 31
  %25 = shl nuw i32 1, %and.i.i.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef getelementptr inbounds (%struct.mtdoops_context, ptr @oops_cxt, i32 0, i32 2)) #8
  br label %mtdoops_inc_counter.exit

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %spec.store.select.i, i32 noundef %storemerge.i) #11
  br label %mtdoops_inc_counter.exit

mtdoops_inc_counter.exit:                         ; preds = %do.end.i, %if.then10.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump_rewind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kmsg_dump_get_buffer(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtdoops_write(ptr noundef %cxt, i32 noundef %panic) unnamed_addr #3 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 4
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retlen, align 4, !annotation !144
  %oops_buf_busy = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 9
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %oops_buf_busy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %oops_buf = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 10
  %3 = ptrtoint ptr %oops_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oops_buf, align 4
  %nextcount = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 7
  %5 = ptrtoint ptr %nextcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nextcount, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %4, align 4
  %arrayidx2 = getelementptr i32, ptr %4, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1560304896, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %panic)
  %tobool3.not = icmp eq i32 %panic, 0
  %nextpage11 = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 6
  %9 = ptrtoint ptr %nextpage11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nextpage11, align 4
  %11 = load i32, ptr @record_size, align 4
  %mul12 = mul i32 %11, %10
  %conv13 = zext i32 %mul12 to i64
  %12 = ptrtoint ptr %oops_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oops_buf, align 4
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = call i32 @mtd_panic_write(ptr noundef %1, i64 noundef %conv13, i32 noundef %11, ptr noundef nonnull %retlen, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call6)
  %cmp = icmp eq i32 %call6, -95
  br i1 %cmp, label %do.end, label %if.then4.if.end16_crit_edge

if.then4.if.end16_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 @mtd_write(ptr noundef %1, i64 noundef %conv13, i32 noundef %11, ptr noundef nonnull %retlen, ptr noundef %13) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then4.if.end16_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then4.if.end16_crit_edge ], [ %call15, %if.else ]
  %14 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retlen, align 4
  %16 = load i32, ptr @record_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp17.not = icmp ne i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp19 = icmp slt i32 %ret.0, 0
  %or.cond = select i1 %cmp17.not, i1 true, i1 %cmp19
  br i1 %or.cond, label %do.end24, label %if.end16.if.end29_crit_edge

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %nextpage26 = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 6
  %17 = ptrtoint ptr %nextpage26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nextpage26, align 4
  %mul27 = mul i32 %18, %16
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %mul27, i32 noundef %15, i32 noundef %16, i32 noundef %ret.0) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end24, %if.end16.if.end29_crit_edge
  %nextpage30 = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 6
  %19 = ptrtoint ptr %nextpage30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nextpage30, align 4
  %oops_page_used.i = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 8
  %21 = ptrtoint ptr %oops_page_used.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %oops_page_used.i, align 4
  call void @_set_bit(i32 noundef %20, ptr noundef %22) #8
  %23 = ptrtoint ptr %oops_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oops_buf, align 4
  %25 = load i32, ptr @record_size, align 4
  %26 = call ptr @memset(ptr %24, i32 255, i32 %25)
  %27 = ptrtoint ptr %nextpage30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nextpage30, align 4
  %inc.i = add i32 %28, 1
  %oops_pages.i = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 5
  %29 = ptrtoint ptr %oops_pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %oops_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %30)
  %cmp.not.i = icmp slt i32 %inc.i, %30
  %spec.store.select.i = select i1 %cmp.not.i, i32 %inc.i, i32 0
  %31 = ptrtoint ptr %nextpage30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select.i, ptr %nextpage30, align 4
  %32 = ptrtoint ptr %nextcount to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nextcount, align 4
  %inc3.i = add i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc3.i)
  %cmp5.i = icmp eq i32 %inc3.i, -1
  %storemerge.i = select i1 %cmp5.i, i32 0, i32 %inc3.i
  %34 = ptrtoint ptr %nextcount to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge.i, ptr %nextcount, align 4
  %35 = ptrtoint ptr %oops_page_used.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oops_page_used.i, align 4
  %div3.i.i.i = lshr i32 %spec.store.select.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %36, i32 %div3.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %spec.store.select.i, 31
  %39 = shl nuw i32 1, %and.i.i.i
  %40 = and i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %work_erase.i = getelementptr inbounds %struct.mtdoops_context, ptr %cxt, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work_erase.i) #8
  br label %out

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %spec.store.select.i, i32 noundef %storemerge.i) #11
  br label %out

out:                                              ; preds = %do.end.i, %if.then10.i, %do.end
  call void @_clear_bit(i32 noundef 0, ptr noundef %oops_buf_busy) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_panic_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmsg_dump_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdoops_workfunc_erase(ptr nocapture noundef %work) #3 align 64 {
entry:
  %erase.i = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mtd1 = getelementptr i8, ptr %work, i32 88
  %0 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %nextpage = getelementptr i8, ptr %work, i32 96
  %2 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nextpage, align 4
  %4 = load i32, ptr @record_size, align 4
  %mul = mul i32 %4, %3
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize, align 8
  %rem = urem i32 %mul, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %6, %rem
  %div = udiv i32 %sub, %4
  %add = add i32 %div, %3
  %oops_pages = getelementptr i8, ptr %work, i32 92
  %7 = ptrtoint ptr %oops_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oops_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp7.not = icmp slt i32 %add, %8
  %spec.store.select = select i1 %cmp7.not, i32 %add, i32 0
  %9 = ptrtoint ptr %nextpage to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %nextpage, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then2, %if.end.if.end11_crit_edge
  %10 = getelementptr inbounds %struct.erase_info, ptr %erase.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %erase.i, i32 16
  %oops_page_used.i.i = getelementptr i8, ptr %work, i32 104
  %oops_pages26 = getelementptr i8, ptr %work, i32 92
  br label %while.cond

while.cond:                                       ; preds = %do.end.while.cond_crit_edge, %if.end11
  %i.0 = phi i32 [ 0, %if.end11 ], [ %inc, %do.end.while.cond_crit_edge ]
  %12 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nextpage, align 4
  %14 = load i32, ptr @record_size, align 4
  %mul13 = mul i32 %14, %13
  %conv = zext i32 %mul13 to i64
  %call = call i32 @mtd_block_isbad(ptr noundef nonnull %1, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp sgt i32 %call, 0
  br i1 %cmp14, label %while.cond.do.end_crit_edge, label %while.end

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.then74.do.end_crit_edge, %if.end71.do.end_crit_edge, %while.cond.do.end_crit_edge
  %15 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nextpage, align 4
  %17 = load i32, ptr @record_size, align 4
  %mul18 = mul i32 %17, %16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %mul18) #11
  %inc = add i32 %i.0, 1
  %18 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nextpage, align 4
  %20 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erasesize, align 8
  %22 = load i32, ptr @record_size, align 4
  %div22 = udiv i32 %21, %22
  %add23 = add i32 %div22, %19
  %23 = ptrtoint ptr %oops_pages26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oops_pages26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %24)
  %cmp27.not = icmp slt i32 %add23, %24
  %spec.store.select129 = select i1 %cmp27.not, i32 %add23, i32 0
  %25 = ptrtoint ptr %nextpage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select129, ptr %nextpage, align 4
  %26 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize, align 8
  %28 = load i32, ptr @record_size, align 4
  %div34 = udiv i32 %27, %28
  %div35 = udiv i32 %24, %div34
  %cmp36 = icmp eq i32 %inc, %div35
  br i1 %cmp36, label %do.end41, label %do.end.while.cond_crit_edge

do.end.while.cond_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #11
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp45 = icmp slt i32 %call, 0
  br i1 %cmp45, label %do.end50, label %for.body

do.end50:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #11
  br label %cleanup

for.body:                                         ; preds = %while.end
  %29 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nextpage, align 4
  %31 = load i32, ptr @record_size, align 4
  %mul59 = mul i32 %31, %30
  %32 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mtd1, align 4
  %conv.i = sext i32 %mul59 to i64
  %erasesize_shift.i.i = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %erasesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %erasesize_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i.i = zext i32 %35 to i64
  %shr.i.i = lshr i64 %conv.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mtd_div_by_eb.exit.i

if.end.i.i:                                       ; preds = %for.body
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erasesize.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul59)
  %cmp172.i.i = icmp sgt i32 %mul59, -1
  br i1 %cmp172.i.i, label %if.then176.i.i, label %if.else182.i.i, !prof !145

if.then176.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div180.i.i = udiv i32 %mul59, %37
  br label %mtd_div_by_eb.exit.i

if.else182.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %conv.i) #13, !srcloc !146
  %asmresult1.i.i.i = extractvalue { i64, i64 } %38, 1
  %extract.t297.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %mtd_div_by_eb.exit.i

mtd_div_by_eb.exit.i:                             ; preds = %if.else182.i.i, %if.then176.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %div180.i.i, %if.then176.i.i ], [ %extract.t297.i.i, %if.else182.i.i ]
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 3
  %39 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %erasesize.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i) #8
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %11, align 8
  %42 = ptrtoint ptr %erase.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv.i, ptr %erase.i, align 8
  %43 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %erasesize.i, align 8
  %conv6.i = zext i32 %44 to i64
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv6.i, ptr %10, align 8
  %call7.i = call i32 @mtd_erase(ptr noundef %33, ptr noundef nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %mtd_div_by_eb.exit.i.for.cond.preheader.i_crit_edge, label %mtdoops_erase_block.exit

mtd_div_by_eb.exit.i.for.cond.preheader.i_crit_edge: ; preds = %mtd_div_by_eb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %mtd_div_by_eb.exit.i.2.for.cond.preheader.i_crit_edge, %mtd_div_by_eb.exit.i.1.for.cond.preheader.i_crit_edge, %mtd_div_by_eb.exit.i.for.cond.preheader.i_crit_edge
  %retval.0.i.i.lcssa = phi i32 [ %retval.0.i.i, %mtd_div_by_eb.exit.i.for.cond.preheader.i_crit_edge ], [ %retval.0.i.i.1, %mtd_div_by_eb.exit.i.1.for.cond.preheader.i_crit_edge ], [ %retval.0.i.i.2, %mtd_div_by_eb.exit.i.2.for.cond.preheader.i_crit_edge ]
  %.lcssa152 = phi i32 [ %40, %mtd_div_by_eb.exit.i.for.cond.preheader.i_crit_edge ], [ %63, %mtd_div_by_eb.exit.i.1.for.cond.preheader.i_crit_edge ], [ %84, %mtd_div_by_eb.exit.i.2.for.cond.preheader.i_crit_edge ]
  %.lcssa = phi i32 [ %31, %mtd_div_by_eb.exit.i.for.cond.preheader.i_crit_edge ], [ %54, %mtd_div_by_eb.exit.i.1.for.cond.preheader.i_crit_edge ], [ %75, %mtd_div_by_eb.exit.i.2.for.cond.preheader.i_crit_edge ]
  %mul.i = mul i32 %.lcssa152, %retval.0.i.i.lcssa
  %div.i = udiv i32 %mul.i, %.lcssa
  %div3.i = udiv i32 %.lcssa152, %.lcssa
  %add.i = add i32 %div3.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %add.i)
  %cmp28.i = icmp ult i32 %div.i, %add.i
  br i1 %cmp28.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.thread_crit_edge

for.cond.preheader.i.for.end.thread_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %page.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %div.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %oops_page_used.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %oops_page_used.i.i, align 4
  call void @_clear_bit(i32 noundef %page.029.i, ptr noundef %47) #8
  %inc.i = add i32 %page.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.thread_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.thread_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.body.i.for.end.thread_crit_edge, %for.cond.preheader.i.for.end.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  br label %do.end67

mtdoops_erase_block.exit:                         ; preds = %mtd_div_by_eb.exit.i
  %48 = ptrtoint ptr %erase.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %erase.i, align 8
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %10, align 8
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i64 noundef %49, i64 noundef %51, ptr noundef nonnull @mtddev) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp56 = icmp slt i32 %call7.i, 0
  br i1 %cmp56, label %for.body.1, label %mtdoops_erase_block.exit.for.end_crit_edge

mtdoops_erase_block.exit.for.end_crit_edge:       ; preds = %mtdoops_erase_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %mtdoops_erase_block.exit
  %52 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nextpage, align 4
  %54 = load i32, ptr @record_size, align 4
  %mul59.1 = mul i32 %54, %53
  %55 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mtd1, align 4
  %conv.i.1 = sext i32 %mul59.1 to i64
  %erasesize_shift.i.i.1 = getelementptr inbounds %struct.mtd_info, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %erasesize_shift.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %erasesize_shift.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.1 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %if.then.i.i.1

if.then.i.i.1:                                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i.i.1 = zext i32 %58 to i64
  %shr.i.i.1 = lshr i64 %conv.i.1, %sh_prom.i.i.1
  %conv.i.i.1 = trunc i64 %shr.i.i.1 to i32
  br label %mtd_div_by_eb.exit.i.1

if.end.i.i.1:                                     ; preds = %for.body.1
  %erasesize.i.i.1 = getelementptr inbounds %struct.mtd_info, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %erasesize.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %erasesize.i.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul59.1)
  %cmp172.i.i.1 = icmp sgt i32 %mul59.1, -1
  br i1 %cmp172.i.i.1, label %if.then176.i.i.1, label %if.else182.i.i.1, !prof !145

if.else182.i.i.1:                                 ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %61 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %60, i64 %conv.i.1) #13, !srcloc !146
  %asmresult1.i.i.i.1 = extractvalue { i64, i64 } %61, 1
  %extract.t297.i.i.1 = trunc i64 %asmresult1.i.i.i.1 to i32
  br label %mtd_div_by_eb.exit.i.1

if.then176.i.i.1:                                 ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %div180.i.i.1 = udiv i32 %mul59.1, %60
  br label %mtd_div_by_eb.exit.i.1

mtd_div_by_eb.exit.i.1:                           ; preds = %if.then176.i.i.1, %if.else182.i.i.1, %if.then.i.i.1
  %retval.0.i.i.1 = phi i32 [ %conv.i.i.1, %if.then.i.i.1 ], [ %div180.i.i.1, %if.then176.i.i.1 ], [ %extract.t297.i.i.1, %if.else182.i.i.1 ]
  %erasesize.i.1 = getelementptr inbounds %struct.mtd_info, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %erasesize.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %erasesize.i.1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i) #8
  %64 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %11, align 8
  %65 = ptrtoint ptr %erase.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv.i.1, ptr %erase.i, align 8
  %66 = ptrtoint ptr %erasesize.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %erasesize.i.1, align 8
  %conv6.i.1 = zext i32 %67 to i64
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv6.i.1, ptr %10, align 8
  %call7.i.1 = call i32 @mtd_erase(ptr noundef %56, ptr noundef nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1)
  %tobool.not.i.1 = icmp eq i32 %call7.i.1, 0
  br i1 %tobool.not.i.1, label %mtd_div_by_eb.exit.i.1.for.cond.preheader.i_crit_edge, label %mtdoops_erase_block.exit.1

mtd_div_by_eb.exit.i.1.for.cond.preheader.i_crit_edge: ; preds = %mtd_div_by_eb.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

mtdoops_erase_block.exit.1:                       ; preds = %mtd_div_by_eb.exit.i.1
  %69 = ptrtoint ptr %erase.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %erase.i, align 8
  %71 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %10, align 8
  %call10.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i64 noundef %70, i64 noundef %72, ptr noundef nonnull @mtddev) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.1)
  %cmp56.1 = icmp slt i32 %call7.i.1, 0
  br i1 %cmp56.1, label %for.body.2, label %mtdoops_erase_block.exit.1.for.end_crit_edge

mtdoops_erase_block.exit.1.for.end_crit_edge:     ; preds = %mtdoops_erase_block.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %mtdoops_erase_block.exit.1
  %73 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nextpage, align 4
  %75 = load i32, ptr @record_size, align 4
  %mul59.2 = mul i32 %75, %74
  %76 = ptrtoint ptr %mtd1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mtd1, align 4
  %conv.i.2 = sext i32 %mul59.2 to i64
  %erasesize_shift.i.i.2 = getelementptr inbounds %struct.mtd_info, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %erasesize_shift.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %erasesize_shift.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i.2 = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i.2, label %if.end.i.i.2, label %if.then.i.i.2

if.then.i.i.2:                                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i.i.2 = zext i32 %79 to i64
  %shr.i.i.2 = lshr i64 %conv.i.2, %sh_prom.i.i.2
  %conv.i.i.2 = trunc i64 %shr.i.i.2 to i32
  br label %mtd_div_by_eb.exit.i.2

if.end.i.i.2:                                     ; preds = %for.body.2
  %erasesize.i.i.2 = getelementptr inbounds %struct.mtd_info, ptr %77, i32 0, i32 3
  %80 = ptrtoint ptr %erasesize.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %erasesize.i.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul59.2)
  %cmp172.i.i.2 = icmp sgt i32 %mul59.2, -1
  br i1 %cmp172.i.i.2, label %if.then176.i.i.2, label %if.else182.i.i.2, !prof !145

if.else182.i.i.2:                                 ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %82 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %81, i64 %conv.i.2) #13, !srcloc !146
  %asmresult1.i.i.i.2 = extractvalue { i64, i64 } %82, 1
  %extract.t297.i.i.2 = trunc i64 %asmresult1.i.i.i.2 to i32
  br label %mtd_div_by_eb.exit.i.2

if.then176.i.i.2:                                 ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %div180.i.i.2 = udiv i32 %mul59.2, %81
  br label %mtd_div_by_eb.exit.i.2

mtd_div_by_eb.exit.i.2:                           ; preds = %if.then176.i.i.2, %if.else182.i.i.2, %if.then.i.i.2
  %retval.0.i.i.2 = phi i32 [ %conv.i.i.2, %if.then.i.i.2 ], [ %div180.i.i.2, %if.then176.i.i.2 ], [ %extract.t297.i.i.2, %if.else182.i.i.2 ]
  %erasesize.i.2 = getelementptr inbounds %struct.mtd_info, ptr %77, i32 0, i32 3
  %83 = ptrtoint ptr %erasesize.i.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %erasesize.i.2, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i) #8
  %85 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 -1, ptr %11, align 8
  %86 = ptrtoint ptr %erase.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv.i.2, ptr %erase.i, align 8
  %87 = ptrtoint ptr %erasesize.i.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %erasesize.i.2, align 8
  %conv6.i.2 = zext i32 %88 to i64
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv6.i.2, ptr %10, align 8
  %call7.i.2 = call i32 @mtd_erase(ptr noundef %77, ptr noundef nonnull %erase.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.2)
  %tobool.not.i.2 = icmp eq i32 %call7.i.2, 0
  br i1 %tobool.not.i.2, label %mtd_div_by_eb.exit.i.2.for.cond.preheader.i_crit_edge, label %mtdoops_erase_block.exit.2

mtd_div_by_eb.exit.i.2.for.cond.preheader.i_crit_edge: ; preds = %mtd_div_by_eb.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

mtdoops_erase_block.exit.2:                       ; preds = %mtd_div_by_eb.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %erase.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %erase.i, align 8
  %92 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %10, align 8
  %call10.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i64 noundef %91, i64 noundef %93, ptr noundef nonnull @mtddev) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i) #8
  br label %for.end

for.end:                                          ; preds = %mtdoops_erase_block.exit.2, %mtdoops_erase_block.exit.1.for.end_crit_edge, %mtdoops_erase_block.exit.for.end_crit_edge
  %call7.i.lcssa151 = phi i32 [ %call7.i, %mtdoops_erase_block.exit.for.end_crit_edge ], [ %call7.i.1, %mtdoops_erase_block.exit.1.for.end_crit_edge ], [ %call7.i.2, %mtdoops_erase_block.exit.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7.i.lcssa151)
  %cmp62 = icmp sgt i32 %call7.i.lcssa151, -1
  br i1 %cmp62, label %for.end.do.end67_crit_edge, label %if.end71

for.end.do.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

do.end67:                                         ; preds = %for.end.do.end67_crit_edge, %for.end.thread
  %94 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nextpage, align 4
  %nextcount = getelementptr i8, ptr %work, i32 100
  %96 = ptrtoint ptr %nextcount to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nextcount, align 4
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %95, i32 noundef %97) #11
  br label %cleanup

if.end71:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call7.i.lcssa151)
  %cmp72 = icmp eq i32 %call7.i.lcssa151, -5
  br i1 %cmp72, label %if.then74, label %if.end71.do.end_crit_edge

if.end71.do.end_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then74:                                        ; preds = %if.end71
  %98 = ptrtoint ptr %nextpage to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nextpage, align 4
  %100 = load i32, ptr @record_size, align 4
  %mul76 = mul i32 %100, %99
  %conv77 = zext i32 %mul76 to i64
  %call78 = call i32 @mtd_block_markbad(ptr noundef nonnull %1, i64 noundef %conv77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call78)
  %cmp79 = icmp sgt i32 %call78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call78)
  %cmp81.not = icmp eq i32 %call78, -95
  %or.cond130 = or i1 %cmp79, %cmp81.not
  br i1 %or.cond130, label %if.then74.do.end_crit_edge, label %do.end86

if.then74.do.end_crit_edge:                       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end86:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %do.end67, %do.end50, %do.end41, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdoops_workfunc_write(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  tail call fastcc void @mtdoops_write(ptr noundef %add.ptr, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__param_record_size, !1, !"__param_record_size", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdoops.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_record_sizetype189, !1, !"__UNIQUE_ID_record_sizetype189", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_record_size190, !4, !"__UNIQUE_ID_record_size190", i1 false, i1 false}
!4 = !{!"../drivers/mtd/mtdoops.c", i32 30, i32 1}
!5 = !{ptr @__param_mtddev, !6, !"__param_mtddev", i1 false, i1 false}
!6 = !{!"../drivers/mtd/mtdoops.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_mtddevtype191, !6, !"__UNIQUE_ID_mtddevtype191", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mtddev192, !9, !"__UNIQUE_ID_mtddev192", i1 false, i1 false}
!9 = !{!"../drivers/mtd/mtdoops.c", i32 35, i32 1}
!10 = !{ptr @__param_dump_oops, !11, !"__param_dump_oops", i1 false, i1 false}
!11 = !{!"../drivers/mtd/mtdoops.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_dump_oopstype193, !11, !"__UNIQUE_ID_dump_oopstype193", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_dump_oops194, !14, !"__UNIQUE_ID_dump_oops194", i1 false, i1 false}
!14 = !{!"../drivers/mtd/mtdoops.c", i32 40, i32 1}
!15 = !{ptr @__initcall__kmod_mtdoops__195_426_mtdoops_init6, !16, !"__initcall__kmod_mtdoops__195_426_mtdoops_init6", i1 false, i1 false}
!16 = !{!"../drivers/mtd/mtdoops.c", i32 426, i32 1}
!17 = !{ptr @__exitcall_mtdoops_exit, !18, !"__exitcall_mtdoops_exit", i1 false, i1 false}
!18 = !{!"../drivers/mtd/mtdoops.c", i32 427, i32 1}
!19 = !{ptr @__UNIQUE_ID_file196, !20, !"__UNIQUE_ID_file196", i1 false, i1 false}
!20 = !{!"../drivers/mtd/mtdoops.c", i32 429, i32 1}
!21 = !{ptr @__UNIQUE_ID_license197, !20, !"__UNIQUE_ID_license197", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author198, !23, !"__UNIQUE_ID_author198", i1 false, i1 false}
!23 = !{!"../drivers/mtd/mtdoops.c", i32 430, i32 1}
!24 = !{ptr @__UNIQUE_ID_description199, !25, !"__UNIQUE_ID_description199", i1 false, i1 false}
!25 = !{!"../drivers/mtd/mtdoops.c", i32 431, i32 1}
!26 = !{ptr @oops_cxt, !27, !"oops_cxt", i1 false, i1 false}
!27 = !{!"../drivers/mtd/mtdoops.c", i32 57, i32 3}
!28 = !{ptr @__param_str_record_size, !1, !"__param_str_record_size", i1 false, i1 false}
!29 = !{ptr @record_size, !30, !"record_size", i1 false, i1 false}
!30 = !{!"../drivers/mtd/mtdoops.c", i32 28, i32 22}
!31 = !{ptr @__param_str_mtddev, !6, !"__param_str_mtddev", i1 false, i1 false}
!32 = !{ptr @__param_string_mtddev, !6, !"__param_string_mtddev", i1 false, i1 false}
!33 = !{ptr @mtddev, !34, !"mtddev", i1 false, i1 false}
!34 = !{!"../drivers/mtd/mtdoops.c", i32 33, i32 13}
!35 = !{ptr @__param_str_dump_oops, !11, !"__param_str_dump_oops", i1 false, i1 false}
!36 = !{ptr @dump_oops, !37, !"dump_oops", i1 false, i1 false}
!37 = !{!"../drivers/mtd/mtdoops.c", i32 38, i32 12}
!38 = !{ptr @mtdoops_notifier, !39, !"mtdoops_notifier", i1 false, i1 false}
!39 = !{!"../drivers/mtd/mtdoops.c", i32 373, i32 28}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/mtdoops.c", i32 316, i32 3}
!42 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mtdoops_notify_add._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @mtdoops_notify_add._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/mtdoops.c", i32 321, i32 3}
!48 = !{ptr @mtdoops_notify_add._entry.3, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mtdoops_notify_add._entry_ptr.5, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/mtdoops.c", i32 326, i32 3}
!52 = !{ptr @mtdoops_notify_add._entry.6, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtdoops_notify_add._entry_ptr.8, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/mtdoops.c", i32 337, i32 3}
!56 = !{ptr @mtdoops_notify_add._entry.9, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtdoops_notify_add._entry_ptr.11, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/mtdoops.c", i32 345, i32 3}
!60 = !{ptr @mtdoops_notify_add._entry.12, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtdoops_notify_add._entry_ptr.14, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/mtdoops.c", i32 354, i32 2}
!64 = !{ptr @mtdoops_notify_add._entry.15, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mtdoops_notify_add._entry_ptr.17, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/mtdoops.c", i32 196, i32 4}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mtdoops_write._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mtdoops_write._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/mtdoops.c", i32 204, i32 3}
!73 = !{ptr @mtdoops_write._entry.20, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mtdoops_write._entry_ptr.22, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/mtdoops.c", i32 116, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mtdoops_inc_counter._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtdoops_inc_counter._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/mtdoops.c", i32 238, i32 4}
!82 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @find_next_position._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @find_next_position._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/mtdoops.c", i32 365, i32 3}
!87 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mtdoops_notify_remove._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mtdoops_notify_remove._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/mtdoops.c", i32 385, i32 3}
!92 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mtdoops_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @mtdoops_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/mtdoops.c", i32 389, i32 3}
!97 = !{ptr @mtdoops_init._entry.31, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mtdoops_init._entry_ptr.33, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/mtdoops.c", i32 393, i32 3}
!101 = !{ptr @mtdoops_init._entry.34, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mtdoops_init._entry_ptr.36, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @mtdoops_init.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../drivers/mtd/mtdoops.c", i32 409, i32 2}
!105 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mtdoops_init.__key.38, !107, !"__key", i1 false, i1 false}
!107 = !{!"../drivers/mtd/mtdoops.c", i32 410, i32 2}
!108 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/mtdoops.c", i32 141, i32 3}
!111 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mtdoops_workfunc_erase._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtdoops_workfunc_erase._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/mtdoops.c", i32 148, i32 4}
!116 = !{ptr @mtdoops_workfunc_erase._entry.42, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mtdoops_workfunc_erase._entry_ptr.44, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/mtdoops.c", i32 154, i32 3}
!120 = !{ptr @mtdoops_workfunc_erase._entry.45, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mtdoops_workfunc_erase._entry_ptr.47, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/mtdoops.c", i32 162, i32 3}
!124 = !{ptr @mtdoops_workfunc_erase._entry.48, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mtdoops_workfunc_erase._entry_ptr.50, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/mtdoops.c", i32 170, i32 4}
!128 = !{ptr @mtdoops_workfunc_erase._entry.51, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mtdoops_workfunc_erase._entry_ptr.53, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/mtdoops.c", i32 89, i32 3}
!132 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @mtdoops_erase_block._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @mtdoops_erase_block._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"auto-init"}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2148609501, i64 2148609781, i64 2148610115, i64 2148610449}
