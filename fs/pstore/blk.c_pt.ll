; ModuleID = '/llk/IR_all_yes/fs/pstore/blk.c_pt.bc'
source_filename = "../fs/pstore/blk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_pstore_device\22, \22a\22\09"
module asm "\09.weak\09__crc_register_pstore_device\09\09\09\09"
module asm "\09.long\09__crc_register_pstore_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pstore_device:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pstore_device\22\09\09\09\09\09"
module asm "__kstrtabns_register_pstore_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_pstore_device\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_pstore_device\09\09\09\09"
module asm "\09.long\09__crc_unregister_pstore_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pstore_device:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pstore_device\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pstore_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pstore_blk_get_config\22, \22a\22\09"
module asm "\09.weak\09__crc_pstore_blk_get_config\09\09\09\09"
module asm "\09.long\09__crc_pstore_blk_get_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_blk_get_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_blk_get_config\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_blk_get_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pstore_device_info = type { i32, %struct.pstore_zone_info }
%struct.pstore_zone_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pstore_blk_config = type { [80 x i8], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_kmsg_size = internal constant [21 x i8] c"pstore_blk.kmsg_size\00", align 1
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@kmsg_size = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_kmsg_size = internal constant %struct.kernel_param { ptr @__param_str_kmsg_size, ptr null, ptr @param_ops_long, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @kmsg_size } }, section "__param", align 4
@__UNIQUE_ID_kmsg_sizetype267 = internal constant [35 x i8] c"pstore_blk.parmtype=kmsg_size:long\00", section ".modinfo", align 1
@__UNIQUE_ID_kmsg_size268 = internal constant [58 x i8] c"pstore_blk.parm=kmsg_size:kmsg dump record size in kbytes\00", section ".modinfo", align 1
@__param_str_max_reason = internal constant [22 x i8] c"pstore_blk.max_reason\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_reason = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_max_reason = internal constant %struct.kernel_param { ptr @__param_str_max_reason, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @max_reason } }, section "__param", align 4
@__UNIQUE_ID_max_reasontype269 = internal constant [35 x i8] c"pstore_blk.parmtype=max_reason:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_reason270 = internal constant [84 x i8] c"pstore_blk.parm=max_reason:maximum reason for kmsg dump (default 2: Oops and Panic)\00", section ".modinfo", align 1
@__param_str_pmsg_size = internal constant [21 x i8] c"pstore_blk.pmsg_size\00", align 1
@pmsg_size = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_pmsg_size = internal constant %struct.kernel_param { ptr @__param_str_pmsg_size, ptr null, ptr @param_ops_long, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @pmsg_size } }, section "__param", align 4
@__UNIQUE_ID_pmsg_sizetype271 = internal constant [35 x i8] c"pstore_blk.parmtype=pmsg_size:long\00", section ".modinfo", align 1
@__UNIQUE_ID_pmsg_size272 = internal constant [46 x i8] c"pstore_blk.parm=pmsg_size:pmsg size in kbytes\00", section ".modinfo", align 1
@__param_str_console_size = internal constant [24 x i8] c"pstore_blk.console_size\00", align 1
@console_size = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_console_size = internal constant %struct.kernel_param { ptr @__param_str_console_size, ptr null, ptr @param_ops_long, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @console_size } }, section "__param", align 4
@__UNIQUE_ID_console_sizetype273 = internal constant [38 x i8] c"pstore_blk.parmtype=console_size:long\00", section ".modinfo", align 1
@__UNIQUE_ID_console_size274 = internal constant [52 x i8] c"pstore_blk.parm=console_size:console size in kbytes\00", section ".modinfo", align 1
@__param_str_ftrace_size = internal constant [23 x i8] c"pstore_blk.ftrace_size\00", align 1
@ftrace_size = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_ftrace_size = internal constant %struct.kernel_param { ptr @__param_str_ftrace_size, ptr null, ptr @param_ops_long, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @ftrace_size } }, section "__param", align 4
@__UNIQUE_ID_ftrace_sizetype275 = internal constant [37 x i8] c"pstore_blk.parmtype=ftrace_size:long\00", section ".modinfo", align 1
@__UNIQUE_ID_ftrace_size276 = internal constant [50 x i8] c"pstore_blk.parm=ftrace_size:ftrace size in kbytes\00", section ".modinfo", align 1
@__param_str_best_effort = internal constant [23 x i8] c"pstore_blk.best_effort\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@best_effort = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_best_effort = internal constant %struct.kernel_param { ptr @__param_str_best_effort, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @best_effort } }, section "__param", align 4
@__UNIQUE_ID_best_efforttype277 = internal constant [37 x i8] c"pstore_blk.parmtype=best_effort:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_best_effort278 = internal constant [119 x i8] c"pstore_blk.parm=best_effort:use best effort to write (i.e. do not require storage driver pstore support, default: off)\00", section ".modinfo", align 1
@__param_str_blkdev = internal constant [18 x i8] c"pstore_blk.blkdev\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_blkdev = internal constant %struct.kparam_string { i32 80, ptr @blkdev }, align 4
@__param_blkdev = internal constant %struct.kernel_param { ptr @__param_str_blkdev, ptr null, ptr @param_ops_string, i16 256, i8 -1, i8 0, %union.anon.69 { ptr @__param_string_blkdev } }, section "__param", align 4
@__UNIQUE_ID_blkdevtype279 = internal constant [34 x i8] c"pstore_blk.parmtype=blkdev:string\00", section ".modinfo", align 1
@__UNIQUE_ID_blkdev280 = internal constant [55 x i8] c"pstore_blk.parm=blkdev:block device for pstore storage\00", section ".modinfo", align 1
@pstore_blk_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pstore_blk_lock, i64 52), ptr getelementptr (i8, ptr @pstore_blk_lock, i64 52) }, ptr @pstore_blk_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_register_pstore_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pstore_device = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pstore_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pstore_device to i32), ptr @__kstrtab_register_pstore_device, ptr @__kstrtabns_register_pstore_device }, section "___ksymtab_gpl+register_pstore_device", align 4
@__kstrtab_unregister_pstore_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pstore_device = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pstore_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pstore_device to i32), ptr @__kstrtab_unregister_pstore_device, ptr @__kstrtabns_unregister_pstore_device }, section "___ksymtab_gpl+unregister_pstore_device", align 4
@blkdev = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@pstore_blk_get_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016pstore_blk: kmsg_size must align to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pstore_blk_get_config\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/pstore/blk.c\00", [16 x i8] zeroinitializer }, align 32
@pstore_blk_get_config._entry_ptr = internal global ptr @pstore_blk_get_config._entry, section ".printk_index", align 4
@pstore_blk_get_config._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016pstore_blk: pmsg_size must align to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@pstore_blk_get_config._entry_ptr.5 = internal global ptr @pstore_blk_get_config._entry.3, section ".printk_index", align 4
@pstore_blk_get_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016pstore_blk: ftrace_size must align to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@pstore_blk_get_config._entry_ptr.8 = internal global ptr @pstore_blk_get_config._entry.6, section ".printk_index", align 4
@pstore_blk_get_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pstore_blk: console_size must align to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pstore_blk_get_config._entry_ptr.11 = internal global ptr @pstore_blk_get_config._entry.9, section ".printk_index", align 4
@__kstrtab_pstore_blk_get_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_blk_get_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_blk_get_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_blk_get_config to i32), ptr @__kstrtab_pstore_blk_get_config, ptr @__kstrtabns_pstore_blk_get_config }, section "___ksymtab_gpl+pstore_blk_get_config", align 4
@psblk_file = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pstore_device_info = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_pstore_blk__281_346_pstore_blk_init7 = internal global ptr @pstore_blk_init, section ".initcall7.init", align 4
@__exitcall_pstore_blk_exit = internal global ptr @pstore_blk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file282 = internal constant [37 x i8] c"pstore_blk.file=fs/pstore/pstore_blk\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [23 x i8] c"pstore_blk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [65 x i8] c"pstore_blk.author=WeiXiong Liao <liaoweixiong@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [52 x i8] c"pstore_blk.author=Kees Cook <keescook@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description286 = internal constant [56 x i8] c"pstore_blk.description=pstore backend for block devices\00", section ".modinfo", align 1
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pstore_blk_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pstore_blk_lock\00", [16 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__register_pstore_device._entry = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 104, ptr null, ptr null }, align 1
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013pstore_blk: NULL device info\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__register_pstore_device\00", [39 x i8] zeroinitializer }, align 32
@__register_pstore_device._entry_ptr = internal global ptr @__register_pstore_device._entry, section ".printk_index", align 4
@__register_pstore_device._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 108, ptr null, ptr null }, align 1
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013pstore_blk: zero sized device\0A\00", [63 x i8] zeroinitializer }, align 32
@__register_pstore_device._entry_ptr.18 = internal global ptr @__register_pstore_device._entry.16, section ".printk_index", align 4
@__register_pstore_device._entry.19 = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 112, ptr null, ptr null }, align 1
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pstore_blk: no read handler for device\0A\00", [54 x i8] zeroinitializer }, align 32
@__register_pstore_device._entry_ptr.21 = internal global ptr @__register_pstore_device._entry.19, section ".printk_index", align 4
@__register_pstore_device._entry.22 = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 116, ptr null, ptr null }, align 1
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pstore_blk: no write handler for device\0A\00", [53 x i8] zeroinitializer }, align 32
@__register_pstore_device._entry_ptr.24 = internal global ptr @__register_pstore_device._entry.22, section ".printk_index", align 4
@__register_pstore_device._entry.25 = internal constant %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 129, ptr null, ptr null }, align 1
@__register_pstore_device._entry_ptr.26 = internal global ptr @__register_pstore_device._entry.25, section ".printk_index", align 4
@__register_pstore_device._entry.27 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.15, ptr @.str.2, i32 130, ptr null, ptr null }, align 1
@__register_pstore_device._entry_ptr.28 = internal global ptr @__register_pstore_device._entry.27, section ".printk_index", align 4
@__register_pstore_device._entry.29 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.15, ptr @.str.2, i32 131, ptr null, ptr null }, align 1
@__register_pstore_device._entry_ptr.30 = internal global ptr @__register_pstore_device._entry.29, section ".printk_index", align 4
@__register_pstore_device._entry.31 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.15, ptr @.str.2, i32 132, ptr null, ptr null }, align 1
@__register_pstore_device._entry_ptr.32 = internal global ptr @__register_pstore_device._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pstore_blk\00", [21 x i8] zeroinitializer }, align 32
@__best_effort_init._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 296, ptr null, ptr null }, align 1
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pstore_blk: blkdev empty with best_effort=Y\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__best_effort_init\00", [45 x i8] zeroinitializer }, align 32
@__best_effort_init._entry_ptr = internal global ptr @__best_effort_init._entry, section ".printk_index", align 4
@__best_effort_init._entry.36 = internal constant %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 313, ptr null, ptr null }, align 1
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016pstore_blk: attached %s (%lu) (no dedicated panic_write!)\0A\00", [35 x i8] zeroinitializer }, align 32
@__best_effort_init._entry_ptr.38 = internal global ptr @__best_effort_init._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__register_pstore_blk._entry = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 215, ptr null, ptr null }, align 1
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013pstore_blk: failed to open '%s': %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__register_pstore_blk\00", [42 x i8] zeroinitializer }, align 32
@__register_pstore_blk._entry_ptr = internal global ptr @__register_pstore_blk._entry, section ".printk_index", align 4
@__register_pstore_blk._entry.41 = internal constant %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 220, ptr null, ptr null }, align 1
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013pstore_blk: '%s' is not block device!\0A\00", [55 x i8] zeroinitializer }, align 32
@__register_pstore_blk._entry_ptr.43 = internal global ptr @__register_pstore_blk._entry.41, section ".printk_index", align 4
@early_boot_devpath._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013pstore_blk: failed to resolve '%s'!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"early_boot_devpath\00", [45 x i8] zeroinitializer }, align 32
@early_boot_devpath._entry_ptr = internal global ptr @early_boot_devpath._entry, section ".printk_index", align 4
@devname = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"/dev/pstore-blk\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"kmsg_size\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 22, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"max_reason\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 26, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"pmsg_size\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 32, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"console_size\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 40, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"ftrace_size\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 48, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"best_effort\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 55, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"pstore_blk_lock\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"blkdev\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 63, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 246, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 247, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 248, i32 22 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 249, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"psblk_file\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 72, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"pstore_device_info\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 73, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 71, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 104, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 108, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 112, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 116, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 136, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 296, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 312, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 215, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 220, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 269, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"devname\00", align 1
@___asan_gen_.158 = private constant [19 x i8] c"../fs/pstore/blk.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 257, i32 19 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_best_effort278, ptr @__UNIQUE_ID_best_efforttype277, ptr @__UNIQUE_ID_blkdev280, ptr @__UNIQUE_ID_blkdevtype279, ptr @__UNIQUE_ID_console_size274, ptr @__UNIQUE_ID_console_sizetype273, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_ftrace_size276, ptr @__UNIQUE_ID_ftrace_sizetype275, ptr @__UNIQUE_ID_kmsg_size268, ptr @__UNIQUE_ID_kmsg_sizetype267, ptr @__UNIQUE_ID_license283, ptr @__UNIQUE_ID_max_reason270, ptr @__UNIQUE_ID_max_reasontype269, ptr @__UNIQUE_ID_pmsg_size272, ptr @__UNIQUE_ID_pmsg_sizetype271, ptr @__best_effort_exit, ptr @__best_effort_init._entry, ptr @__best_effort_init._entry.36, ptr @__best_effort_init._entry_ptr, ptr @__best_effort_init._entry_ptr.38, ptr @__exitcall_pstore_blk_exit, ptr @__initcall__kmod_pstore_blk__281_346_pstore_blk_init7, ptr @__ksymtab_pstore_blk_get_config, ptr @__ksymtab_register_pstore_device, ptr @__ksymtab_unregister_pstore_device, ptr @__param_best_effort, ptr @__param_blkdev, ptr @__param_console_size, ptr @__param_ftrace_size, ptr @__param_kmsg_size, ptr @__param_max_reason, ptr @__param_pmsg_size, ptr @__register_pstore_blk._entry, ptr @__register_pstore_blk._entry.41, ptr @__register_pstore_blk._entry_ptr, ptr @__register_pstore_blk._entry_ptr.43, ptr @__register_pstore_device._entry, ptr @__register_pstore_device._entry.16, ptr @__register_pstore_device._entry.19, ptr @__register_pstore_device._entry.22, ptr @__register_pstore_device._entry.25, ptr @__register_pstore_device._entry.27, ptr @__register_pstore_device._entry.29, ptr @__register_pstore_device._entry.31, ptr @__register_pstore_device._entry_ptr, ptr @__register_pstore_device._entry_ptr.18, ptr @__register_pstore_device._entry_ptr.21, ptr @__register_pstore_device._entry_ptr.24, ptr @__register_pstore_device._entry_ptr.26, ptr @__register_pstore_device._entry_ptr.28, ptr @__register_pstore_device._entry_ptr.30, ptr @__register_pstore_device._entry_ptr.32, ptr @early_boot_devpath._entry, ptr @early_boot_devpath._entry_ptr, ptr @pstore_blk_exit, ptr @pstore_blk_get_config._entry, ptr @pstore_blk_get_config._entry.3, ptr @pstore_blk_get_config._entry.6, ptr @pstore_blk_get_config._entry.9, ptr @pstore_blk_get_config._entry_ptr, ptr @pstore_blk_get_config._entry_ptr.11, ptr @pstore_blk_get_config._entry_ptr.5, ptr @pstore_blk_get_config._entry_ptr.8, ptr @kmsg_size, ptr @max_reason, ptr @pmsg_size, ptr @console_size, ptr @ftrace_size, ptr @best_effort, ptr @pstore_blk_lock, ptr @blkdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @psblk_file, ptr @pstore_device_info, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @devname], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmsg_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_reason to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmsg_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @console_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @best_effort to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_blk_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkdev to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_blk_get_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_blk_get_config._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_blk_get_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_blk_get_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psblk_file to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_device_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_boot_devpath._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devname to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_pstore_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_blk_lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @__register_pstore_device(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_blk_lock) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__register_pstore_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @pstore_blk_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !168

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %dev, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %zone = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1
  %total_size = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool32.not = icmp eq i32 %2, 0
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %read = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %tobool41.not = icmp eq ptr %4, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %write = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 9
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %tobool50.not = icmp eq ptr %6, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end48
  %7 = load ptr, ptr @pstore_device_info, align 4
  %tobool58.not = icmp eq ptr %7, null
  br i1 %tobool58.not, label %if.end60, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool61.not = icmp eq i32 %9, 0
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dev, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60.if.end64_crit_edge
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %if.end64.if.end81_crit_edge, label %if.then67

if.end64.if.end81_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then67:                                        ; preds = %if.end64
  %13 = load i32, ptr @kmsg_size, align 4
  %mul = shl i32 %13, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp69.inv = icmp sgt i32 %13, 0
  %spec.select = select i1 %cmp69.inv, i32 %mul, i32 0
  %and70 = and i32 %spec.select, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then67.if.end81_crit_edge, label %do.end75

if.then67.if.end81_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end75:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4096) #10
  %14 = load i32, ptr @kmsg_size, align 4
  %add = add i32 %14, 4095
  %and78 = and i32 %add, -4096
  br label %if.end81

if.end81:                                         ; preds = %do.end75, %if.then67.if.end81_crit_edge, %if.end64.if.end81_crit_edge
  %_name_.0 = phi i32 [ %and78, %do.end75 ], [ %spec.select, %if.then67.if.end81_crit_edge ], [ 0, %if.end64.if.end81_crit_edge ]
  %div = sdiv i32 %_name_.0, 1024
  store i32 %div, ptr @kmsg_size, align 4
  %kmsg_size = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %kmsg_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %_name_.0, ptr %kmsg_size, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev, align 4
  %and85 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end81.if.end108_crit_edge, label %if.then87

if.end81.if.end108_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then87:                                        ; preds = %if.end81
  %18 = load i32, ptr @pmsg_size, align 4
  %mul92 = shl i32 %18, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp89.inv = icmp sgt i32 %18, 0
  %spec.select214 = select i1 %cmp89.inv, i32 %mul92, i32 0
  %and95 = and i32 %spec.select214, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then87.if.end108_crit_edge, label %do.end100

if.then87.if.end108_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

do.end100:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 4096) #10
  %19 = load i32, ptr @pmsg_size, align 4
  %add103 = add i32 %19, 4095
  %and104 = and i32 %add103, -4096
  br label %if.end108

if.end108:                                        ; preds = %do.end100, %if.then87.if.end108_crit_edge, %if.end81.if.end108_crit_edge
  %_name_83.0 = phi i32 [ %and104, %do.end100 ], [ %spec.select214, %if.then87.if.end108_crit_edge ], [ 0, %if.end81.if.end108_crit_edge ]
  %div109 = sdiv i32 %_name_83.0, 1024
  store i32 %div109, ptr @pmsg_size, align 4
  %pmsg_size = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %_name_83.0, ptr %pmsg_size, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dev, align 4
  %and113 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end108.if.end136_crit_edge, label %if.then115

if.end108.if.end136_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then115:                                       ; preds = %if.end108
  %23 = load i32, ptr @console_size, align 4
  %mul120 = shl i32 %23, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp117.inv = icmp sgt i32 %23, 0
  %spec.select215 = select i1 %cmp117.inv, i32 %mul120, i32 0
  %and123 = and i32 %spec.select215, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.then115.if.end136_crit_edge, label %do.end128

if.then115.if.end136_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

do.end128:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4096) #10
  %24 = load i32, ptr @console_size, align 4
  %add131 = add i32 %24, 4095
  %and132 = and i32 %add131, -4096
  br label %if.end136

if.end136:                                        ; preds = %do.end128, %if.then115.if.end136_crit_edge, %if.end108.if.end136_crit_edge
  %_name_111.0 = phi i32 [ %and132, %do.end128 ], [ %spec.select215, %if.then115.if.end136_crit_edge ], [ 0, %if.end108.if.end136_crit_edge ]
  %div137 = sdiv i32 %_name_111.0, 1024
  store i32 %div137, ptr @console_size, align 4
  %console_size = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %console_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %_name_111.0, ptr %console_size, align 4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev, align 4
  %and141 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end136.if.end164_crit_edge, label %if.then143

if.end136.if.end164_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then143:                                       ; preds = %if.end136
  %28 = load i32, ptr @ftrace_size, align 4
  %mul148 = shl i32 %28, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp145.inv = icmp sgt i32 %28, 0
  %spec.select216 = select i1 %cmp145.inv, i32 %mul148, i32 0
  %and151 = and i32 %spec.select216, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then143.if.end164_crit_edge, label %do.end156

if.then143.if.end164_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

do.end156:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #9
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 4096) #10
  %29 = load i32, ptr @ftrace_size, align 4
  %add159 = add i32 %29, 4095
  %and160 = and i32 %add159, -4096
  br label %if.end164

if.end164:                                        ; preds = %do.end156, %if.then143.if.end164_crit_edge, %if.end136.if.end164_crit_edge
  %_name_139.0 = phi i32 [ %and160, %do.end156 ], [ %spec.select216, %if.then143.if.end164_crit_edge ], [ 0, %if.end136.if.end164_crit_edge ]
  %div165 = sdiv i32 %_name_139.0, 1024
  store i32 %div165, ptr @ftrace_size, align 4
  %ftrace_size = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %_name_139.0, ptr %ftrace_size, align 4
  %31 = load i32, ptr @max_reason, align 4
  %max_reason = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %max_reason to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_reason, align 4
  %name = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.33, ptr %name, align 4
  %34 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %zone, align 4
  %call171 = tail call i32 @register_pstore_zone(ptr noundef %zone) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then173, label %if.end164.cleanup_crit_edge

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then173:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %dev, ptr @pstore_device_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then173, %if.end164.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end54, %do.end45, %do.end36, %do.end28
  %retval.0 = phi i32 [ -22, %do.end54 ], [ -22, %do.end45 ], [ -22, %do.end36 ], [ -22, %do.end28 ], [ -16, %if.end57.cleanup_crit_edge ], [ 0, %if.then173 ], [ %call171, %if.end164.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_pstore_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_blk_lock, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @pstore_blk_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !168

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 168, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = load ptr, ptr @pstore_device_info, align 4
  %tobool24.not.i = icmp ne ptr %1, null
  %cmp25.i = icmp eq ptr %1, %dev
  %or.cond.i = and i1 %tobool24.not.i, %cmp25.i
  br i1 %or.cond.i, label %if.then26.i, label %if.end.i.__unregister_pstore_device.exit_crit_edge

if.end.i.__unregister_pstore_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__unregister_pstore_device.exit

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %zone.i = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1
  tail call void @unregister_pstore_zone(ptr noundef %zone.i) #7
  store ptr null, ptr @pstore_device_info, align 4
  br label %__unregister_pstore_device.exit

__unregister_pstore_device.exit:                  ; preds = %if.then26.i, %if.end.i.__unregister_pstore_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_blk_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__unregister_pstore_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @pstore_blk_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !168

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 168, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = load ptr, ptr @pstore_device_info, align 4
  %tobool24.not = icmp ne ptr %1, null
  %cmp25 = icmp eq ptr %1, %dev
  %or.cond = and i1 %tobool24.not, %cmp25
  br i1 %or.cond, label %if.then26, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %zone = getelementptr inbounds %struct.pstore_device_info, ptr %dev, i32 0, i32 1
  tail call void @unregister_pstore_zone(ptr noundef %zone) #7
  store ptr null, ptr @pstore_device_info, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_blk_get_config(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strncpy(ptr noundef %info, ptr noundef nonnull @blkdev, i32 noundef 80)
  %0 = load i32, ptr @max_reason, align 4
  %max_reason = getelementptr inbounds %struct.pstore_blk_config, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %max_reason to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %max_reason, align 4
  %2 = load i32, ptr @kmsg_size, align 4
  %mul = shl i32 %2, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.inv = icmp sgt i32 %2, 0
  %spec.select = select i1 %cmp.inv, i32 %mul, i32 0
  %and = and i32 %spec.select, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4096) #10
  %3 = load i32, ptr @kmsg_size, align 4
  %add = add i32 %3, 4095
  %and2 = and i32 %add, -4096
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %_name_.0 = phi i32 [ %and2, %do.end ], [ %spec.select, %entry.if.end_crit_edge ]
  %kmsg_size = getelementptr inbounds %struct.pstore_blk_config, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %kmsg_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %_name_.0, ptr %kmsg_size, align 4
  %5 = load i32, ptr @pmsg_size, align 4
  %mul8 = shl i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.inv = icmp sgt i32 %5, 0
  %spec.select81 = select i1 %cmp5.inv, i32 %mul8, i32 0
  %and11 = and i32 %spec.select81, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end21_crit_edge, label %do.end16

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 4096) #10
  %6 = load i32, ptr @pmsg_size, align 4
  %add19 = add i32 %6, 4095
  %and20 = and i32 %add19, -4096
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %if.end.if.end21_crit_edge
  %_name_4.0 = phi i32 [ %and20, %do.end16 ], [ %spec.select81, %if.end.if.end21_crit_edge ]
  %pmsg_size = getelementptr inbounds %struct.pstore_blk_config, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %pmsg_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %_name_4.0, ptr %pmsg_size, align 4
  %8 = load i32, ptr @ftrace_size, align 4
  %mul27 = shl i32 %8, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp24.inv = icmp sgt i32 %8, 0
  %spec.select82 = select i1 %cmp24.inv, i32 %mul27, i32 0
  %and30 = and i32 %spec.select82, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end21.if.end40_crit_edge, label %do.end35

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 4096) #10
  %9 = load i32, ptr @ftrace_size, align 4
  %add38 = add i32 %9, 4095
  %and39 = and i32 %add38, -4096
  br label %if.end40

if.end40:                                         ; preds = %do.end35, %if.end21.if.end40_crit_edge
  %_name_23.0 = phi i32 [ %and39, %do.end35 ], [ %spec.select82, %if.end21.if.end40_crit_edge ]
  %ftrace_size = getelementptr inbounds %struct.pstore_blk_config, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %ftrace_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %_name_23.0, ptr %ftrace_size, align 4
  %11 = load i32, ptr @console_size, align 4
  %mul46 = shl i32 %11, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp43.inv = icmp sgt i32 %11, 0
  %spec.select83 = select i1 %cmp43.inv, i32 %mul46, i32 0
  %and49 = and i32 %spec.select83, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end40.if.end59_crit_edge, label %do.end54

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end54:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 4096) #10
  %12 = load i32, ptr @console_size, align 4
  %add57 = add i32 %12, 4095
  %and58 = and i32 %add57, -4096
  br label %if.end59

if.end59:                                         ; preds = %do.end54, %if.end40.if.end59_crit_edge
  %_name_42.0 = phi i32 [ %and58, %do.end54 ], [ %spec.select83, %if.end40.if.end59_crit_edge ]
  %console_size = getelementptr inbounds %struct.pstore_blk_config, ptr %info, i32 0, i32 4
  %13 = ptrtoint ptr %console_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %_name_42.0, ptr %console_size, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @__best_effort_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @psblk_file, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @pstore_device_info, align 4
  tail call fastcc void @__unregister_pstore_device(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #7
  %2 = load ptr, ptr @psblk_file, align 4
  tail call void @fput(ptr noundef %2) #7
  store ptr null, ptr @psblk_file, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_blk_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_blk_lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @__best_effort_init() #11
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_blk_lock) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pstore_blk_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @pstore_blk_lock, i32 noundef 0) #7
  tail call void @__best_effort_exit() #11
  %0 = load ptr, ptr @pstore_device_info, align 4
  tail call fastcc void @__unregister_pstore_device(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @pstore_blk_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pstore_zone(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pstore_zone(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__best_effort_init() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @best_effort, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @blkdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %read = getelementptr inbounds %struct.pstore_device_info, ptr %call7.i.i, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @psblk_generic_blk_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.pstore_device_info, ptr %call7.i.i, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @psblk_generic_blk_write, ptr %write, align 8
  %call9 = tail call fastcc ptr @early_boot_devpath() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end7.if.end.i_crit_edge, label %land.rhs.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end7
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @pstore_blk_lock, i32 0, i32 5), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !168

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 210, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %call24.i = tail call ptr @filp_open(ptr noundef nonnull %call9, i32 noundef 266370, i16 noundef zeroext 0) #7
  store ptr %call24.i, ptr @psblk_file, align 4
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__register_pstore_blk.exit, label %if.end33.i

if.end33.i:                                       ; preds = %if.end.i
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %call24.i, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %10)
  %cmp35.i = icmp eq i16 %10, 24576
  br i1 %cmp35.i, label %if.end43.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %call9) #10
  br label %__register_pstore_blk.exit.thread30

if.end43.i:                                       ; preds = %if.end33.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %call24.i, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call44.i = tail call ptr @I_BDEV(ptr noundef %14) #7
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %call44.i, i32 0, i32 1
  %15 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %.tr.i = trunc i64 %16 to i32
  %conv46.i = shl i32 %.tr.i, 9
  %total_size.i = getelementptr inbounds %struct.pstore_device_info, ptr %call7.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %total_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv46.i, ptr %total_size.i, align 4
  %call47.i = tail call fastcc i32 @__register_pstore_device(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %do.end15, label %if.end43.i.__register_pstore_blk.exit.thread30_crit_edge

if.end43.i.__register_pstore_blk.exit.thread30_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__register_pstore_blk.exit.thread30

__register_pstore_blk.exit.thread30:              ; preds = %if.end43.i.__register_pstore_blk.exit.thread30_crit_edge, %do.end40.i
  %ret.0.i = phi i32 [ %call47.i, %if.end43.i.__register_pstore_blk.exit.thread30_crit_edge ], [ -19, %do.end40.i ]
  %18 = load ptr, ptr @psblk_file, align 4
  tail call void @fput(ptr noundef %18) #7
  br label %if.then12

__register_pstore_blk.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call24.i to i32
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %call9, i32 noundef %19) #10
  br label %if.then12

if.then12:                                        ; preds = %__register_pstore_blk.exit, %__register_pstore_blk.exit.thread30
  %ret.1.i33 = phi i32 [ %ret.0.i, %__register_pstore_blk.exit.thread30 ], [ %19, %__register_pstore_blk.exit ]
  store ptr null, ptr @psblk_file, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.end15:                                         ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total_size.i, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @blkdev, i32 noundef %21) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then12, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %do.end15 ], [ %ret.1.i33, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psblk_generic_blk_read(ptr noundef %buf, i32 noundef %bytes, i64 noundef %pos) #0 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %1 = load ptr, ptr @psblk_file, align 4
  %call = call i32 @kernel_read(ptr noundef %1, ptr noundef %buf, i32 noundef %bytes, ptr noundef nonnull %pos.addr) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psblk_generic_blk_write(ptr noundef %buf, i32 noundef %bytes, i64 noundef %pos) #0 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !158) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %4, 15728640
  %5 = tail call i32 @llvm.read_register.i32(metadata !158) #7
  %and.i.i17 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i17 to ptr
  %preempt_count.i18 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i18, align 4
  %and2 = and i32 %8, 983040
  %or = or i32 %and2, %and
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #7
  %and.i.i19 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i19 to ptr
  %preempt_count.i20 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i20, align 4
  %and4 = and i32 %12, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !170
  %and.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %14 = load ptr, ptr @psblk_file, align 4
  %call16 = call i32 @kernel_write(ptr noundef %14, ptr noundef %buf, i32 noundef %bytes, ptr noundef nonnull %pos.addr) #7
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ -16, %lor.lhs.false.return_crit_edge ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @early_boot_devpath() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @name_to_dev_t(ptr noundef nonnull @blkdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @blkdev) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @init_unlink(ptr noundef nonnull @devname) #10
  %and1.i = and i32 %call, 255
  %0 = lshr i32 %call, 12
  %shl.i = and i32 %0, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %call, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %call4 = tail call i32 @init_mknod(ptr noundef nonnull @devname, i16 noundef zeroext 24960, i32 noundef %or4.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ @devname, %if.end ], [ @blkdev, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_dev_t(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !68, !70, !72, !74, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_kmsg_size, !1, !"__param_kmsg_size", i1 false, i1 false}
!1 = !{!"../fs/pstore/blk.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_kmsg_sizetype267, !1, !"__UNIQUE_ID_kmsg_sizetype267", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_kmsg_size268, !4, !"__UNIQUE_ID_kmsg_size268", i1 false, i1 false}
!4 = !{!"../fs/pstore/blk.c", i32 24, i32 1}
!5 = !{ptr @__param_max_reason, !6, !"__param_max_reason", i1 false, i1 false}
!6 = !{!"../fs/pstore/blk.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_reasontype269, !6, !"__UNIQUE_ID_max_reasontype269", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_reason270, !9, !"__UNIQUE_ID_max_reason270", i1 false, i1 false}
!9 = !{!"../fs/pstore/blk.c", i32 28, i32 1}
!10 = !{ptr @__param_pmsg_size, !11, !"__param_pmsg_size", i1 false, i1 false}
!11 = !{!"../fs/pstore/blk.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_pmsg_sizetype271, !11, !"__UNIQUE_ID_pmsg_sizetype271", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pmsg_size272, !14, !"__UNIQUE_ID_pmsg_size272", i1 false, i1 false}
!14 = !{!"../fs/pstore/blk.c", i32 37, i32 1}
!15 = !{ptr @__param_console_size, !16, !"__param_console_size", i1 false, i1 false}
!16 = !{!"../fs/pstore/blk.c", i32 44, i32 1}
!17 = !{ptr @__UNIQUE_ID_console_sizetype273, !16, !"__UNIQUE_ID_console_sizetype273", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_console_size274, !19, !"__UNIQUE_ID_console_size274", i1 false, i1 false}
!19 = !{!"../fs/pstore/blk.c", i32 45, i32 1}
!20 = !{ptr @__param_ftrace_size, !21, !"__param_ftrace_size", i1 false, i1 false}
!21 = !{!"../fs/pstore/blk.c", i32 52, i32 1}
!22 = !{ptr @__UNIQUE_ID_ftrace_sizetype275, !21, !"__UNIQUE_ID_ftrace_sizetype275", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_ftrace_size276, !24, !"__UNIQUE_ID_ftrace_size276", i1 false, i1 false}
!24 = !{!"../fs/pstore/blk.c", i32 53, i32 1}
!25 = !{ptr @__param_best_effort, !26, !"__param_best_effort", i1 false, i1 false}
!26 = !{!"../fs/pstore/blk.c", i32 56, i32 1}
!27 = !{ptr @__UNIQUE_ID_best_efforttype277, !26, !"__UNIQUE_ID_best_efforttype277", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_best_effort278, !29, !"__UNIQUE_ID_best_effort278", i1 false, i1 false}
!29 = !{!"../fs/pstore/blk.c", i32 57, i32 1}
!30 = !{ptr @__param_blkdev, !31, !"__param_blkdev", i1 false, i1 false}
!31 = !{!"../fs/pstore/blk.c", i32 64, i32 1}
!32 = !{ptr @__UNIQUE_ID_blkdevtype279, !31, !"__UNIQUE_ID_blkdevtype279", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_blkdev280, !34, !"__UNIQUE_ID_blkdev280", i1 false, i1 false}
!34 = !{!"../fs/pstore/blk.c", i32 65, i32 1}
!35 = !{ptr @__ksymtab_register_pstore_device, !36, !"__ksymtab_register_pstore_device", i1 false, i1 false}
!36 = !{!"../fs/pstore/blk.c", i32 164, i32 1}
!37 = !{ptr @__ksymtab_unregister_pstore_device, !38, !"__ksymtab_unregister_pstore_device", i1 false, i1 false}
!38 = !{!"../fs/pstore/blk.c", i32 186, i32 1}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/pstore/blk.c", i32 246, i32 20}
!41 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pstore_blk_get_config._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @pstore_blk_get_config._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/pstore/blk.c", i32 247, i32 20}
!47 = !{ptr @pstore_blk_get_config._entry.3, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pstore_blk_get_config._entry_ptr.5, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/pstore/blk.c", i32 248, i32 22}
!51 = !{ptr @pstore_blk_get_config._entry.6, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @pstore_blk_get_config._entry_ptr.8, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/pstore/blk.c", i32 249, i32 23}
!55 = !{ptr @pstore_blk_get_config._entry.9, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @pstore_blk_get_config._entry_ptr.11, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__ksymtab_pstore_blk_get_config, !58, !"__ksymtab_pstore_blk_get_config", i1 false, i1 false}
!58 = !{!"../fs/pstore/blk.c", i32 253, i32 1}
!59 = !{ptr @__initcall__kmod_pstore_blk__281_346_pstore_blk_init7, !60, !"__initcall__kmod_pstore_blk__281_346_pstore_blk_init7", i1 false, i1 false}
!60 = !{!"../fs/pstore/blk.c", i32 346, i32 1}
!61 = !{ptr @__exitcall_pstore_blk_exit, !62, !"__exitcall_pstore_blk_exit", i1 false, i1 false}
!62 = !{!"../fs/pstore/blk.c", i32 356, i32 1}
!63 = !{ptr @__UNIQUE_ID_file282, !64, !"__UNIQUE_ID_file282", i1 false, i1 false}
!64 = !{!"../fs/pstore/blk.c", i32 358, i32 1}
!65 = !{ptr @__UNIQUE_ID_license283, !64, !"__UNIQUE_ID_license283", i1 false, i1 false}
!66 = !{ptr @__UNIQUE_ID_author284, !67, !"__UNIQUE_ID_author284", i1 false, i1 false}
!67 = !{!"../fs/pstore/blk.c", i32 359, i32 1}
!68 = !{ptr @__UNIQUE_ID_author285, !69, !"__UNIQUE_ID_author285", i1 false, i1 false}
!69 = !{!"../fs/pstore/blk.c", i32 360, i32 1}
!70 = !{ptr @__UNIQUE_ID_description286, !71, !"__UNIQUE_ID_description286", i1 false, i1 false}
!71 = !{!"../fs/pstore/blk.c", i32 361, i32 1}
!72 = !{ptr @best_effort, !73, !"best_effort", i1 false, i1 false}
!73 = !{!"../fs/pstore/blk.c", i32 55, i32 13}
!74 = !{ptr @psblk_file, !75, !"psblk_file", i1 false, i1 false}
!75 = !{!"../fs/pstore/blk.c", i32 72, i32 21}
!76 = !{ptr @pstore_device_info, !77, !"pstore_device_info", i1 false, i1 false}
!77 = !{!"../fs/pstore/blk.c", i32 73, i32 35}
!78 = !{ptr @__param_str_kmsg_size, !1, !"__param_str_kmsg_size", i1 false, i1 false}
!79 = !{ptr @kmsg_size, !80, !"kmsg_size", i1 false, i1 false}
!80 = !{!"../fs/pstore/blk.c", i32 22, i32 13}
!81 = !{ptr @__param_str_max_reason, !6, !"__param_str_max_reason", i1 false, i1 false}
!82 = !{ptr @max_reason, !83, !"max_reason", i1 false, i1 false}
!83 = !{!"../fs/pstore/blk.c", i32 26, i32 12}
!84 = !{ptr @__param_str_pmsg_size, !11, !"__param_str_pmsg_size", i1 false, i1 false}
!85 = !{ptr @pmsg_size, !86, !"pmsg_size", i1 false, i1 false}
!86 = !{!"../fs/pstore/blk.c", i32 32, i32 13}
!87 = !{ptr @__param_str_console_size, !16, !"__param_str_console_size", i1 false, i1 false}
!88 = !{ptr @console_size, !89, !"console_size", i1 false, i1 false}
!89 = !{!"../fs/pstore/blk.c", i32 40, i32 13}
!90 = !{ptr @__param_str_ftrace_size, !21, !"__param_str_ftrace_size", i1 false, i1 false}
!91 = !{ptr @ftrace_size, !92, !"ftrace_size", i1 false, i1 false}
!92 = !{!"../fs/pstore/blk.c", i32 48, i32 13}
!93 = !{ptr @__param_str_best_effort, !26, !"__param_str_best_effort", i1 false, i1 false}
!94 = !{ptr @__param_str_blkdev, !31, !"__param_str_blkdev", i1 false, i1 false}
!95 = !{ptr @__param_string_blkdev, !31, !"__param_string_blkdev", i1 false, i1 false}
!96 = !{ptr @.str.12, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/pstore/blk.c", i32 71, i32 8}
!98 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pstore_blk_lock, !97, !"pstore_blk_lock", i1 false, i1 false}
!100 = !{ptr @.str.14, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/pstore/blk.c", i32 104, i32 3}
!102 = !{ptr @.str.15, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__register_pstore_device._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @__register_pstore_device._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.17, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/pstore/blk.c", i32 108, i32 3}
!107 = !{ptr @__register_pstore_device._entry.16, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @__register_pstore_device._entry_ptr.18, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.20, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/pstore/blk.c", i32 112, i32 3}
!111 = !{ptr @__register_pstore_device._entry.19, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @__register_pstore_device._entry_ptr.21, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.23, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/pstore/blk.c", i32 116, i32 3}
!115 = !{ptr @__register_pstore_device._entry.22, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @__register_pstore_device._entry_ptr.24, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @__register_pstore_device._entry.25, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../fs/pstore/blk.c", i32 129, i32 2}
!119 = !{ptr @__register_pstore_device._entry_ptr.26, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @__register_pstore_device._entry.27, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../fs/pstore/blk.c", i32 130, i32 2}
!122 = !{ptr @__register_pstore_device._entry_ptr.28, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @__register_pstore_device._entry.29, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../fs/pstore/blk.c", i32 131, i32 2}
!125 = !{ptr @__register_pstore_device._entry_ptr.30, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @__register_pstore_device._entry.31, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../fs/pstore/blk.c", i32 132, i32 2}
!128 = !{ptr @__register_pstore_device._entry_ptr.32, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.33, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/pstore/blk.c", i32 136, i32 19}
!131 = !{ptr @blkdev, !132, !"blkdev", i1 false, i1 false}
!132 = !{!"../fs/pstore/blk.c", i32 63, i32 13}
!133 = !{ptr @.str.34, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/pstore/blk.c", i32 296, i32 3}
!135 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @__best_effort_init._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @__best_effort_init._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.37, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/pstore/blk.c", i32 312, i32 3}
!140 = !{ptr @__best_effort_init._entry.36, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @__best_effort_init._entry_ptr.38, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.39, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/pstore/blk.c", i32 215, i32 3}
!144 = !{ptr @.str.40, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @__register_pstore_blk._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @__register_pstore_blk._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.42, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/pstore/blk.c", i32 220, i32 3}
!149 = !{ptr @__register_pstore_blk._entry.41, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @__register_pstore_blk._entry_ptr.43, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/pstore/blk.c", i32 269, i32 3}
!153 = !{ptr @.str.45, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @early_boot_devpath._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @early_boot_devpath._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @devname, !157, !"devname", i1 false, i1 false}
!157 = !{!"../fs/pstore/blk.c", i32 257, i32 19}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i8 0, i8 2}
!170 = !{i64 612262}
