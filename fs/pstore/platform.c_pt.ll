; ModuleID = '/llk/IR_all_yes/fs/pstore/platform.c_pt.bc'
source_filename = "../fs/pstore/platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pstore_type_to_name\22, \22a\22\09"
module asm "\09.weak\09__crc_pstore_type_to_name\09\09\09\09"
module asm "\09.long\09__crc_pstore_type_to_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_type_to_name:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_type_to_name\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_type_to_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pstore_name_to_type\22, \22a\22\09"
module asm "\09.weak\09__crc_pstore_name_to_type\09\09\09\09"
module asm "\09.long\09__crc_pstore_name_to_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_name_to_type:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_name_to_type\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_name_to_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pstore_register\22, \22a\22\09"
module asm "\09.weak\09__crc_pstore_register\09\09\09\09"
module asm "\09.long\09__crc_pstore_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_register:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_register\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pstore_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_pstore_unregister\09\09\09\09"
module asm "\09.long\09__crc_pstore_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pstore_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pstore_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_pstore_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kmsg_dumper = type { %struct.list_head, ptr, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.pstore_zbackend = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.pstore_record = type { ptr, i32, i64, %struct.timespec64, ptr, i32, i32, i32, i32, i32, i8 }
%struct.pstore_info = type { ptr, ptr, %struct.semaphore, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.kmsg_dump_iter = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_update_ms = internal constant [17 x i8] c"pstore.update_ms\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pstore_update_ms = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_update_ms = internal constant %struct.kernel_param { ptr @__param_str_update_ms, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.41 { ptr @pstore_update_ms } }, section "__param", align 4
@__UNIQUE_ID_update_mstype177 = internal constant [30 x i8] c"pstore.parmtype=update_ms:int\00", section ".modinfo", align 1
@__UNIQUE_ID_update_ms178 = internal constant [210 x i8] c"pstore.parm=update_ms:milliseconds before pstore updates its content (default is -1, which means runtime updates are disabled; enabling this option may not be safe; it may lead to further corruption on Oopses)\00", section ".modinfo", align 1
@__param_str_backend = internal constant [15 x i8] c"pstore.backend\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@backend = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_backend = internal constant %struct.kernel_param { ptr @__param_str_backend, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @backend } }, section "__param", align 4
@__UNIQUE_ID_backendtype179 = internal constant [30 x i8] c"pstore.parmtype=backend:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_backend180 = internal constant [44 x i8] c"pstore.parm=backend:specific backend to use\00", section ".modinfo", align 1
@__param_str_compress = internal constant [16 x i8] c"pstore.compress\00", align 1
@compress = internal global { ptr, [28 x i8] } { ptr @.str.25, [28 x i8] zeroinitializer }, align 32
@__param_compress = internal constant %struct.kernel_param { ptr @__param_str_compress, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @compress } }, section "__param", align 4
@__UNIQUE_ID_compresstype181 = internal constant [31 x i8] c"pstore.parmtype=compress:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_compress182 = internal constant [40 x i8] c"pstore.parm=compress:compression to use\00", section ".modinfo", align 1
@kmsg_bytes = dso_local global { i32, [28 x i8] } { i32 10240, [28 x i8] zeroinitializer }, align 32
@pstore_type_to_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/pstore/platform.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@pstore_type_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [60 x i8] zeroinitializer }, align 32
@__kstrtab_pstore_type_to_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_type_to_name = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_type_to_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_type_to_name to i32), ptr @__kstrtab_pstore_type_to_name, ptr @__kstrtabns_pstore_type_to_name }, section "___ksymtab_gpl+pstore_type_to_name", align 4
@__kstrtab_pstore_name_to_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_name_to_type = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_name_to_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_name_to_type to i32), ptr @__kstrtab_pstore_name_to_type, ptr @__kstrtabns_pstore_name_to_type }, section "___ksymtab_gpl+pstore_name_to_type", align 4
@pstore_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014pstore: ignoring unexpected backend '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pstore_register\00", [16 x i8] zeroinitializer }, align 32
@pstore_register._entry_ptr = internal global ptr @pstore_register._entry, section ".printk_index", align 4
@pstore_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014pstore: backend '%s' must support at least one frontend\0A\00", [37 x i8] zeroinitializer }, align 32
@pstore_register._entry_ptr.6 = internal global ptr @pstore_register._entry.4, section ".printk_index", align 4
@pstore_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014pstore: backend '%s' must implement read() and write()\0A\00", [38 x i8] zeroinitializer }, align 32
@pstore_register._entry_ptr.9 = internal global ptr @pstore_register._entry.7, section ".printk_index", align 4
@psinfo_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psinfo_lock, i64 52), ptr getelementptr (i8, ptr @psinfo_lock, i64 52) }, ptr @psinfo_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@psinfo = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@pstore_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014pstore: backend '%s' already loaded: ignoring '%s'\0A\00", [42 x i8] zeroinitializer }, align 32
@pstore_register._entry_ptr.12 = internal global ptr @pstore_register._entry.10, section ".printk_index", align 4
@pstore_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&psinfo->read_mutex\00", [44 x i8] zeroinitializer }, align 32
@pstore_dumper = internal global { %struct.kmsg_dumper, [44 x i8] } { %struct.kmsg_dumper { %struct.list_head zeroinitializer, ptr @pstore_dump, i32 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@pstore_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016pstore: Registered %s as persistent store backend\0A\00", [43 x i8] zeroinitializer }, align 32
@pstore_register._entry_ptr.16 = internal global ptr @pstore_register._entry.14, section ".printk_index", align 4
@__kstrtab_pstore_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_register = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_register to i32), ptr @__kstrtab_pstore_register, ptr @__kstrtabns_pstore_register }, section "___ksymtab_gpl+pstore_register", align 4
@pstore_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @pstore_timefunc, i32 0, %struct.lockdep_map { ptr @.str.62, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@pstore_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @pstore_work, i64 4), ptr getelementptr (i8, ptr @pstore_work, i64 4) }, ptr @pstore_dowork, %struct.lockdep_map { ptr @pstore_work, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_pstore_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pstore_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pstore_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pstore_unregister to i32), ptr @__kstrtab_pstore_unregister, ptr @__kstrtabns_pstore_unregister }, section "___ksymtab_gpl+pstore_unregister", align 4
@pstore_get_backend_records._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013pstore: out of memory creating record\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pstore_get_backend_records\00", [37 x i8] zeroinitializer }, align 32
@pstore_get_backend_records._entry_ptr = internal global ptr @pstore_get_backend_records._entry, section ".printk_index", align 4
@pstore_get_backend_records._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014pstore: failed to create %d record(s) from '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@pstore_get_backend_records._entry_ptr.21 = internal global ptr @pstore_get_backend_records._entry.19, section ".printk_index", align 4
@pstore_get_backend_records._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013pstore: looping? Too many records seen from '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@pstore_get_backend_records._entry_ptr.24 = internal global ptr @pstore_get_backend_records._entry.22, section ".printk_index", align 4
@__initcall__kmod_pstore__184_841_pstore_init7 = internal global ptr @pstore_init, section ".initcall7.init", align 4
@__exitcall_pstore_exit = internal global ptr @pstore_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [46 x i8] c"pstore.author=Tony Luck <tony.luck@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [29 x i8] c"pstore.file=fs/pstore/pstore\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [19 x i8] c"pstore.license=GPL\00", section ".modinfo", align 1
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deflate\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmesg\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mce\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ftrace\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtas\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"powerpc-ofw\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerpc-common\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmsg\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"powerpc-opal\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"psinfo_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"psinfo_lock\00", [20 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@zbackend = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@allocate_buf_for_compression._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013pstore: Unknown compression: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allocate_buf_for_compression\00", [35 x i8] zeroinitializer }, align 32
@allocate_buf_for_compression._entry_ptr = internal global ptr @allocate_buf_for_compression._entry, section ".printk_index", align 4
@allocate_buf_for_compression._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pstore: Invalid compression size for %s: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@allocate_buf_for_compression._entry_ptr.43 = internal global ptr @allocate_buf_for_compression._entry.41, section ".printk_index", align 4
@allocate_buf_for_compression._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013pstore: Failed %d byte compression buffer allocation for: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@allocate_buf_for_compression._entry_ptr.46 = internal global ptr @allocate_buf_for_compression._entry.44, section ".printk_index", align 4
@allocate_buf_for_compression._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013pstore: crypto_alloc_comp('%s') failed: %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@allocate_buf_for_compression._entry_ptr.49 = internal global ptr @allocate_buf_for_compression._entry.47, section ".printk_index", align 4
@big_oops_buf_sz = internal global { i32, [28 x i8] } zeroinitializer, align 32
@big_oops_buf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@allocate_buf_for_compression._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016pstore: Using crash dump compression: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@allocate_buf_for_compression._entry_ptr.52 = internal global ptr @allocate_buf_for_compression._entry.50, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pstore_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013pstore: dump skipped in %s path: may corrupt error record\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pstore_dump\00", [20 x i8] zeroinitializer }, align 32
@pstore_dump._entry_ptr = internal global ptr @pstore_dump._entry, section ".printk_index", align 4
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NMI\00", [28 x i8] zeroinitializer }, align 32
@pstore_dump._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pstore: could not grab semaphore?!\0A\00", [58 x i8] zeroinitializer }, align 32
@pstore_dump._entry_ptr.58 = internal global ptr @pstore_dump._entry.56, section ".printk_index", align 4
@oopscount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s#%d Part%u\0A\00", [18 x i8] zeroinitializer }, align 32
@pstore_new_entry = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pstore_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013pstore: crypto_comp_compress failed, ret = %d!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pstore_compress\00", [16 x i8] zeroinitializer }, align 32
@pstore_compress._entry_ptr = internal global ptr @pstore_compress._entry, section ".printk_index", align 4
@pstore_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] zeroinitializer, ptr @pstore_console_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 0, i16 -1, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/pstore/platform.c:66\00", [40 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pstore_work\00", [20 x i8] zeroinitializer }, align 32
@decompress_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014pstore: ignored compressed record type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"decompress_record\00", [46 x i8] zeroinitializer }, align 32
@decompress_record._entry_ptr = internal global ptr @decompress_record._entry, section ".printk_index", align 4
@decompress_record._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014pstore: no decompression method initialized!\0A\00", [48 x i8] zeroinitializer }, align 32
@decompress_record._entry_ptr.68 = internal global ptr @decompress_record._entry.66, section ".printk_index", align 4
@decompress_record._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013pstore: crypto_comp_decompress failed, ret = %d!\0A\00", [44 x i8] zeroinitializer }, align 32
@decompress_record._entry_ptr.71 = internal global ptr @decompress_record._entry.69, section ".printk_index", align 4
@zbackends = internal constant { [7 x %struct.pstore_zbackend], [40 x i8] } { [7 x %struct.pstore_zbackend] [%struct.pstore_zbackend { ptr @zbufsize_deflate, ptr @.str.25 }, %struct.pstore_zbackend { ptr @zbufsize_lzo, ptr @.str.72 }, %struct.pstore_zbackend { ptr @zbufsize_lz4, ptr @.str.73 }, %struct.pstore_zbackend { ptr @zbufsize_lz4, ptr @.str.74 }, %struct.pstore_zbackend { ptr @zbufsize_842, ptr @.str.75 }, %struct.pstore_zbackend { ptr @zbufsize_zstd, ptr @.str.76 }, %struct.pstore_zbackend zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lz4\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lz4hc\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"842\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zstd\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"pstore_update_ms\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 43, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 79, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 83, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"kmsg_bytes\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 104, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 118, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 119, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"pstore_type_names\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 51, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 567, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 573, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 580, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"psinfo_lock\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"psinfo\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 77, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 587, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 596, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"pstore_dumper\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 474, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 624, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"pstore_timer\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"pstore_work\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 756, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 785, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 788, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 85, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 52, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 53, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 54, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 55, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 56, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 57, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 58, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 59, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 60, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 76, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 33, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 34, i32 28 }
@___asan_gen_.216 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 35, i32 39 }
@___asan_gen_.218 = private unnamed_addr constant [4 x i8] c"tfm\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 93, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 299, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 305, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 312, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 320, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [16 x i8] c"big_oops_buf_sz\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 101, i32 15 }
@___asan_gen_.251 = private unnamed_addr constant [13 x i8] c"big_oops_buf\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 100, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 330, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 399, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 404, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant [10 x i8] c"oopscount\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 112, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 436, i32 41 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"pstore_new_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 277, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [15 x i8] c"pstore_console\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 507, i32 23 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 66, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 69, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 682, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 688, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 703, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [10 x i8] c"zbackends\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 227, i32 37 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 237, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 243, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 249, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 255, i32 12 }
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.340 = private constant [24 x i8] c"../fs/pstore/platform.c\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 261, i32 12 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_backend180, ptr @__UNIQUE_ID_backendtype179, ptr @__UNIQUE_ID_compress182, ptr @__UNIQUE_ID_compresstype181, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__UNIQUE_ID_update_ms178, ptr @__UNIQUE_ID_update_mstype177, ptr @__exitcall_pstore_exit, ptr @__initcall__kmod_pstore__184_841_pstore_init7, ptr @__ksymtab_pstore_name_to_type, ptr @__ksymtab_pstore_register, ptr @__ksymtab_pstore_type_to_name, ptr @__ksymtab_pstore_unregister, ptr @__param_backend, ptr @__param_compress, ptr @__param_update_ms, ptr @allocate_buf_for_compression._entry, ptr @allocate_buf_for_compression._entry.41, ptr @allocate_buf_for_compression._entry.44, ptr @allocate_buf_for_compression._entry.47, ptr @allocate_buf_for_compression._entry.50, ptr @allocate_buf_for_compression._entry_ptr, ptr @allocate_buf_for_compression._entry_ptr.43, ptr @allocate_buf_for_compression._entry_ptr.46, ptr @allocate_buf_for_compression._entry_ptr.49, ptr @allocate_buf_for_compression._entry_ptr.52, ptr @decompress_record._entry, ptr @decompress_record._entry.66, ptr @decompress_record._entry.69, ptr @decompress_record._entry_ptr, ptr @decompress_record._entry_ptr.68, ptr @decompress_record._entry_ptr.71, ptr @pstore_compress._entry, ptr @pstore_compress._entry_ptr, ptr @pstore_dump._entry, ptr @pstore_dump._entry.56, ptr @pstore_dump._entry_ptr, ptr @pstore_dump._entry_ptr.58, ptr @pstore_exit, ptr @pstore_get_backend_records._entry, ptr @pstore_get_backend_records._entry.19, ptr @pstore_get_backend_records._entry.22, ptr @pstore_get_backend_records._entry_ptr, ptr @pstore_get_backend_records._entry_ptr.21, ptr @pstore_get_backend_records._entry_ptr.24, ptr @pstore_register._entry, ptr @pstore_register._entry.10, ptr @pstore_register._entry.14, ptr @pstore_register._entry.4, ptr @pstore_register._entry.7, ptr @pstore_register._entry_ptr, ptr @pstore_register._entry_ptr.12, ptr @pstore_register._entry_ptr.16, ptr @pstore_register._entry_ptr.6, ptr @pstore_register._entry_ptr.9, ptr @pstore_update_ms, ptr @backend, ptr @compress, ptr @kmsg_bytes, ptr @.str, ptr @.str.1, ptr @pstore_type_names, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @psinfo_lock, ptr @psinfo, ptr @.str.11, ptr @pstore_register.__key, ptr @.str.13, ptr @pstore_dumper, ptr @.str.15, ptr @pstore_timer, ptr @pstore_work, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @sema_init.__key, ptr @.str.37, ptr @.str.38, ptr @tfm, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @big_oops_buf_sz, ptr @big_oops_buf, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @oopscount, ptr @.str.59, ptr @pstore_new_entry, ptr @.str.60, ptr @.str.61, ptr @pstore_console, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @zbackends, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_update_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backend to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compress to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmsg_bytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_type_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psinfo_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psinfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_dumper to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_get_backend_records._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_get_backend_records._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_get_backend_records._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_buf_for_compression._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_buf_for_compression._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_buf_for_compression._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_buf_for_compression._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @big_oops_buf_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @big_oops_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_buf_for_compression._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_dump._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oopscount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_new_entry to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pstore_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decompress_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decompress_record._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decompress_record._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zbackends to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pstore_set_kmsg_bytes(i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %bytes, ptr @kmsg_bytes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pstore_type_to_name(i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp = icmp ugt i32 %type, 8
  br i1 %cmp, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @pstore_type_to_name.__already_done, align 1
  br i1 %.b43, label %land.rhs.return_crit_edge, label %if.then, !prof !214

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @pstore_type_to_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr [9 x ptr], ptr @pstore_type_names, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end39 ], [ @.str.1, %if.then ], [ @.str.1, %land.rhs.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_name_to_type(ptr nocapture noundef readonly %name) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.26, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %entry
  %call.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.27, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %call.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.28, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %call.3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.29, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %call.4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.30, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %call.5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.31, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %call.6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.32, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %call.7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.33, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  %call.8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.34, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  %spec.select = select i1 %tobool.not.8, i32 8, i32 9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ 4, %for.inc.3.cleanup_crit_edge ], [ 5, %for.inc.4.cleanup_crit_edge ], [ 6, %for.inc.5.cleanup_crit_edge ], [ 7, %for.inc.6.cleanup_crit_edge ], [ %spec.select, %for.inc.7 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_record_init(ptr nocapture noundef writeonly %record, ptr noundef %psinfo) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %record, i32 0, i32 64)
  %1 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %psinfo, ptr %record, align 8
  %time = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #14
  %call = tail call i64 @ktime_get_real_fast_ns() #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call) #14
  %2 = call ptr @memcpy(ptr %time, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_fast_ns() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pstore_register(ptr noundef %psi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @backend, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %2) #18
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %name9 = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %5 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %6) #18
  br label %return

if.end11:                                         ; preds = %if.end
  %read = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 11
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %if.end11.do.end16_crit_edge, label %lor.lhs.false

if.end11.do.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end11
  %write = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 12
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %lor.lhs.false.do.end16_crit_edge, label %if.end20

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %if.end11.do.end16_crit_edge
  %name18 = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %11 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %12) #18
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @psinfo_lock, i32 noundef 0) #14
  %13 = load ptr, ptr @psinfo, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %if.end29, label %do.end24

do.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %name26 = getelementptr inbounds %struct.pstore_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name26, align 4
  %name27 = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %16 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name27, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %15, ptr noundef %17) #18
  tail call void @mutex_unlock(ptr noundef nonnull @psinfo_lock) #14
  br label %return

if.end29:                                         ; preds = %if.end20
  %write_user = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 13
  %18 = ptrtoint ptr %write_user to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_user, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.end33_crit_edge

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %write_user to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pstore_write_user_compat, ptr %write_user, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  store ptr %psi, ptr @psinfo, align 4
  %read_mutex = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %read_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @pstore_register.__key) #14
  %21 = load ptr, ptr @psinfo, align 4
  %buf_lock = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2
  %wait_list1.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %buf_lock to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buf_lock, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 2
  %24 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 3
  %25 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 4
  %26 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.37, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 0, i32 4, i32 5
  %30 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %32 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.pstore_info, ptr %21, i32 0, i32 2, i32 2, i32 1
  %33 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end33.if.end39_crit_edge, label %if.then38

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @allocate_buf_for_compression()
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end33.if.end39_crit_edge
  tail call void @pstore_get_records(i32 noundef 0) #14
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and41 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end44_crit_edge, label %if.then43

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %38 = load ptr, ptr @psinfo, align 4
  %max_reason = getelementptr inbounds %struct.pstore_info, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %max_reason to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_reason, align 4
  store i32 %40, ptr getelementptr inbounds (%struct.kmsg_dumper, ptr @pstore_dumper, i32 0, i32 2), align 4
  %call.i = tail call i32 @kmsg_dump_register(ptr noundef nonnull @pstore_dumper) #14
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end39.if.end44_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and46 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end49_crit_edge, label %if.then48

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %43 = load ptr, ptr @psinfo, align 4
  %name.i = getelementptr inbounds %struct.pstore_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 4
  %call.i85 = tail call i32 @strscpy(ptr noundef nonnull @pstore_console, ptr noundef %45, i32 noundef 16) #14
  store i16 21, ptr getelementptr inbounds (%struct.console, ptr @pstore_console, i32 0, i32 8), align 4
  tail call void @register_console(ptr noundef nonnull @pstore_console) #14
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end44.if.end49_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and51 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.if.end54_crit_edge, label %if.then53

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pstore_register_ftrace() #14
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end49.if.end54_crit_edge
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and56 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end59_crit_edge, label %if.then58

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pstore_register_pmsg() #14
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  %50 = load i32, ptr @pstore_update_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp slt i32 %50, 0
  br i1 %cmp.i, label %if.end59.pstore_timer_kick.exit_crit_edge, label %if.end.i

if.end59.pstore_timer_kick.exit_crit_edge:        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %pstore_timer_kick.exit

if.end.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %50) #14
  %add.i = add i32 %call2.i.i, %51
  %call1.i = tail call i32 @mod_timer(ptr noundef nonnull @pstore_timer, i32 noundef %add.i) #14
  br label %pstore_timer_kick.exit

pstore_timer_kick.exit:                           ; preds = %if.end.i, %if.end59.pstore_timer_kick.exit_crit_edge
  %name60 = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %52 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name60, align 4
  %call61 = tail call noalias ptr @kstrdup(ptr noundef %53, i32 noundef 3264) #14
  store ptr %call61, ptr @backend, align 4
  %54 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name60, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %55) #18
  tail call void @mutex_unlock(ptr noundef nonnull @psinfo_lock) #14
  br label %return

return:                                           ; preds = %pstore_timer_kick.exit, %do.end24, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -16, %do.end24 ], [ 0, %pstore_timer_kick.exit ], [ -22, %do.end16 ], [ -22, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_write_user_compat(ptr noundef %record, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %3) #14
  %4 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buf1, align 8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call to i32
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %record, align 8
  %write = getelementptr inbounds %struct.pstore_info, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %call9 = tail call i32 %9(ptr noundef %record) #14
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf1, align 8
  tail call void @kfree(ptr noundef %11) #14
  br label %out

out:                                              ; preds = %if.end8, %if.then5
  %ret.0 = phi i32 [ %5, %if.then5 ], [ %call9, %if.end8 ]
  %12 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %out.cleanup_crit_edge, label %cond.false, !prof !215

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.false:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %14, %cond.false ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @allocate_buf_for_compression() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @zbackend, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @psinfo, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr @tfm, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.pstore_zbackend, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @crypto_has_alg(ptr noundef %4, i32 noundef 2, i32 noundef 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  %5 = load ptr, ptr @zbackend, align 4
  br i1 %tobool5.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %name7 = getelementptr inbounds %struct.pstore_zbackend, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name7, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %7) #18
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %10 = load ptr, ptr @psinfo, align 4
  %bufsize = getelementptr inbounds %struct.pstore_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bufsize, align 4
  %call10 = tail call i32 %9(i32 noundef %12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10)
  %cmp = icmp slt i32 %call10, 1
  br i1 %cmp, label %do.end14, label %if.end8.i

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %13 = load ptr, ptr @zbackend, align 4
  %name16 = getelementptr inbounds %struct.pstore_zbackend, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %15, i32 noundef %call10) #18
  br label %cleanup

if.end8.i:                                        ; preds = %if.end9
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call10, i32 noundef 3264) #19
  %tobool20.not = icmp eq ptr %call9.i, null
  %16 = load ptr, ptr @zbackend, align 4
  %name26 = getelementptr inbounds %struct.pstore_zbackend, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name26, align 4
  br i1 %tobool20.not, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %call10, ptr noundef %18) #18
  br label %cleanup

if.end28:                                         ; preds = %if.end8.i
  %call.i57 = tail call ptr @crypto_alloc_base(ptr noundef %18, i32 noundef 2, i32 noundef 15) #14
  %tobool.not.i = icmp eq ptr %call.i57, null
  %cmp.i58 = icmp ugt ptr %call.i57, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i58
  br i1 %spec.select.i, label %if.then32, label %if.end40

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  %19 = load ptr, ptr @zbackend, align 4
  %name37 = getelementptr inbounds %struct.pstore_zbackend, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %name37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name37, align 4
  %22 = ptrtoint ptr %call.i57 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %21, i32 noundef %22) #18
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call.i57, ptr @tfm, align 4
  store i32 %call10, ptr @big_oops_buf_sz, align 4
  store ptr %call9.i, ptr @big_oops_buf, align 4
  %23 = load ptr, ptr @zbackend, align 4
  %name45 = getelementptr inbounds %struct.pstore_zbackend, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %25) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then32, %do.end24, %do.end14, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_get_records(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_register_ftrace() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_register_pmsg() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_unregister(ptr noundef %psi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @psinfo_lock, i32 noundef 0) #14
  %0 = load ptr, ptr @psinfo, align 4
  %cmp.not = icmp eq ptr %0, %psi
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !214

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 640, i32 noundef 9, ptr noundef null) #14
  br label %return.sink.split

if.end24:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 6
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pstore_unregister_pmsg() #14
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and29 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pstore_unregister_ftrace() #14
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and34 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @unregister_console(ptr noundef nonnull @pstore_console) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end32.if.end37_crit_edge
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and39 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %call.i52 = tail call i32 @kmsg_dump_unregister(ptr noundef nonnull @pstore_dumper) #14
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @pstore_timer) #14
  %call43 = tail call zeroext i1 @flush_work(ptr noundef nonnull @pstore_work) #14
  %call44 = tail call i32 @pstore_put_backend_records(ptr noundef nonnull %psi) #14
  %9 = load ptr, ptr @tfm, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end42.free_buf_for_compression.exit_crit_edge, label %if.then.i

if.end42.free_buf_for_compression.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_buf_for_compression.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %9, ptr noundef nonnull %9) #14
  store ptr null, ptr @tfm, align 4
  br label %free_buf_for_compression.exit

free_buf_for_compression.exit:                    ; preds = %if.then.i, %if.end42.free_buf_for_compression.exit_crit_edge
  %10 = load ptr, ptr @big_oops_buf, align 4
  tail call void @kfree(ptr noundef %10) #14
  store ptr null, ptr @big_oops_buf, align 4
  store i32 0, ptr @big_oops_buf_sz, align 4
  store ptr null, ptr @psinfo, align 4
  %11 = load ptr, ptr @backend, align 4
  tail call void @kfree(ptr noundef %11) #14
  store ptr null, ptr @backend, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %free_buf_for_compression.exit, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @psinfo_lock) #14
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister_pmsg() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pstore_unregister_ftrace() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_put_backend_records(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pstore_get_backend_records(ptr noundef %psi, ptr noundef %root, i32 noundef %quiet) local_unnamed_addr #1 align 64 {
entry:
  %unzipped_len.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %psi, null
  %tobool1.not = icmp eq ptr %root, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup50_crit_edge, label %if.end

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup50

if.end:                                           ; preds = %entry
  %read_mutex = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %read_mutex, i32 noundef 0) #14
  %open = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 9
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 %1(ptr noundef nonnull %psi) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %if.end40.thread

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end40.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %read_mutex) #14
  br label %cleanup50

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %read = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool22.not = icmp eq i32 %quiet, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %failed.0103 = phi i32 [ 0, %if.end6 ], [ %failed.2.ph, %for.inc.for.body_crit_edge ]
  %stop_loop.0102 = phi i32 [ 65536, %if.end6 ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #20
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %for.end

if.end12:                                         ; preds = %for.body
  %3 = call ptr @memset(ptr %call7.i.i, i32 0, i32 64)
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %psi, ptr %call7.i.i, align 8
  %time.i = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #14
  %call.i = call i64 @ktime_get_real_fast_ns() #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %call.i) #14
  %5 = call ptr @memcpy(ptr %time.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #14
  %6 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read, align 4
  %call13 = call i32 %7(ptr noundef nonnull %call7.i.i) #14
  %size = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call13, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp = icmp slt i32 %call13, 1
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %for.end

if.end16:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unzipped_len.i) #14
  %compressed.i = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %compressed.i, align 8, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end16.decompress_record.exit_crit_edge, label %if.end.i

if.end16.decompress_record.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %decompress_record.exit

if.end.i:                                         ; preds = %if.end16
  %type.i = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %12) #18
  br label %decompress_record.exit

if.end3.i:                                        ; preds = %if.end.i
  %13 = load ptr, ptr @big_oops_buf, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #18
  br label %decompress_record.exit

if.end11.i:                                       ; preds = %if.end3.i
  %14 = load i32, ptr @big_oops_buf_sz, align 4
  %15 = ptrtoint ptr %unzipped_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %unzipped_len.i, align 4
  %ecc_notice_size.i = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %ecc_notice_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ecc_notice_size.i, align 8
  %add.i = add i32 %17, %14
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #19
  %tobool13.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not.i, label %if.end11.i.decompress_record.exit_crit_edge, label %if.end15.i

if.end11.i.decompress_record.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %decompress_record.exit

if.end15.i:                                       ; preds = %if.end11.i
  %18 = load ptr, ptr @tfm, align 4
  %buf.i = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf.i, align 8
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %call16.i = call i32 @crypto_comp_decompress(ptr noundef %18, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %unzipped_len.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end24.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call16.i) #18
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %decompress_record.exit

if.end24.i:                                       ; preds = %if.end15.i
  %23 = ptrtoint ptr %unzipped_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unzipped_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %24
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf.i, align 8
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %add.ptr27.i = getelementptr i8, ptr %26, i32 %28
  %29 = ptrtoint ptr %ecc_notice_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ecc_notice_size.i, align 8
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr27.i, i32 %30)
  %add30.i = add i32 %30, %24
  %call31.i = call ptr @kmemdup(ptr noundef nonnull %call9.i.i, i32 noundef %add30.i, i32 noundef 3264) #14
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.end24.i.decompress_record.exit_crit_edge, label %if.end34.i

if.end24.i.decompress_record.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %decompress_record.exit

if.end34.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 8
  call void @kfree(ptr noundef %33) #14
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call31.i, ptr %buf.i, align 8
  %35 = ptrtoint ptr %unzipped_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %unzipped_len.i, align 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %size, align 4
  %38 = ptrtoint ptr %compressed.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %compressed.i, align 8
  br label %decompress_record.exit

decompress_record.exit:                           ; preds = %if.end34.i, %if.end24.i.decompress_record.exit_crit_edge, %do.end21.i, %if.end11.i.decompress_record.exit_crit_edge, %do.end8.i, %do.end.i, %if.end16.decompress_record.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unzipped_len.i) #14
  %call17 = call i32 @pstore_mkfile(ptr noundef nonnull %root, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %decompress_record.exit.for.inc_crit_edge, label %if.then19

decompress_record.exit.for.inc_crit_edge:         ; preds = %decompress_record.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then19:                                        ; preds = %decompress_record.exit
  call void @__sanitizer_cov_trace_pc() #16
  %buf = getelementptr inbounds %struct.pstore_record, ptr %call7.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 8
  call void @kfree(ptr noundef %40) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call17)
  %cmp20.not = icmp ne i32 %call17, -17
  %or.cond82 = or i1 %tobool22.not, %cmp20.not
  %inc = zext i1 %or.cond82 to i32
  %spec.select = add i32 %failed.0103, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %decompress_record.exit.for.inc_crit_edge
  %failed.2.ph = phi i32 [ %spec.select, %if.then19 ], [ %failed.0103, %decompress_record.exit.for.inc_crit_edge ]
  %dec = add nsw i32 %stop_loop.0102, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %do.end
  %stop_loop.0100 = phi i32 [ %stop_loop.0102, %do.end ], [ %stop_loop.0102, %if.then15 ], [ 0, %for.inc.for.end_crit_edge ]
  %failed.097 = phi i32 [ %failed.0103, %do.end ], [ %failed.0103, %if.then15 ], [ %failed.2.ph, %for.inc.for.end_crit_edge ]
  %close = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 10
  %41 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %close, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %for.end.out_crit_edge, label %if.then28

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %call30 = call i32 %42(ptr noundef nonnull %psi) #14
  br label %out

out:                                              ; preds = %if.then28, %for.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %read_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failed.097)
  %tobool33.not = icmp eq i32 %failed.097, 0
  br i1 %tobool33.not, label %out.if.end40_crit_edge, label %do.end37

out.if.end40_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

do.end37:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %failed.097, ptr noundef %44) #18
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %out.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop_loop.0100)
  %tobool41.not = icmp eq i32 %stop_loop.0100, 0
  br i1 %tobool41.not, label %do.end45, label %if.end40.cleanup50_crit_edge

if.end40.cleanup50_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup50

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %name47 = getelementptr inbounds %struct.pstore_info, ptr %psi, i32 0, i32 1
  %45 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name47, align 4
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %46) #18
  br label %cleanup50

cleanup50:                                        ; preds = %do.end45, %if.end40.cleanup50_crit_edge, %if.end40.thread, %entry.cleanup50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_mkfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pstore_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pstore_choose_compression() #21
  tail call fastcc void @allocate_buf_for_compression()
  %call = tail call i32 @pstore_init_fs() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @tfm, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.free_buf_for_compression.exit_crit_edge, label %if.then.i

if.then.free_buf_for_compression.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_buf_for_compression.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %0, ptr noundef nonnull %0) #14
  store ptr null, ptr @tfm, align 4
  br label %free_buf_for_compression.exit

free_buf_for_compression.exit:                    ; preds = %if.then.i, %if.then.free_buf_for_compression.exit_crit_edge
  %1 = load ptr, ptr @big_oops_buf, align 4
  tail call void @kfree(ptr noundef %1) #14
  store ptr null, ptr @big_oops_buf, align 4
  store i32 0, ptr @big_oops_buf_sz, align 4
  br label %if.end

if.end:                                           ; preds = %free_buf_for_compression.exit, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pstore_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pstore_exit_fs() #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pstore_exit_fs() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_dump(ptr nocapture noundef readnone %dumper, i32 noundef %reason) #1 align 64 {
entry:
  %outlen.addr.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %iter = alloca %struct.kmsg_dump_iter, align 8
  %dump_size = alloca i32, align 4
  %record = alloca %struct.pstore_record, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #14
  %0 = call ptr @memset(ptr %iter, i32 255, i32 16)
  %call = tail call ptr @kmsg_dump_reason_str(i32 noundef %reason) #14
  %1 = load ptr, ptr @psinfo, align 4
  %buf_lock = getelementptr inbounds %struct.pstore_info, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @down_trylock(ptr noundef %buf_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %5, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %6 = add i32 %reason, -1
  %switch.and.i = and i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %retval.0.i = or i1 %switch.selectcmp.i, %tobool.not.i
  br i1 %retval.0.i, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %7 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %10, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool5.not, ptr %call, ptr @.str.55
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %spec.select) #18
  br label %cleanup58

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr @psinfo, align 4
  %buf_lock7 = getelementptr inbounds %struct.pstore_info, ptr %11, i32 0, i32 2
  %call8 = tail call i32 @down_interruptible(ptr noundef %buf_lock7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %do.end13

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #18
  br label %cleanup58

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @kmsg_dump_rewind(ptr noundef nonnull %iter) #14
  %12 = load i32, ptr @oopscount, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr @oopscount, align 4
  %13 = load i32, ptr @kmsg_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp95.not = icmp eq i32 %13, 0
  br i1 %cmp95.not, label %if.end17.while.end_crit_edge, label %while.body.lr.ph

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end17
  %time.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %count = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 7
  %reason18 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 8
  %part19 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 9
  %buf20 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %size38 = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %compressed = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reason)
  %cmp46 = icmp eq i32 %reason, 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %total.097 = phi i32 [ 0, %while.body.lr.ph ], [ %add50, %cleanup.while.body_crit_edge ]
  %part.096 = phi i32 [ 1, %while.body.lr.ph ], [ %inc51, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dump_size) #14
  %14 = ptrtoint ptr %dump_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %dump_size, align 4, !annotation !217
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %record) #14
  %15 = load ptr, ptr @psinfo, align 4
  %16 = call ptr @memset(ptr %record, i32 0, i32 64)
  %17 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %record, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #14
  %call.i = call i64 @ktime_get_real_fast_ns() #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %call.i) #14
  %18 = call ptr @memcpy(ptr %time.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #14
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type, align 4
  %20 = load i32, ptr @oopscount, align 4
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %count, align 4
  %22 = ptrtoint ptr %reason18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %reason, ptr %reason18, align 8
  %23 = ptrtoint ptr %part19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %part.096, ptr %part19, align 4
  %24 = load ptr, ptr @psinfo, align 4
  %buf = getelementptr inbounds %struct.pstore_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %buf20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %buf20, align 8
  %28 = load ptr, ptr @big_oops_buf, align 4
  %tobool21.not = icmp eq ptr %28, null
  %bufsize = getelementptr inbounds %struct.pstore_info, ptr %24, i32 0, i32 4
  %spec.select93 = select i1 %tobool21.not, ptr %26, ptr %28
  %spec.select94 = select i1 %tobool21.not, ptr %bufsize, ptr @big_oops_buf_sz
  %29 = ptrtoint ptr %spec.select94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %dst_size.0 = load i32, ptr %spec.select94, align 4
  %call25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %spec.select93, i32 noundef %dst_size.0, ptr noundef nonnull @.str.59, ptr noundef %call, i32 noundef %20, i32 noundef %part.096)
  %sub = sub i32 %dst_size.0, %call25
  %add.ptr = getelementptr i8, ptr %spec.select93, i32 %call25
  %call26 = call zeroext i1 @kmsg_dump_get_buffer(ptr noundef nonnull %iter, i1 noundef zeroext true, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %dump_size) #14
  br i1 %call26, label %if.end28, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %record) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dump_size) #14
  br label %while.end

if.end28:                                         ; preds = %while.body
  %30 = load ptr, ptr @big_oops_buf, align 4
  %tobool29.not = icmp eq ptr %30, null
  br i1 %tobool29.not, label %if.else40, label %if.then30

if.then30:                                        ; preds = %if.end28
  %31 = load ptr, ptr @psinfo, align 4
  %buf31 = getelementptr inbounds %struct.pstore_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %buf31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf31, align 4
  %34 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dump_size, align 4
  %add = add i32 %35, %call25
  %bufsize32 = getelementptr inbounds %struct.pstore_info, ptr %31, i32 0, i32 4
  %36 = ptrtoint ptr %bufsize32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bufsize32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen.addr.i)
  %38 = ptrtoint ptr %outlen.addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %outlen.addr.i, align 4
  %39 = load ptr, ptr @tfm, align 4
  %call.i81 = call i32 @crypto_comp_compress(ptr noundef %39, ptr noundef %spec.select93, i32 noundef %add, ptr noundef %33, ptr noundef nonnull %outlen.addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call.i81) #18
  br label %pstore_compress.exit

if.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %outlen.addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %outlen.addr.i, align 4
  br label %pstore_compress.exit

pstore_compress.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i83 = phi i32 [ %call.i81, %do.end.i ], [ %41, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i83)
  %cmp34 = icmp sgt i32 %retval.0.i83, 0
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %pstore_compress.exit
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %compressed to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %compressed, align 8
  br label %if.end43

if.else36:                                        ; preds = %pstore_compress.exit
  %43 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dump_size, align 4
  %add.i = add i32 %44, %call25
  %45 = load ptr, ptr @psinfo, align 4
  %bufsize.i = getelementptr inbounds %struct.pstore_info, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bufsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %47)
  %cmp.i = icmp ugt i32 %add.i, %47
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i = add i32 %add.i, %call25
  %add2.i = sub i32 %sub.i, %47
  %buf.i = getelementptr inbounds %struct.pstore_info, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf.i, align 4
  %50 = load ptr, ptr @big_oops_buf, align 4
  %51 = call ptr @memcpy(ptr %49, ptr %50, i32 %call25)
  %52 = load ptr, ptr @psinfo, align 4
  %buf3.i = getelementptr inbounds %struct.pstore_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %buf3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf3.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %call25
  %add.ptr4.i = getelementptr i8, ptr %50, i32 %add2.i
  %bufsize5.i = getelementptr inbounds %struct.pstore_info, ptr %52, i32 0, i32 4
  %55 = ptrtoint ptr %bufsize5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bufsize5.i, align 4
  %sub6.i = sub i32 %56, %call25
  %57 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr4.i, i32 %sub6.i)
  %58 = load ptr, ptr @psinfo, align 4
  %bufsize7.i = getelementptr inbounds %struct.pstore_info, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %bufsize7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bufsize7.i, align 4
  br label %if.end43

if.else.i:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #16
  %buf8.i = getelementptr inbounds %struct.pstore_info, ptr %45, i32 0, i32 3
  %61 = ptrtoint ptr %buf8.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf8.i, align 4
  %63 = load ptr, ptr @big_oops_buf, align 4
  %64 = call ptr @memcpy(ptr %62, ptr %63, i32 %add.i)
  br label %if.end43

if.else40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dump_size, align 4
  %add41 = add i32 %66, %call25
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.else.i, %if.then.i, %if.then35
  %retval.0.i83.sink = phi i32 [ %retval.0.i83, %if.then35 ], [ %add41, %if.else40 ], [ %60, %if.then.i ], [ %add.i, %if.else.i ]
  %67 = ptrtoint ptr %size38 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i83.sink, ptr %size38, align 4
  %68 = load ptr, ptr @psinfo, align 4
  %write = getelementptr inbounds %struct.pstore_info, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write, align 4
  %call44 = call i32 %70(ptr noundef nonnull %record) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 0
  %or.cond = and i1 %cmp46, %cmp45
  br i1 %or.cond, label %if.then47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then47:                                        ; preds = %if.end43
  store i1 true, ptr @pstore_new_entry, align 4
  %71 = load i32, ptr @pstore_update_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i85 = icmp slt i32 %71, 0
  br i1 %cmp.i85, label %if.then47.cleanup_crit_edge, label %if.end.i86

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i86:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %71) #14
  %add.i87 = add i32 %call2.i.i, %72
  %call1.i88 = call i32 @mod_timer(ptr noundef nonnull @pstore_timer, i32 noundef %add.i87) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i86, %if.then47.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  %73 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size38, align 4
  %add50 = add i32 %74, %total.097
  %inc51 = add i32 %part.096, 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %record) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dump_size) #14
  %75 = load i32, ptr @kmsg_bytes, align 4
  %cmp = icmp ult i32 %add50, %75
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %if.end17.while.end_crit_edge
  %76 = load ptr, ptr @psinfo, align 4
  %buf_lock57 = getelementptr inbounds %struct.pstore_info, ptr %76, i32 0, i32 2
  call void @up(ptr noundef %buf_lock57) #14
  br label %cleanup58

cleanup58:                                        ; preds = %while.end, %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmsg_dump_reason_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump_rewind(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kmsg_dump_get_buffer(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmsg_dump_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_console_write(ptr nocapture noundef readnone %con, ptr noundef %s, i32 noundef %c) #1 align 64 {
entry:
  %record = alloca %struct.pstore_record, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %record) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c)
  %tobool.not = icmp eq i32 %c, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load ptr, ptr @psinfo, align 4
  %1 = call ptr @memset(ptr %record, i32 0, i32 64)
  %2 = ptrtoint ptr %record to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %record, align 8
  %time.i = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 3
  %call.i = tail call i64 @ktime_get_real_fast_ns() #14
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %time.i, i64 noundef %call.i) #14
  %type = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %type, align 4
  %buf = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %s, ptr %buf, align 8
  %size = getelementptr inbounds %struct.pstore_record, ptr %record, i32 0, i32 5
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %c, ptr %size, align 4
  %6 = load ptr, ptr @psinfo, align 4
  %write = getelementptr inbounds %struct.pstore_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %call = call i32 %8(ptr noundef nonnull %record) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %record) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmsg_dump_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_timefunc(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pstore_new_entry, align 4
  br i1 %.b, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i1 false, ptr @pstore_new_entry, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @pstore_work) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @pstore_update_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %if.end.pstore_timer_kick.exit_crit_edge, label %if.end.i

if.end.pstore_timer_kick.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pstore_timer_kick.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #14
  %add.i = add i32 %call2.i.i, %2
  %call1.i = tail call i32 @mod_timer(ptr noundef nonnull @pstore_timer, i32 noundef %add.i) #14
  br label %pstore_timer_kick.exit

pstore_timer_kick.exit:                           ; preds = %if.end.i, %if.end.pstore_timer_kick.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pstore_dowork(ptr nocapture noundef readnone %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pstore_get_records(i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pstore_choose_compression() unnamed_addr #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @compress, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %1 = phi ptr [ %3, %for.inc.for.body_crit_edge ], [ @.str.25, %entry.for.body_crit_edge ]
  %step.010 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @zbackends, %entry.for.body_crit_edge ]
  %call = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %step.010, ptr @zbackend, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.pstore_zbackend, ptr %step.010, i32 1
  %name = getelementptr %struct.pstore_zbackend, ptr %step.010, i32 1, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @pstore_init_fs() local_unnamed_addr #6 section ".init.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zbufsize_deflate(i32 noundef %size) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %size, -4000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6001, i32 %0)
  %inbounds9 = icmp ult i32 %0, 6001
  br i1 %inbounds9, label %entry.sw.epilog_crit_edge, label %sw.caserange5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.caserange:                                     ; preds = %sw.caserange2
  call void @__sanitizer_cov_trace_pc() #16
  %1 = add i32 %size, -1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %1)
  %inbounds = icmp ult i32 %1, 1001
  %spec.select = select i1 %inbounds, i32 56, i32 60
  br label %sw.epilog

sw.caserange2:                                    ; preds = %sw.caserange5
  %2 = add i32 %size, -2001
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %2)
  %inbounds3 = icmp ult i32 %2, 1000
  br i1 %inbounds3, label %sw.caserange2.sw.epilog_crit_edge, label %sw.caserange

sw.caserange2.sw.epilog_crit_edge:                ; preds = %sw.caserange2
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.caserange5:                                    ; preds = %entry
  %3 = add i32 %size, -3001
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %3)
  %inbounds6 = icmp ult i32 %3, 999
  br i1 %inbounds6, label %sw.caserange5.sw.epilog_crit_edge, label %sw.caserange2

sw.caserange5.sw.epilog_crit_edge:                ; preds = %sw.caserange5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.caserange5.sw.epilog_crit_edge, %sw.caserange2.sw.epilog_crit_edge, %sw.caserange, %entry.sw.epilog_crit_edge
  %cmpr.0 = phi i32 [ 54, %sw.caserange2.sw.epilog_crit_edge ], [ 52, %sw.caserange5.sw.epilog_crit_edge ], [ 45, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.caserange ]
  %mul = mul i32 %size, 100
  %div = udiv i32 %mul, %cmpr.0
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zbufsize_lzo(i32 noundef %size) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %div5 = lshr i32 %size, 4
  %add = add i32 %size, 69
  %add3 = add i32 %add, %div5
  ret i32 %add3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zbufsize_lz4(i32 noundef %size) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %size)
  %cmp.i = icmp ugt i32 %size, 2113929216
  %div.i = udiv i32 %size, 255
  %add.i = add i32 %size, 16
  %add1.i = add i32 %add.i, %div.i
  %cond.i = select i1 %cmp.i, i32 0, i32 %add1.i
  ret i32 %cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zbufsize_842(i32 noundef returned %size) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %size
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zbufsize_zstd(i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @zstd_compress_bound(i32 noundef %size) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_compress_bound(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !78, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !156, !158, !159, !160, !162, !164, !166, !167, !168, !169, !171, !173, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !196, !198, !200, !202}
!llvm.named.register.sp = !{!204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @__param_update_ms, !1, !"__param_update_ms", i1 false, i1 false}
!1 = !{!"../fs/pstore/platform.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_update_mstype177, !1, !"__UNIQUE_ID_update_mstype177", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_update_ms178, !4, !"__UNIQUE_ID_update_ms178", i1 false, i1 false}
!4 = !{!"../fs/pstore/platform.c", i32 45, i32 1}
!5 = !{ptr @__param_backend, !6, !"__param_backend", i1 false, i1 false}
!6 = !{!"../fs/pstore/platform.c", i32 80, i32 1}
!7 = !{ptr @__UNIQUE_ID_backendtype179, !6, !"__UNIQUE_ID_backendtype179", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_backend180, !9, !"__UNIQUE_ID_backend180", i1 false, i1 false}
!9 = !{!"../fs/pstore/platform.c", i32 81, i32 1}
!10 = !{ptr @__param_compress, !11, !"__param_compress", i1 false, i1 false}
!11 = !{!"../fs/pstore/platform.c", i32 89, i32 1}
!12 = !{ptr @__UNIQUE_ID_compresstype181, !11, !"__UNIQUE_ID_compresstype181", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_compress182, !14, !"__UNIQUE_ID_compress182", i1 false, i1 false}
!14 = !{!"../fs/pstore/platform.c", i32 90, i32 1}
!15 = !{ptr @kmsg_bytes, !16, !"kmsg_bytes", i1 false, i1 false}
!16 = !{!"../fs/pstore/platform.c", i32 104, i32 15}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../fs/pstore/platform.c", i32 118, i32 6}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/pstore/platform.c", i32 119, i32 10}
!22 = !{ptr @__ksymtab_pstore_type_to_name, !23, !"__ksymtab_pstore_type_to_name", i1 false, i1 false}
!23 = !{!"../fs/pstore/platform.c", i32 123, i32 1}
!24 = !{ptr @__ksymtab_pstore_name_to_type, !25, !"__ksymtab_pstore_name_to_type", i1 false, i1 false}
!25 = !{!"../fs/pstore/platform.c", i32 136, i32 1}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/pstore/platform.c", i32 567, i32 3}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pstore_register._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pstore_register._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/pstore/platform.c", i32 573, i32 3}
!33 = !{ptr @pstore_register._entry.4, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pstore_register._entry_ptr.6, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/pstore/platform.c", i32 580, i32 3}
!37 = !{ptr @pstore_register._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pstore_register._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/pstore/platform.c", i32 587, i32 3}
!41 = !{ptr @pstore_register._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pstore_register._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @pstore_register.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../fs/pstore/platform.c", i32 596, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/pstore/platform.c", i32 624, i32 2}
!48 = !{ptr @pstore_register._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pstore_register._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__ksymtab_pstore_register, !51, !"__ksymtab_pstore_register", i1 false, i1 false}
!51 = !{!"../fs/pstore/platform.c", i32 629, i32 1}
!52 = !{ptr @__ksymtab_pstore_unregister, !53, !"__ksymtab_pstore_unregister", i1 false, i1 false}
!53 = !{!"../fs/pstore/platform.c", i32 669, i32 1}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/pstore/platform.c", i32 756, i32 4}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pstore_get_backend_records._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pstore_get_backend_records._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/pstore/platform.c", i32 785, i32 3}
!61 = !{ptr @pstore_get_backend_records._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pstore_get_backend_records._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/pstore/platform.c", i32 788, i32 3}
!65 = !{ptr @pstore_get_backend_records._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pstore_get_backend_records._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__initcall__kmod_pstore__184_841_pstore_init7, !68, !"__initcall__kmod_pstore__184_841_pstore_init7", i1 false, i1 false}
!68 = !{!"../fs/pstore/platform.c", i32 841, i32 1}
!69 = !{ptr @__exitcall_pstore_exit, !70, !"__exitcall_pstore_exit", i1 false, i1 false}
!70 = !{!"../fs/pstore/platform.c", i32 847, i32 1}
!71 = !{ptr @__UNIQUE_ID_author185, !72, !"__UNIQUE_ID_author185", i1 false, i1 false}
!72 = !{!"../fs/pstore/platform.c", i32 849, i32 1}
!73 = !{ptr @__UNIQUE_ID_file186, !74, !"__UNIQUE_ID_file186", i1 false, i1 false}
!74 = !{!"../fs/pstore/platform.c", i32 850, i32 1}
!75 = !{ptr @__UNIQUE_ID_license187, !74, !"__UNIQUE_ID_license187", i1 false, i1 false}
!76 = !{ptr @psinfo, !77, !"psinfo", i1 false, i1 false}
!77 = !{!"../fs/pstore/platform.c", i32 77, i32 21}
!78 = !{ptr @backend, !79, !"backend", i1 false, i1 false}
!79 = !{!"../fs/pstore/platform.c", i32 79, i32 14}
!80 = !{ptr @__param_str_update_ms, !1, !"__param_str_update_ms", i1 false, i1 false}
!81 = !{ptr @pstore_update_ms, !82, !"pstore_update_ms", i1 false, i1 false}
!82 = !{!"../fs/pstore/platform.c", i32 43, i32 12}
!83 = !{ptr @__param_str_backend, !6, !"__param_str_backend", i1 false, i1 false}
!84 = !{ptr @__param_str_compress, !11, !"__param_str_compress", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/pstore/platform.c", i32 85, i32 3}
!87 = !{ptr @compress, !88, !"compress", i1 false, i1 false}
!88 = !{!"../fs/pstore/platform.c", i32 83, i32 14}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/pstore/platform.c", i32 52, i32 2}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/pstore/platform.c", i32 53, i32 2}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/pstore/platform.c", i32 54, i32 2}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/pstore/platform.c", i32 55, i32 2}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/pstore/platform.c", i32 56, i32 2}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/pstore/platform.c", i32 57, i32 2}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/pstore/platform.c", i32 58, i32 2}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/pstore/platform.c", i32 59, i32 2}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/pstore/platform.c", i32 60, i32 2}
!107 = !{ptr @pstore_type_names, !108, !"pstore_type_names", i1 false, i1 false}
!108 = !{!"../fs/pstore/platform.c", i32 51, i32 27}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/pstore/platform.c", i32 76, i32 8}
!111 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @psinfo_lock, !110, !"psinfo_lock", i1 false, i1 false}
!113 = !{ptr @sema_init.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/pstore/platform.c", i32 299, i32 3}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @allocate_buf_for_compression._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @allocate_buf_for_compression._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/pstore/platform.c", i32 305, i32 3}
!126 = !{ptr @allocate_buf_for_compression._entry.41, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @allocate_buf_for_compression._entry_ptr.43, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/pstore/platform.c", i32 312, i32 3}
!130 = !{ptr @allocate_buf_for_compression._entry.44, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @allocate_buf_for_compression._entry_ptr.46, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/pstore/platform.c", i32 320, i32 3}
!134 = !{ptr @allocate_buf_for_compression._entry.47, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @allocate_buf_for_compression._entry_ptr.49, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/pstore/platform.c", i32 330, i32 2}
!138 = !{ptr @allocate_buf_for_compression._entry.50, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @allocate_buf_for_compression._entry_ptr.52, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @zbackend, !141, !"zbackend", i1 false, i1 false}
!141 = !{!"../fs/pstore/platform.c", i32 225, i32 38}
!142 = !{ptr @tfm, !143, !"tfm", i1 false, i1 false}
!143 = !{!"../fs/pstore/platform.c", i32 93, i32 28}
!144 = !{ptr @big_oops_buf_sz, !145, !"big_oops_buf_sz", i1 false, i1 false}
!145 = !{!"../fs/pstore/platform.c", i32 101, i32 15}
!146 = !{ptr @big_oops_buf, !147, !"big_oops_buf", i1 false, i1 false}
!147 = !{!"../fs/pstore/platform.c", i32 100, i32 14}
!148 = !{ptr @pstore_dumper, !149, !"pstore_dumper", i1 false, i1 false}
!149 = !{!"../fs/pstore/platform.c", i32 474, i32 27}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/pstore/platform.c", i32 399, i32 4}
!152 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @pstore_dump._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @pstore_dump._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/pstore/platform.c", i32 404, i32 4}
!158 = !{ptr @pstore_dump._entry.56, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @pstore_dump._entry_ptr.58, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/pstore/platform.c", i32 436, i32 41}
!162 = !{ptr @oopscount, !163, !"oopscount", i1 false, i1 false}
!163 = !{!"../fs/pstore/platform.c", i32 112, i32 12}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/pstore/platform.c", i32 277, i32 3}
!166 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @pstore_compress._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @pstore_compress._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = distinct !{null, !170, !"pstore_new_entry", i1 false, i1 false}
!170 = !{!"../fs/pstore/platform.c", i32 63, i32 12}
!171 = !{ptr @pstore_console, !172, !"pstore_console", i1 false, i1 false}
!172 = !{!"../fs/pstore/platform.c", i32 507, i32 23}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/pstore/platform.c", i32 66, i32 8}
!175 = !{ptr @pstore_timer, !174, !"pstore_timer", i1 false, i1 false}
!176 = !{ptr @.str.63, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/pstore/platform.c", i32 69, i32 8}
!178 = !{ptr @pstore_work, !177, !"pstore_work", i1 false, i1 false}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/pstore/platform.c", i32 682, i32 3}
!181 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @decompress_record._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @decompress_record._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/pstore/platform.c", i32 688, i32 3}
!186 = !{ptr @decompress_record._entry.66, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @decompress_record._entry_ptr.68, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/pstore/platform.c", i32 703, i32 3}
!190 = !{ptr @decompress_record._entry.69, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @decompress_record._entry_ptr.71, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.72, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/pstore/platform.c", i32 237, i32 12}
!194 = !{ptr @.str.73, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/pstore/platform.c", i32 243, i32 12}
!196 = !{ptr @.str.74, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/pstore/platform.c", i32 249, i32 12}
!198 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/pstore/platform.c", i32 255, i32 12}
!200 = !{ptr @.str.76, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/pstore/platform.c", i32 261, i32 12}
!202 = !{ptr @zbackends, !203, !"zbackends", i1 false, i1 false}
!203 = !{!"../fs/pstore/platform.c", i32 227, i32 37}
!204 = !{!"sp"}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{!"branch_weights", i32 2000, i32 1}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i8 0, i8 2}
!217 = !{!"auto-init"}
