; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_devinfo.c_pt.bc'
source_filename = "../drivers/scsi/scsi_devinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_dev_info_list_add_keyed\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dev_info_list_add_keyed\09\09\09\09"
module asm "\09.long\09__crc_scsi_dev_info_list_add_keyed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_list_add_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_list_add_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_list_add_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_dev_info_list_del_keyed\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dev_info_list_del_keyed\09\09\09\09"
module asm "\09.long\09__crc_scsi_dev_info_list_del_keyed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_list_del_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_list_del_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_list_del_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_get_device_flags_keyed\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_get_device_flags_keyed\09\09\09\09"
module asm "\09.long\09__crc_scsi_get_device_flags_keyed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_get_device_flags_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_get_device_flags_keyed\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_get_device_flags_keyed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_dev_info_add_list\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dev_info_add_list\09\09\09\09"
module asm "\09.long\09__crc_scsi_dev_info_add_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_add_list:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_add_list\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_add_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_dev_info_remove_list\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dev_info_remove_list\09\09\09\09"
module asm "\09.long\09__crc_scsi_dev_info_remove_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dev_info_remove_list:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dev_info_remove_list\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dev_info_remove_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.83 = type { ptr, ptr, ptr, i64 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.scsi_dev_info_list_table = type { %struct.list_head, %struct.list_head, ptr, i32 }
%struct.scsi_dev_info_list = type { %struct.list_head, [8 x i8], [16 x i8], i64, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.double_list = type { ptr, ptr }

@scsi_dev_info_list_add_keyed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: no memory\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scsi_dev_info_list_add_keyed\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/scsi_devinfo.c\00", [36 x i8] zeroinitializer }, align 32
@scsi_dev_info_list_add_keyed._entry_ptr = internal global ptr @scsi_dev_info_list_add_keyed._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@scsi_dev_info_list_add_keyed._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013scsi_devinfo (%s:%s): unsupported flags 0x%llx\00", [47 x i8] zeroinitializer }, align 32
@scsi_dev_info_list_add_keyed._entry_ptr.7 = internal global ptr @scsi_dev_info_list_add_keyed._entry.5, section ".printk_index", align 4
@__kstrtab_scsi_dev_info_list_add_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_list_add_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_list_add_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_list_add_keyed to i32), ptr @__kstrtab_scsi_dev_info_list_add_keyed, ptr @__kstrtabns_scsi_dev_info_list_add_keyed }, section "___ksymtab+scsi_dev_info_list_add_keyed", align 4
@__kstrtab_scsi_dev_info_list_del_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_list_del_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_list_del_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_list_del_keyed to i32), ptr @__kstrtab_scsi_dev_info_list_del_keyed, ptr @__kstrtabns_scsi_dev_info_list_del_keyed }, section "___ksymtab+scsi_dev_info_list_del_keyed", align 4
@scsi_default_dev_flags = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__kstrtab_scsi_get_device_flags_keyed = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_get_device_flags_keyed = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_get_device_flags_keyed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_get_device_flags_keyed to i32), ptr @__kstrtab_scsi_get_device_flags_keyed, ptr @__kstrtabns_scsi_get_device_flags_keyed }, section "___ksymtab+scsi_get_device_flags_keyed", align 4
@__param_str_dev_flags = internal constant [19 x i8] c"scsi_mod.dev_flags\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_dev_flags = internal constant %struct.kparam_string { i32 256, ptr @scsi_dev_flags }, align 4
@__param_dev_flags = internal constant %struct.kernel_param { ptr @__param_str_dev_flags, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.75 { ptr @__param_string_dev_flags } }, section "__param", align 4
@__UNIQUE_ID_dev_flagstype279 = internal constant [35 x i8] c"scsi_mod.parmtype=dev_flags:string\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_flags280 = internal constant [182 x i8] c"scsi_mod.parm=dev_flags:Given scsi_dev_flags=vendor:model:flags[,v:m:f] add black/white list entries for vendor and model with an integer value of flags to the scsi device info list\00", section ".modinfo", align 1
@__param_str_default_dev_flags = internal constant [27 x i8] c"scsi_mod.default_dev_flags\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_default_dev_flags = internal constant %struct.kernel_param { ptr @__param_str_default_dev_flags, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.75 { ptr @scsi_default_dev_flags } }, section "__param", align 4
@__UNIQUE_ID_default_dev_flagstype281 = internal constant [43 x i8] c"scsi_mod.parmtype=default_dev_flags:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_default_dev_flags282 = internal constant [72 x i8] c"scsi_mod.parm=default_dev_flags:scsi default device flag uint64_t value\00", section ".modinfo", align 1
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scsi/device_info\00", [47 x i8] zeroinitializer }, align 32
@scsi_dev_info_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @scsi_dev_info_list, ptr @scsi_dev_info_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_dev_info_add_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_add_list = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_add_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_add_list to i32), ptr @__kstrtab_scsi_dev_info_add_list, ptr @__kstrtabns_scsi_dev_info_add_list }, section "___ksymtab+scsi_dev_info_add_list", align 4
@__kstrtab_scsi_dev_info_remove_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dev_info_remove_list = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dev_info_remove_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dev_info_remove_list to i32), ptr @__kstrtab_scsi_dev_info_remove_list, ptr @__kstrtabns_scsi_dev_info_remove_list }, section "___ksymtab+scsi_dev_info_remove_list", align 4
@scsi_dev_flags = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@scsi_static_device_list = internal unnamed_addr constant [181 x %struct.anon.83] [%struct.anon.83 { ptr @.str.16, ptr @.str.17, ptr @.str.18, i64 1 }, %struct.anon.83 { ptr @.str.19, ptr @.str.20, ptr @.str.21, i64 1 }, %struct.anon.83 { ptr @.str.19, ptr @.str.22, ptr @.str.23, i64 1 }, %struct.anon.83 { ptr @.str.24, ptr @.str.25, ptr @.str.26, i64 1 }, %struct.anon.83 { ptr @.str.27, ptr @.str.28, ptr @.str.29, i64 1 }, %struct.anon.83 { ptr @.str.27, ptr @.str.30, ptr @.str.31, i64 1 }, %struct.anon.83 { ptr @.str.32, ptr @.str.33, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.32, ptr @.str.34, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.35, ptr @.str.36, ptr @.str.37, i64 1 }, %struct.anon.83 { ptr @.str.38, ptr @.str.39, ptr @.str.40, i64 1 }, %struct.anon.83 { ptr @.str.38, ptr @.str.41, ptr @.str.42, i64 1 }, %struct.anon.83 { ptr @.str.38, ptr @.str.43, ptr @.str.44, i64 1 }, %struct.anon.83 { ptr @.str.38, ptr @.str.45, ptr @.str.46, i64 1 }, %struct.anon.83 { ptr @.str.38, ptr @.str.47, ptr @.str.48, i64 1 }, %struct.anon.83 { ptr @.str.49, ptr @.str.50, ptr @.str.51, i64 1 }, %struct.anon.83 { ptr @.str.52, ptr @.str.53, ptr @.str.54, i64 1 }, %struct.anon.83 { ptr @.str.55, ptr @.str.56, ptr @.str.57, i64 1 }, %struct.anon.83 { ptr @.str.58, ptr @.str.59, ptr @.str.60, i64 1 }, %struct.anon.83 { ptr @.str.61, ptr @.str.62, ptr @.str.63, i64 1 }, %struct.anon.83 { ptr @.str.64, ptr @.str.65, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.66, ptr @.str.67, ptr @.str.68, i64 1 }, %struct.anon.83 { ptr @.str.69, ptr @.str.70, ptr @.str.71, i64 1 }, %struct.anon.83 { ptr @.str.69, ptr @.str.72, ptr @.str.73, i64 1 }, %struct.anon.83 { ptr @.str.69, ptr @.str.74, ptr @.str.75, i64 1 }, %struct.anon.83 { ptr @.str.76, ptr @.str.77, ptr @.str.78, i64 1 }, %struct.anon.83 { ptr @.str.76, ptr @.str.79, ptr @.str.80, i64 1 }, %struct.anon.83 { ptr @.str.76, ptr @.str.81, ptr @.str.82, i64 1 }, %struct.anon.83 { ptr @.str.76, ptr @.str.83, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.76, ptr @.str.84, ptr @.str.85, i64 2097152 }, %struct.anon.83 { ptr @.str.86, ptr @.str.87, ptr @.str.88, i64 1 }, %struct.anon.83 { ptr @.str.89, ptr @.str.90, ptr @.str.91, i64 1 }, %struct.anon.83 { ptr @.str.89, ptr @.str.92, ptr @.str.93, i64 1 }, %struct.anon.83 { ptr @.str.89, ptr @.str.94, ptr @.str.95, i64 1 }, %struct.anon.83 { ptr @.str.96, ptr @.str.97, ptr @.str.98, i64 1 }, %struct.anon.83 { ptr @.str.96, ptr @.str.99, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.96, ptr @.str.100, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.49, ptr @.str.101, ptr @.str.102, i64 1 }, %struct.anon.83 { ptr @.str.52, ptr @.str.103, ptr @.str.104, i64 1 }, %struct.anon.83 { ptr @.str.105, ptr @.str.106, ptr @.str.107, i64 1 }, %struct.anon.83 { ptr @.str.55, ptr @.str.108, ptr @.str.109, i64 1 }, %struct.anon.83 { ptr @.str.110, ptr @.str.111, ptr @.str.112, i64 1 }, %struct.anon.83 { ptr @.str.110, ptr @.str.113, ptr @.str.112, i64 1 }, %struct.anon.83 { ptr @.str.110, ptr @.str.114, ptr @.str.115, i64 1 }, %struct.anon.83 { ptr @.str.116, ptr @.str.117, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.118, ptr @.str.119, ptr @.str.120, i64 1 }, %struct.anon.83 { ptr @.str.121, ptr @.str.92, ptr @.str.93, i64 5 }, %struct.anon.83 { ptr @.str.122, ptr @.str.123, ptr @.str.124, i64 262144 }, %struct.anon.83 { ptr @.str.125, ptr @.str.126, ptr @.str.127, i64 1 }, %struct.anon.83 { ptr @.str.125, ptr @.str.128, ptr @.str.127, i64 1 }, %struct.anon.83 { ptr @.str.125, ptr @.str.129, ptr @.str.57, i64 1 }, %struct.anon.83 { ptr @.str.125, ptr @.str.130, ptr @.str.131, i64 1 }, %struct.anon.83 { ptr @.str.132, ptr @.str.133, ptr @.str.134, i64 1 }, %struct.anon.83 { ptr @.str.135, ptr @.str.136, ptr null, i64 131072 }, %struct.anon.83 { ptr @.str.137, ptr @.str.138, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.137, ptr @.str.139, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.140, ptr @.str.141, ptr null, i64 268435456 }, %struct.anon.83 { ptr @.str.142, ptr @.str.143, ptr @.str.144, i64 2 }, %struct.anon.83 { ptr @.str.145, ptr @.str.146, ptr @.str.147, i64 1026 }, %struct.anon.83 { ptr @.str.148, ptr @.str.149, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.148, ptr @.str.150, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.151, ptr @.str.152, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.153, ptr @.str.154, ptr @.str.155, i64 1026 }, %struct.anon.83 { ptr @.str.156, ptr @.str.157, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.158, ptr @.str.159, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.160, ptr @.str.161, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.162, ptr @.str.163, ptr null, i64 8520256 }, %struct.anon.83 { ptr @.str.162, ptr @.str.164, ptr null, i64 8388610 }, %struct.anon.83 { ptr @.str.162, ptr @.str.165, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.162, ptr @.str.166, ptr null, i64 4160 }, %struct.anon.83 { ptr @.str.162, ptr @.str.167, ptr null, i64 4160 }, %struct.anon.83 { ptr @.str.162, ptr @.str.168, ptr null, i64 135168 }, %struct.anon.83 { ptr @.str.169, ptr @.str.170, ptr @.str.171, i64 64 }, %struct.anon.83 { ptr @.str.172, ptr @.str.173, ptr null, i64 135168 }, %struct.anon.83 { ptr @.str.174, ptr @.str.175, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.174, ptr @.str.176, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.174, ptr @.str.177, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.174, ptr @.str.178, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.174, ptr @.str.179, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.180, ptr @.str.181, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.180, ptr @.str.182, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.183, ptr @.str.184, ptr @.str.171, i64 576 }, %struct.anon.83 { ptr @.str.183, ptr @.str.185, ptr null, i64 4295098944 }, %struct.anon.83 { ptr @.str.186, ptr @.str.187, ptr null, i64 16 }, %struct.anon.83 { ptr @.str.188, ptr @.str.189, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.188, ptr @.str.190, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.188, ptr @.str.191, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.192, ptr @.str.193, ptr @.str.171, i64 576 }, %struct.anon.83 { ptr @.str.194, ptr @.str.195, ptr @.str.171, i64 8589934592 }, %struct.anon.83 { ptr @.str.196, ptr @.str.197, ptr @.str.127, i64 1026 }, %struct.anon.83 { ptr @.str.196, ptr @.str.154, ptr null, i64 1026 }, %struct.anon.83 { ptr @.str.196, ptr @.str.198, ptr @.str.199, i64 3072 }, %struct.anon.83 { ptr @.str.27, ptr @.str.200, ptr @.str.171, i64 131072 }, %struct.anon.83 { ptr @.str.27, ptr @.str.201, ptr @.str.171, i64 131072 }, %struct.anon.83 { ptr @.str.27, ptr @.str.202, ptr @.str.171, i64 131072 }, %struct.anon.83 { ptr @.str.27, ptr @.str.203, ptr @.str.171, i64 33554432 }, %struct.anon.83 { ptr @.str.27, ptr @.str.204, ptr @.str.171, i64 268566528 }, %struct.anon.83 { ptr @.str.96, ptr @.str.205, ptr null, i64 576 }, %struct.anon.83 { ptr @.str.96, ptr @.str.204, ptr @.str.171, i64 268566528 }, %struct.anon.83 { ptr @.str.96, ptr @.str.206, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.96, ptr @.str.207, ptr null, i64 135168 }, %struct.anon.83 { ptr @.str.96, ptr @.str.208, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.96, ptr @.str.209, ptr @.str.210, i64 32 }, %struct.anon.83 { ptr @.str.96, ptr @.str.211, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.96, ptr @.str.202, ptr @.str.171, i64 131072 }, %struct.anon.83 { ptr @.str.212, ptr @.str.204, ptr @.str.171, i64 268566528 }, %struct.anon.83 { ptr @.str.32, ptr @.str.213, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.32, ptr @.str.214, ptr @.str.171, i64 576 }, %struct.anon.83 { ptr @.str.32, ptr @.str.215, ptr null, i64 4194304 }, %struct.anon.83 { ptr @.str.216, ptr @.str.217, ptr @.str.218, i64 33 }, %struct.anon.83 { ptr @.str.219, ptr @.str.220, ptr null, i64 33 }, %struct.anon.83 { ptr @.str.219, ptr @.str.221, ptr null, i64 8 }, %struct.anon.83 { ptr @.str.222, ptr @.str.223, ptr null, i64 8 }, %struct.anon.83 { ptr @.str.222, ptr @.str.224, ptr null, i64 8 }, %struct.anon.83 { ptr @.str.225, ptr @.str.226, ptr null, i64 536870912 }, %struct.anon.83 { ptr @.str.227, ptr @.str.228, ptr null, i64 525312 }, %struct.anon.83 { ptr @.str.229, ptr @.str.230, ptr @.str.231, i64 144 }, %struct.anon.83 { ptr @.str.232, ptr @.str.233, ptr null, i64 67108864 }, %struct.anon.83 { ptr @.str.232, ptr @.str.234, ptr @.str.235, i64 67108864 }, %struct.anon.83 { ptr @.str.236, ptr @.str.237, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.236, ptr @.str.238, ptr null, i64 525312 }, %struct.anon.83 { ptr @.str.236, ptr @.str.239, ptr null, i64 525312 }, %struct.anon.83 { ptr @.str.240, ptr @.str.241, ptr @.str.242, i64 2 }, %struct.anon.83 { ptr @.str.243, ptr @.str.244, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.245, ptr @.str.246, ptr null, i64 32 }, %struct.anon.83 { ptr @.str.247, ptr @.str.248, ptr null, i64 1610612736 }, %struct.anon.83 { ptr @.str.249, ptr @.str.250, ptr @.str.171, i64 131072 }, %struct.anon.83 { ptr @.str.251, ptr @.str.252, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.253, ptr @.str.254, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.253, ptr @.str.255, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.55, ptr @.str.256, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.55, ptr @.str.257, ptr null, i64 131072 }, %struct.anon.83 { ptr @.str.258, ptr @.str.259, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.258, ptr @.str.260, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.261, ptr @.str.262, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.261, ptr @.str.263, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.261, ptr @.str.264, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.261, ptr @.str.265, ptr null, i64 18 }, %struct.anon.83 { ptr @.str.266, ptr @.str.267, ptr null, i64 536870976 }, %struct.anon.83 { ptr @.str.266, ptr @.str.132, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.268, ptr @.str.269, ptr null, i64 67108864 }, %struct.anon.83 { ptr @.str.270, ptr @.str.271, ptr null, i64 1073741824 }, %struct.anon.83 { ptr @.str.272, ptr @.str.271, ptr null, i64 1073741824 }, %struct.anon.83 { ptr @.str.110, ptr @.str.273, ptr @.str.274, i64 32 }, %struct.anon.83 { ptr @.str.275, ptr @.str.276, ptr null, i64 144 }, %struct.anon.83 { ptr @.str.277, ptr @.str.278, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.69, ptr @.str.279, ptr @.str.280, i64 32 }, %struct.anon.83 { ptr @.str.69, ptr @.str.281, ptr @.str.282, i64 32 }, %struct.anon.83 { ptr @.str.69, ptr @.str.283, ptr null, i64 67108864 }, %struct.anon.83 { ptr @.str.284, ptr @.str.285, ptr @.str.171, i64 64 }, %struct.anon.83 { ptr @.str.284, ptr @.str.286, ptr @.str.171, i64 64 }, %struct.anon.83 { ptr @.str.284, ptr @.str.287, ptr @.str.171, i64 131072 }, %struct.anon.83 { ptr @.str.284, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.32, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.64, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.174, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.289, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.290, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.291, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.292, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.293, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.194, ptr @.str.288, ptr @.str.171, i64 1048576 }, %struct.anon.83 { ptr @.str.277, ptr @.str.294, ptr null, i64 268436480 }, %struct.anon.83 { ptr @.str.295, ptr @.str.146, ptr null, i64 1088 }, %struct.anon.83 { ptr @.str.76, ptr @.str.296, ptr null, i64 4 }, %struct.anon.83 { ptr @.str.76, ptr @.str.297, ptr null, i64 2 }, %struct.anon.83 { ptr @.str.298, ptr @.str.299, ptr null, i64 4194304 }, %struct.anon.83 { ptr @.str.64, ptr @.str.300, ptr @.str.171, i64 64 }, %struct.anon.83 { ptr @.str.64, ptr @.str.301, ptr @.str.171, i64 64 }, %struct.anon.83 { ptr @.str.302, ptr @.str.303, ptr @.str.171, i64 262144 }, %struct.anon.83 { ptr @.str.304, ptr @.str.305, ptr null, i64 256 }, %struct.anon.83 { ptr @.str.304, ptr @.str.92, ptr null, i64 256 }, %struct.anon.83 { ptr @.str.306, ptr @.str.307, ptr null, i64 1 }, %struct.anon.83 { ptr @.str.308, ptr @.str.309, ptr null, i64 1026 }, %struct.anon.83 { ptr @.str.310, ptr @.str.311, ptr @.str.312, i64 2097152 }, %struct.anon.83 { ptr @.str.310, ptr @.str.313, ptr @.str.314, i64 2097152 }, %struct.anon.83 { ptr @.str.310, ptr @.str.315, ptr @.str.316, i64 2097152 }, %struct.anon.83 { ptr @.str.317, ptr @.str.318, ptr null, i64 262144 }, %struct.anon.83 { ptr @.str.319, ptr @.str.320, ptr @.str.171, i64 576 }, %struct.anon.83 { ptr @.str.321, ptr @.str.322, ptr null, i64 64 }, %struct.anon.83 { ptr @.str.321, ptr @.str.323, ptr null, i64 64 }, %struct.anon.83 zeroinitializer], section ".init.data", align 8
@scsi_devinfo_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @proc_scsi_devinfo_open, ptr @seq_read, ptr null, ptr @proc_scsi_devinfo_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scsi_strcpy_devinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: %s string '%s' is too long\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scsi_strcpy_devinfo\00", [44 x i8] zeroinitializer }, align 32
@scsi_strcpy_devinfo._entry_ptr = internal global ptr @scsi_strcpy_devinfo._entry, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\22\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@scsi_dev_info_list_add_str._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: bad dev info string '%s' '%s' '%s'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scsi_dev_info_list_add_str\00", [37 x i8] zeroinitializer }, align 32
@scsi_dev_info_list_add_str._entry_ptr = internal global ptr @scsi_dev_info_list_add_str._entry, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Aashima\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IMAGERY 2400SP\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.03\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHINON\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-ROM CDS-431\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"H42\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-ROM CDS-535\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Q14\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DENON\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DRD-25X\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"V\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HITACHI\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DK312C\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CM81\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DK314C\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CR21\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2104-DU3\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2104-TU3\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMS\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CDD521/10\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.06\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MAXTOR\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XT-3280\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PR02\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XT-4380S\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"B3C\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MXT-1240S\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I1.2\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XT-4170S\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"B5A\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XT-8760S\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"B7B\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MEDIAVIS\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RENO CD-ROMX2A\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.03\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICROTEK\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ScanMakerIII\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.30\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD-ROM DRIVE:841\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHILIPS\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCA80SC\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V4-2\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RODIME\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RO3000S\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.33\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SUN\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SENA\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SANYO\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CRD-250S\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.20\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEAGATE\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ST157N\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\04|j\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ST296\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"921\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ST1581\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6538\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SONY\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-ROM CDU-541\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4.3d\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-ROM CDU-55S\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.0i\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-ROM CDU-561\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.7x\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM CDU-8012\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SDT-5000\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.17\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TANDBERG\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TDC 3600\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"U07\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEAC\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CD-R55S\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.0H\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CD-ROM\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.06\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MT-2ST/45S2-27\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RV M\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1750A\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3226\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1790A\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C2500A\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CDR-H93MV\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.31\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ScanMaker II\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5.61\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MITSUMI\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-R CR-2201CS\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6119\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"D3856\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0009\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QUANTUM\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPS525S\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3110\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PD1225S\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIREBALL ST4.3S\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0F0C\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RELISYS\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Scorpio\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SANKYO\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CP525\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6.64\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TEXEL\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"transtec\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"T5008\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0001\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YAMAHA\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CDR100\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.00\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CDR102\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CRW8424S\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CRW6416S\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.0c\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Scanner\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.80\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3PARdata\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VV\00", [29 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADAPTEC\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AACRAID\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Adaptec 5400S\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AIX\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDASD\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AFT PRO\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-IX CF\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.0>\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BELKIN\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB 2 HS-CF\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.95\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BROWNIE\00", [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1200U3P\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1600U3P\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CANON\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IPUBJD\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CBOX3\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB Storage-SMC\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"300A\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CRA-7280\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CNSI\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"G7324\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CNSi\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"G8324\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMPAQ\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ARRAY CONTROLLER\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LOGICAL VOLUME\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CR3500\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MSA1000\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSA1000 VOLUME\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HSV110\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DDN\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SAN DataDirector\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DEC\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HSG80\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DELL\00", [27 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PV660F\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PV660F   PSEUDO\00", [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PSEUDO DEVICE .\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PV530F\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PERCRAID\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DGC\00", [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAID\00", [27 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISK\00", [27 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EMC\00", [28 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invista\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYMMETRIX\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EMULEX\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MD21/S2     ESDI\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"easyRAID\00", [23 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"16P\00", [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"X6P\00", [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"F8\00", [29 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FSC\00", [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CentricStor\00", [20 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FUJITSU\00", [24 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETERNUS_DXM\00", [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Generic\00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB SD Reader\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ultra HS-SD/MMC\00", [16 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.09\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DF400\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DF500\00", [26 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DISK-SUBSYSTEM\00", [17 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HUS1530\00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OPEN-\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A6189A\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NetRAID-4M\00", [21 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HSV100\00", [25 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1557A\00", [25 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"C3323-300\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4269\00", [27 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C5713A\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPE\00", [28 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AuSaV1S2\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ProFibre 4000R\00", [17 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2105\00", [27 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iomega\00", [25 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jaz 1GB\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"J.86\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IOMEGA\00", [25 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ZIP\00", [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Io20S         *F\00", [47 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INSITE\00", [25 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Floptical   F*8I\00", [47 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I325VM\00", [25 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Intel\00", [26 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Multi-Flex\00", [21 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iRiver\00", [25 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iFP Mass Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LASOUND\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CDX7405\00", [24 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.10\00", [27 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Marvell\00", [24 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Console\00", [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"91xx Config\00", [20 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MATSHITA\00", [23 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PD-1\00", [27 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMC-LC5\00", [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMC-LC40\00", [23 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Medion\00", [25 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Flash XL  MMC/SD\00", [47 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.6D\00", [27 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MegaRAID\00", [23 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LD\00", [29 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICROP\00", [25 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4110\00", [27 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MSFT\00", [27 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Virtual HD\00", [21 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MYLEX\00", [26 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACARMRB\00", [23 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nCipher\00", [24 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Fastness Crypto\00", [16 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NAKAMICH\00", [23 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MJ-4.8S\00", [24 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MJ-5.16S\00", [23 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PD-1 ODX654P\00", [19 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iStorage\00", [23 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NRC\00", [28 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MBR-7\00", [26 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MBR-7.4\00", [24 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PIONEER\00", [24 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CD-ROM DRM-600\00", [17 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM DRM-602X\00", [16 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM DRM-604X\00", [16 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM DRM-624X\00", [16 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Promise\00", [24 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VTrak E610f\00", [20 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QEMU\00", [27 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QEMU CD-ROM\00", [20 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QNAP\00", [27 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iSCSI Storage\00", [18 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYNOLOGY\00", [23 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XP34301\00", [24 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1071\00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"REGAL\00", [26 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CDC-4X\00", [25 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SanDisk\00", [24 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ImageMate CF-SD1\00", [47 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST34555N\00", [23 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0930\00", [27 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ST3390N\00", [24 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9546\00", [27 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST900MM0006\00", [20 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SGI\00", [28 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID3\00", [26 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RAID5\00", [26 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TP9100\00", [25 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Universal Xport\00", [16 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STK\00", [28 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NETAPP\00", [25 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSI\00", [28 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENGENIO\00", [24 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LENOVO\00", [25 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Cruzer Blade\00", [19 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMSC\00", [27 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM CDU-8001\00", [16 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TSL\00", [28 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ST650211\00", [23 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CF\00", [29 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T300\00", [27 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"T4\00", [29 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Tornado-\00", [23 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"F4\00", [29 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TOSHIBA\00", [24 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CDROM\00", [26 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Traxdata\00", [23 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CDR4120\00", [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB2.0\00", [25 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMARTMEDIA/XD\00", [18 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WangDAT\00", [24 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Model 2600\00", [21 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"01.7\00", [27 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Model 3200\00", [21 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"02.2\00", [27 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Model 1300\00", [21 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"02.4\00", [27 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WDC WD25\00", [23 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"00JB-00FUA0\00", [20 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XYRATEX\00", [24 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RS\00", [29 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Zzyzx\00", [26 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RocketStor 500S\00", [16 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RocketStor 2000\00", [16 x i8] zeroinitializer }, align 32
@scsi_devinfo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @devinfo_seq_start, ptr @devinfo_seq_stop, ptr @devinfo_seq_next, ptr @devinfo_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[%s]:\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"'%.8s' '%.16s' 0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 362, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 366, i32 22 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 368, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 382, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [23 x i8] c"scsi_default_dev_flags\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 37, i32 22 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 768, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c"scsi_dev_info_list\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 38, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"scsi_dev_flags\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 39, i32 13 }
@___asan_gen_.365 = private unnamed_addr constant [22 x i8] c"scsi_devinfo_proc_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 743, i32 30 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 303, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 536, i32 16 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 538, i32 16 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 545, i32 30 }
@___asan_gen_.386 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 552, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 61, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 61, i32 14 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 61, i32 32 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 62, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 62, i32 13 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 62, i32 31 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 63, i32 13 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 63, i32 31 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 64, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 64, i32 12 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 64, i32 23 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 65, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 65, i32 14 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 65, i32 24 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 66, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 66, i32 24 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 67, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 67, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 68, i32 10 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 69, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 69, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 69, i32 23 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 70, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 70, i32 13 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 70, i32 24 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 71, i32 13 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 71, i32 25 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 72, i32 13 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 72, i32 26 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 73, i32 13 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 73, i32 25 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 74, i32 13 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 74, i32 25 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 75, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 75, i32 15 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 75, i32 33 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 76, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 76, i32 15 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 76, i32 31 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 77, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 77, i32 10 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 77, i32 30 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 78, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 78, i32 14 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 78, i32 25 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 79, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 79, i32 13 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 79, i32 24 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 80, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 80, i32 10 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 85, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 85, i32 12 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 85, i32 24 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 90, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 90, i32 14 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 90, i32 24 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 91, i32 14 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 91, i32 23 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 92, i32 14 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 92, i32 24 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 93, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 93, i32 11 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 93, i32 29 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 94, i32 11 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 94, i32 29 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 95, i32 11 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 95, i32 29 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 96, i32 11 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 97, i32 11 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 97, i32 23 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 98, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 98, i32 15 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 98, i32 27 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 99, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 99, i32 11 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 99, i32 22 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 104, i32 11 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 104, i32 21 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 105, i32 11 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 105, i32 29 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 110, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 110, i32 9 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 110, i32 19 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 111, i32 9 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 112, i32 9 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 113, i32 15 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 113, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 114, i32 15 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 114, i32 31 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 115, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 115, i32 14 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 115, i32 32 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 116, i32 10 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 116, i32 19 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 117, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 117, i32 14 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 117, i32 25 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 118, i32 14 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 119, i32 14 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 119, i32 33 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 120, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 120, i32 14 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 121, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 121, i32 13 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 121, i32 22 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 122, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 123, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 123, i32 15 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 123, i32 24 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 124, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 124, i32 13 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 124, i32 23 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 125, i32 13 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 126, i32 13 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 127, i32 13 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 127, i32 25 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 128, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 128, i32 7 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 128, i32 18 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 134, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 134, i32 15 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 135, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 135, i32 14 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 136, i32 14 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 137, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 137, i32 10 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 138, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 138, i32 14 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 138, i32 24 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 139, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 139, i32 13 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 139, i32 28 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 140, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 140, i32 14 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 141, i32 14 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 142, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 142, i32 12 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 143, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 143, i32 12 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 143, i32 31 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 144, i32 3 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 144, i32 10 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 145, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 145, i32 11 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 146, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 146, i32 11 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 147, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 147, i32 13 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 149, i32 13 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 150, i32 13 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 151, i32 13 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 152, i32 13 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 153, i32 13 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 154, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 154, i32 10 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 154, i32 30 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 155, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 155, i32 10 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 156, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 156, i32 11 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 157, i32 11 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 158, i32 11 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 159, i32 11 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 160, i32 11 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 161, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 161, i32 10 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 162, i32 10 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 163, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 163, i32 11 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 164, i32 10 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 166, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 166, i32 13 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 167, i32 3 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 167, i32 15 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 168, i32 15 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 169, i32 15 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 170, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 170, i32 10 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 171, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 171, i32 14 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 172, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 172, i32 14 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 174, i32 14 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 174, i32 33 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 175, i32 14 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 176, i32 14 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 177, i32 14 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 178, i32 14 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 179, i32 14 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 180, i32 9 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 182, i32 9 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 183, i32 9 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 184, i32 9 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 185, i32 9 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 185, i32 22 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 186, i32 9 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 188, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 189, i32 10 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 190, i32 10 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 191, i32 10 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 192, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 192, i32 13 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 192, i32 24 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 193, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 193, i32 13 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 194, i32 13 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 195, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 195, i32 13 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 196, i32 13 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 197, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 197, i32 12 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 198, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 198, i32 13 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 199, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 199, i32 14 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 199, i32 25 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 200, i32 3 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 200, i32 14 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 201, i32 14 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 201, i32 29 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 202, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 202, i32 15 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 203, i32 15 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 204, i32 15 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 205, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 205, i32 13 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 205, i32 33 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 206, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 206, i32 15 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 207, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 207, i32 13 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 208, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 208, i32 11 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 209, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 209, i32 12 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 210, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 210, i32 14 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 211, i32 3 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 211, i32 15 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 212, i32 15 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 213, i32 10 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 214, i32 10 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 215, i32 3 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 215, i32 10 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 216, i32 10 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 217, i32 3 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 217, i32 14 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 218, i32 14 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 219, i32 14 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 220, i32 14 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 221, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 221, i32 14 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 223, i32 3 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 223, i32 11 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 224, i32 3 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 224, i32 11 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 225, i32 3 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 226, i32 14 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 226, i32 25 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 227, i32 3 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 227, i32 12 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 228, i32 3 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 228, i32 14 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 229, i32 14 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 229, i32 26 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 230, i32 14 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 230, i32 25 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 231, i32 14 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 232, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 232, i32 10 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 233, i32 10 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 234, i32 10 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 235, i32 10 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 239, i32 3 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 240, i32 3 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 241, i32 3 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 242, i32 3 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 243, i32 3 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 245, i32 14 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 247, i32 3 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 248, i32 11 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 249, i32 11 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 250, i32 3 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 250, i32 15 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 251, i32 10 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 252, i32 10 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 253, i32 3 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 253, i32 15 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 254, i32 3 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 254, i32 14 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 256, i32 3 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 256, i32 15 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 257, i32 3 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 257, i32 13 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 258, i32 3 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 258, i32 14 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 258, i32 28 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 259, i32 14 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 259, i32 28 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 260, i32 14 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 260, i32 28 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 261, i32 3 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 261, i32 15 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 262, i32 3 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 262, i32 14 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 263, i32 3 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 263, i32 12 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 264, i32 12 }
@___asan_gen_.1319 = private unnamed_addr constant [21 x i8] c"scsi_devinfo_seq_ops\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 694, i32 36 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 638, i32 17 }
@___asan_gen_.1326 = private constant [31 x i8] c"../drivers/scsi/scsi_devinfo.c\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1326, i32 640, i32 16 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 230, i32 6 }
@___asan_gen_.1332 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 214, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1335, i32 156, i32 2 }
@llvm.compiler.used = appending global [351 x ptr] [ptr @__UNIQUE_ID_default_dev_flags282, ptr @__UNIQUE_ID_default_dev_flagstype281, ptr @__UNIQUE_ID_dev_flags280, ptr @__UNIQUE_ID_dev_flagstype279, ptr @__ksymtab_scsi_dev_info_add_list, ptr @__ksymtab_scsi_dev_info_list_add_keyed, ptr @__ksymtab_scsi_dev_info_list_del_keyed, ptr @__ksymtab_scsi_dev_info_remove_list, ptr @__ksymtab_scsi_get_device_flags_keyed, ptr @__param_default_dev_flags, ptr @__param_dev_flags, ptr @scsi_dev_info_list_add_keyed._entry, ptr @scsi_dev_info_list_add_keyed._entry.5, ptr @scsi_dev_info_list_add_keyed._entry_ptr, ptr @scsi_dev_info_list_add_keyed._entry_ptr.7, ptr @scsi_dev_info_list_add_str._entry, ptr @scsi_dev_info_list_add_str._entry_ptr, ptr @scsi_strcpy_devinfo._entry, ptr @scsi_strcpy_devinfo._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @scsi_default_dev_flags, ptr @.str.8, ptr @scsi_dev_info_list, ptr @scsi_dev_flags, ptr @scsi_devinfo_proc_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @scsi_devinfo_seq_ops, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328], section "llvm.metadata"
@0 = internal global [336 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dev_info_list_add_keyed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dev_info_list_add_keyed._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_default_dev_flags to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dev_info_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dev_flags to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_devinfo_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_strcpy_devinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dev_info_list_add_str._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_devinfo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_list_add_keyed(i32 noundef %compatible, ptr noundef %vendor, ptr noundef %model, ptr noundef %strflags, i64 noundef %flags, i32 noundef %key) #0 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %devinfo_table.0.in.i = phi ptr [ @scsi_dev_info_list, %entry ], [ %devinfo_table.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %devinfo_table.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %devinfo_table.0.i = load ptr, ptr %devinfo_table.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %devinfo_table.0.i, @scsi_dev_info_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %key1.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key1.i, align 4
  %cmp2.i = icmp eq i32 %2, %key
  br i1 %cmp2.i, label %scsi_devinfo_lookup_by_key.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

scsi_devinfo_lookup_by_key.exit:                  ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %devinfo_table.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %scsi_devinfo_lookup_by_key.exit.if.then_crit_edge, label %if.end

scsi_devinfo_lookup_by_key.exit.if.then_crit_edge: ; preds = %scsi_devinfo_lookup_by_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %scsi_devinfo_lookup_by_key.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %retval.0.i75 = phi ptr [ %devinfo_table.0.i, %scsi_devinfo_lookup_by_key.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.i.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i75 to i32
  br label %cleanup33

if.end:                                           ; preds = %scsi_devinfo_lookup_by_key.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 48) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  br label %cleanup33

if.end6:                                          ; preds = %if.end
  %vendor7 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %call7.i, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %vendor) #16
  %call1.i = tail call ptr @strncpy(ptr noundef %vendor7, ptr noundef %vendor, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.i55 = icmp ult i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compatible)
  %tobool.not.i = icmp eq i32 %compatible, 0
  %or.cond.i = and i1 %tobool.not.i, %cmp.i55
  br i1 %or.cond.i, label %if.end.i.thread, label %if.end.i

if.end.i.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i8, ptr %vendor7, i32 %call.i
  %sub.i = sub nuw nsw i32 8, %call.i
  %5 = call ptr @memset(ptr %arrayidx.i, i32 32, i32 %sub.i)
  br label %scsi_strcpy_devinfo.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp2.i56 = icmp ugt i32 %call.i, 8
  br i1 %cmp2.i56, label %do.end.i, label %if.end.i.scsi_strcpy_devinfo.exit_crit_edge

if.end.i.scsi_strcpy_devinfo.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_strcpy_devinfo.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef %vendor) #15
  br label %scsi_strcpy_devinfo.exit

scsi_strcpy_devinfo.exit:                         ; preds = %do.end.i, %if.end.i.scsi_strcpy_devinfo.exit_crit_edge, %if.end.i.thread
  %model8 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %call7.i, i32 0, i32 2
  %call.i57 = tail call i32 @strlen(ptr noundef %model) #16
  %call1.i58 = tail call ptr @strncpy(ptr noundef %model8, ptr noundef %model, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i57)
  %cmp.i59 = icmp ult i32 %call.i57, 16
  %or.cond.i61 = and i1 %tobool.not.i, %cmp.i59
  br i1 %or.cond.i61, label %if.end.i66.thread, label %if.end.i66

if.end.i66.thread:                                ; preds = %scsi_strcpy_devinfo.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i62 = getelementptr i8, ptr %model8, i32 %call.i57
  %sub.i63 = sub nuw nsw i32 16, %call.i57
  %6 = call ptr @memset(ptr %arrayidx.i62, i32 32, i32 %sub.i63)
  br label %scsi_strcpy_devinfo.exit69

if.end.i66:                                       ; preds = %scsi_strcpy_devinfo.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i57)
  %cmp2.i65 = icmp ugt i32 %call.i57, 16
  br i1 %cmp2.i65, label %do.end.i68, label %if.end.i66.scsi_strcpy_devinfo.exit69_crit_edge

if.end.i66.scsi_strcpy_devinfo.exit69_crit_edge:  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_strcpy_devinfo.exit69

do.end.i68:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef %model) #15
  br label %scsi_strcpy_devinfo.exit69

scsi_strcpy_devinfo.exit69:                       ; preds = %do.end.i68, %if.end.i66.scsi_strcpy_devinfo.exit69_crit_edge, %if.end.i66.thread
  %tobool10.not = icmp eq ptr %strflags, null
  br i1 %tobool10.not, label %scsi_strcpy_devinfo.exit69.if.end16_crit_edge, label %if.then11

scsi_strcpy_devinfo.exit69.if.end16_crit_edge:    ; preds = %scsi_strcpy_devinfo.exit69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %scsi_strcpy_devinfo.exit69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %val, align 8, !annotation !704
  %call12 = call i32 @kstrtoull(ptr noundef nonnull %strflags, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #11
  br label %if.end16

cleanup:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #11
  br label %cleanup33

if.end16:                                         ; preds = %cleanup.thread, %scsi_strcpy_devinfo.exit69.if.end16_crit_edge
  %flags.addr.1 = phi i64 [ %flags, %scsi_strcpy_devinfo.exit69.if.end16_crit_edge ], [ %9, %cleanup.thread ]
  %and = and i64 %flags.addr.1, -17028751360
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %vendor, ptr noundef %model, i64 noundef %and) #15
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup33

if.end25:                                         ; preds = %if.end16
  %flags26 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags26 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %flags.addr.1, ptr %flags26, align 8
  %compatible27 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %call7.i, i32 0, i32 4
  %11 = ptrtoint ptr %compatible27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %compatible, ptr %compatible27, align 8
  %scsi_dev_info_list31 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 1
  br i1 %tobool.not.i, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  %prev.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %13, ptr noundef %scsi_dev_info_list31) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.cleanup33_crit_edge

if.then29.cleanup33_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %scsi_dev_info_list31, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i, ptr %13, align 4
  br label %cleanup33

if.else:                                          ; preds = %if.end25
  %18 = ptrtoint ptr %scsi_dev_info_list31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scsi_dev_info_list31, align 4
  %call.i.i70 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %scsi_dev_info_list31, ptr noundef %19) #11
  br i1 %call.i.i70, label %if.end.i.i72, label %if.else.cleanup33_crit_edge

if.else.cleanup33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup33

if.end.i.i72:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %call7.i, align 8
  %prev3.i.i71 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i71 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %scsi_dev_info_list31, ptr %prev3.i.i71, align 4
  %23 = ptrtoint ptr %scsi_dev_info_list31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i, ptr %scsi_dev_info_list31, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %if.end.i.i72, %if.else.cleanup33_crit_edge, %if.end.i.i, %if.then29.cleanup33_crit_edge, %do.end21, %cleanup, %do.end, %if.then
  %retval.1 = phi i32 [ %3, %if.then ], [ -22, %do.end21 ], [ %call12, %cleanup ], [ -12, %do.end ], [ 0, %if.then29.cleanup33_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.else.cleanup33_crit_edge ], [ 0, %if.end.i.i72 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_list_del_keyed(ptr nocapture noundef readonly %vendor, ptr nocapture noundef readonly %model, i32 noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @scsi_dev_info_list_find(ptr noundef %vendor, ptr noundef %model, i32 noundef %key)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scsi_dev_info_list_find(ptr nocapture noundef readonly %vendor, ptr nocapture noundef readonly %model, i32 noundef %key) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %devinfo_table.0.in.i = phi ptr [ @scsi_dev_info_list, %entry ], [ %devinfo_table.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %devinfo_table.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %devinfo_table.0.i = load ptr, ptr %devinfo_table.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %devinfo_table.0.i, @scsi_dev_info_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %key1.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key1.i, align 4
  %cmp2.i = icmp eq i32 %2, %key
  br i1 %cmp2.i, label %scsi_devinfo_lookup_by_key.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

scsi_devinfo_lookup_by_key.exit:                  ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %devinfo_table.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge, label %land.rhs.preheader

scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge: ; preds = %scsi_devinfo_lookup_by_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.preheader:                               ; preds = %scsi_devinfo_lookup_by_key.exit
  %uglygep = getelementptr i8, ptr %vendor, i32 8
  %3 = ptrtoint ptr %vendor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vendor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %4)
  %cmp2 = icmp eq i8 %4, 32
  br i1 %cmp2, label %while.body, label %land.rhs.preheader.while.end_crit_edge

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs.preheader
  %incdec.ptr = getelementptr i8, ptr %vendor, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %cmp2.1 = icmp eq i8 %6, 32
  br i1 %cmp2.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %incdec.ptr.1 = getelementptr i8, ptr %vendor, i32 2
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp2.2 = icmp eq i8 %8, 32
  br i1 %cmp2.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %incdec.ptr.2 = getelementptr i8, ptr %vendor, i32 3
  %9 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp2.3 = icmp eq i8 %10, 32
  br i1 %cmp2.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %incdec.ptr.3 = getelementptr i8, ptr %vendor, i32 4
  %11 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %12)
  %cmp2.4 = icmp eq i8 %12, 32
  br i1 %cmp2.4, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %incdec.ptr.4 = getelementptr i8, ptr %vendor, i32 5
  %13 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp2.5 = icmp eq i8 %14, 32
  br i1 %cmp2.5, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %incdec.ptr.5 = getelementptr i8, ptr %vendor, i32 6
  %15 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp2.6 = icmp eq i8 %16, 32
  br i1 %cmp2.6, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.6 = getelementptr i8, ptr %vendor, i32 7
  %17 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %cmp2.7 = icmp eq i8 %18, 32
  %spec.select = select i1 %cmp2.7, ptr %uglygep, ptr %incdec.ptr.6
  %not.cmp2.7 = xor i1 %cmp2.7, true
  %spec.select143 = zext i1 %not.cmp2.7 to i32
  br label %while.end

while.end:                                        ; preds = %while.body.6, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge
  %vskip.0.lcssa = phi ptr [ %vendor, %land.rhs.preheader.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ], [ %incdec.ptr.1, %while.body.1.while.end_crit_edge ], [ %incdec.ptr.2, %while.body.2.while.end_crit_edge ], [ %incdec.ptr.3, %while.body.3.while.end_crit_edge ], [ %incdec.ptr.4, %while.body.4.while.end_crit_edge ], [ %incdec.ptr.5, %while.body.5.while.end_crit_edge ], [ %spec.select, %while.body.6 ]
  %vmax.0.lcssa = phi i32 [ 8, %land.rhs.preheader.while.end_crit_edge ], [ 7, %while.body.while.end_crit_edge ], [ 6, %while.body.1.while.end_crit_edge ], [ 5, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 3, %while.body.4.while.end_crit_edge ], [ 2, %while.body.5.while.end_crit_edge ], [ %spec.select143, %while.body.6 ]
  br label %while.cond4

while.cond4:                                      ; preds = %land.rhs7.while.cond4_crit_edge, %while.end
  %vmax.1 = phi i32 [ %vmax.0.lcssa, %while.end ], [ %sub, %land.rhs7.while.cond4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vmax.1)
  %cmp5.not = icmp eq i32 %vmax.1, 0
  br i1 %cmp5.not, label %while.cond4.while.end14_crit_edge, label %land.rhs7

while.cond4.while.end14_crit_edge:                ; preds = %while.cond4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end14

land.rhs7:                                        ; preds = %while.cond4
  %sub = add nsw i32 %vmax.1, -1
  %arrayidx = getelementptr i8, ptr %vskip.0.lcssa, i32 %sub
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %cmp9 = icmp eq i8 %20, 32
  br i1 %cmp9, label %land.rhs7.while.cond4_crit_edge, label %land.rhs7.while.end14_crit_edge

land.rhs7.while.end14_crit_edge:                  ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end14

land.rhs7.while.cond4_crit_edge:                  ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond4

while.end14:                                      ; preds = %land.rhs7.while.end14_crit_edge, %while.cond4.while.end14_crit_edge
  %uglygep140 = getelementptr i8, ptr %model, i32 16
  %21 = ptrtoint ptr %model to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %model, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %22)
  %cmp20 = icmp eq i8 %22, 32
  br i1 %cmp20, label %while.body23, label %while.end14.while.end26_crit_edge

while.end14.while.end26_crit_edge:                ; preds = %while.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23:                                     ; preds = %while.end14
  %incdec.ptr25 = getelementptr i8, ptr %model, i32 1
  %23 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %24)
  %cmp20.1 = icmp eq i8 %24, 32
  br i1 %cmp20.1, label %while.body23.1, label %while.body23.while.end26_crit_edge

while.body23.while.end26_crit_edge:               ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.1:                                   ; preds = %while.body23
  %incdec.ptr25.1 = getelementptr i8, ptr %model, i32 2
  %25 = ptrtoint ptr %incdec.ptr25.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr25.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %26)
  %cmp20.2 = icmp eq i8 %26, 32
  br i1 %cmp20.2, label %while.body23.2, label %while.body23.1.while.end26_crit_edge

while.body23.1.while.end26_crit_edge:             ; preds = %while.body23.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.2:                                   ; preds = %while.body23.1
  %incdec.ptr25.2 = getelementptr i8, ptr %model, i32 3
  %27 = ptrtoint ptr %incdec.ptr25.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr25.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %28)
  %cmp20.3 = icmp eq i8 %28, 32
  br i1 %cmp20.3, label %while.body23.3, label %while.body23.2.while.end26_crit_edge

while.body23.2.while.end26_crit_edge:             ; preds = %while.body23.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.3:                                   ; preds = %while.body23.2
  %incdec.ptr25.3 = getelementptr i8, ptr %model, i32 4
  %29 = ptrtoint ptr %incdec.ptr25.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr25.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp20.4 = icmp eq i8 %30, 32
  br i1 %cmp20.4, label %while.body23.4, label %while.body23.3.while.end26_crit_edge

while.body23.3.while.end26_crit_edge:             ; preds = %while.body23.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.4:                                   ; preds = %while.body23.3
  %incdec.ptr25.4 = getelementptr i8, ptr %model, i32 5
  %31 = ptrtoint ptr %incdec.ptr25.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr25.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %32)
  %cmp20.5 = icmp eq i8 %32, 32
  br i1 %cmp20.5, label %while.body23.5, label %while.body23.4.while.end26_crit_edge

while.body23.4.while.end26_crit_edge:             ; preds = %while.body23.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.5:                                   ; preds = %while.body23.4
  %incdec.ptr25.5 = getelementptr i8, ptr %model, i32 6
  %33 = ptrtoint ptr %incdec.ptr25.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr25.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %34)
  %cmp20.6 = icmp eq i8 %34, 32
  br i1 %cmp20.6, label %while.body23.6, label %while.body23.5.while.end26_crit_edge

while.body23.5.while.end26_crit_edge:             ; preds = %while.body23.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.6:                                   ; preds = %while.body23.5
  %incdec.ptr25.6 = getelementptr i8, ptr %model, i32 7
  %35 = ptrtoint ptr %incdec.ptr25.6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr25.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %36)
  %cmp20.7 = icmp eq i8 %36, 32
  br i1 %cmp20.7, label %while.body23.7, label %while.body23.6.while.end26_crit_edge

while.body23.6.while.end26_crit_edge:             ; preds = %while.body23.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.7:                                   ; preds = %while.body23.6
  %incdec.ptr25.7 = getelementptr i8, ptr %model, i32 8
  %37 = ptrtoint ptr %incdec.ptr25.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr25.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %38)
  %cmp20.8 = icmp eq i8 %38, 32
  br i1 %cmp20.8, label %while.body23.8, label %while.body23.7.while.end26_crit_edge

while.body23.7.while.end26_crit_edge:             ; preds = %while.body23.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.8:                                   ; preds = %while.body23.7
  %incdec.ptr25.8 = getelementptr i8, ptr %model, i32 9
  %39 = ptrtoint ptr %incdec.ptr25.8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr25.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp20.9 = icmp eq i8 %40, 32
  br i1 %cmp20.9, label %while.body23.9, label %while.body23.8.while.end26_crit_edge

while.body23.8.while.end26_crit_edge:             ; preds = %while.body23.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.9:                                   ; preds = %while.body23.8
  %incdec.ptr25.9 = getelementptr i8, ptr %model, i32 10
  %41 = ptrtoint ptr %incdec.ptr25.9 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr25.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %42)
  %cmp20.10 = icmp eq i8 %42, 32
  br i1 %cmp20.10, label %while.body23.10, label %while.body23.9.while.end26_crit_edge

while.body23.9.while.end26_crit_edge:             ; preds = %while.body23.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.10:                                  ; preds = %while.body23.9
  %incdec.ptr25.10 = getelementptr i8, ptr %model, i32 11
  %43 = ptrtoint ptr %incdec.ptr25.10 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr25.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %44)
  %cmp20.11 = icmp eq i8 %44, 32
  br i1 %cmp20.11, label %while.body23.11, label %while.body23.10.while.end26_crit_edge

while.body23.10.while.end26_crit_edge:            ; preds = %while.body23.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.11:                                  ; preds = %while.body23.10
  %incdec.ptr25.11 = getelementptr i8, ptr %model, i32 12
  %45 = ptrtoint ptr %incdec.ptr25.11 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr25.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %46)
  %cmp20.12 = icmp eq i8 %46, 32
  br i1 %cmp20.12, label %while.body23.12, label %while.body23.11.while.end26_crit_edge

while.body23.11.while.end26_crit_edge:            ; preds = %while.body23.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.12:                                  ; preds = %while.body23.11
  %incdec.ptr25.12 = getelementptr i8, ptr %model, i32 13
  %47 = ptrtoint ptr %incdec.ptr25.12 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr25.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %48)
  %cmp20.13 = icmp eq i8 %48, 32
  br i1 %cmp20.13, label %while.body23.13, label %while.body23.12.while.end26_crit_edge

while.body23.12.while.end26_crit_edge:            ; preds = %while.body23.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.13:                                  ; preds = %while.body23.12
  %incdec.ptr25.13 = getelementptr i8, ptr %model, i32 14
  %49 = ptrtoint ptr %incdec.ptr25.13 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr25.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %50)
  %cmp20.14 = icmp eq i8 %50, 32
  br i1 %cmp20.14, label %while.body23.14, label %while.body23.13.while.end26_crit_edge

while.body23.13.while.end26_crit_edge:            ; preds = %while.body23.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body23.14:                                  ; preds = %while.body23.13
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr25.14 = getelementptr i8, ptr %model, i32 15
  %51 = ptrtoint ptr %incdec.ptr25.14 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr25.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %52)
  %cmp20.15 = icmp eq i8 %52, 32
  %not.cmp20.15 = xor i1 %cmp20.15, true
  %spec.select144 = zext i1 %not.cmp20.15 to i32
  %spec.select145 = select i1 %cmp20.15, ptr %uglygep140, ptr %incdec.ptr25.14
  br label %while.end26

while.end26:                                      ; preds = %while.body23.14, %while.body23.13.while.end26_crit_edge, %while.body23.12.while.end26_crit_edge, %while.body23.11.while.end26_crit_edge, %while.body23.10.while.end26_crit_edge, %while.body23.9.while.end26_crit_edge, %while.body23.8.while.end26_crit_edge, %while.body23.7.while.end26_crit_edge, %while.body23.6.while.end26_crit_edge, %while.body23.5.while.end26_crit_edge, %while.body23.4.while.end26_crit_edge, %while.body23.3.while.end26_crit_edge, %while.body23.2.while.end26_crit_edge, %while.body23.1.while.end26_crit_edge, %while.body23.while.end26_crit_edge, %while.end14.while.end26_crit_edge
  %mmax.0.lcssa = phi i32 [ 16, %while.end14.while.end26_crit_edge ], [ 15, %while.body23.while.end26_crit_edge ], [ 14, %while.body23.1.while.end26_crit_edge ], [ 13, %while.body23.2.while.end26_crit_edge ], [ 12, %while.body23.3.while.end26_crit_edge ], [ 11, %while.body23.4.while.end26_crit_edge ], [ 10, %while.body23.5.while.end26_crit_edge ], [ 9, %while.body23.6.while.end26_crit_edge ], [ 8, %while.body23.7.while.end26_crit_edge ], [ 7, %while.body23.8.while.end26_crit_edge ], [ 6, %while.body23.9.while.end26_crit_edge ], [ 5, %while.body23.10.while.end26_crit_edge ], [ 4, %while.body23.11.while.end26_crit_edge ], [ 3, %while.body23.12.while.end26_crit_edge ], [ 2, %while.body23.13.while.end26_crit_edge ], [ %spec.select144, %while.body23.14 ]
  %mskip.0.lcssa = phi ptr [ %model, %while.end14.while.end26_crit_edge ], [ %incdec.ptr25, %while.body23.while.end26_crit_edge ], [ %incdec.ptr25.1, %while.body23.1.while.end26_crit_edge ], [ %incdec.ptr25.2, %while.body23.2.while.end26_crit_edge ], [ %incdec.ptr25.3, %while.body23.3.while.end26_crit_edge ], [ %incdec.ptr25.4, %while.body23.4.while.end26_crit_edge ], [ %incdec.ptr25.5, %while.body23.5.while.end26_crit_edge ], [ %incdec.ptr25.6, %while.body23.6.while.end26_crit_edge ], [ %incdec.ptr25.7, %while.body23.7.while.end26_crit_edge ], [ %incdec.ptr25.8, %while.body23.8.while.end26_crit_edge ], [ %incdec.ptr25.9, %while.body23.9.while.end26_crit_edge ], [ %incdec.ptr25.10, %while.body23.10.while.end26_crit_edge ], [ %incdec.ptr25.11, %while.body23.11.while.end26_crit_edge ], [ %incdec.ptr25.12, %while.body23.12.while.end26_crit_edge ], [ %incdec.ptr25.13, %while.body23.13.while.end26_crit_edge ], [ %spec.select145, %while.body23.14 ]
  br label %while.cond27

while.cond27:                                     ; preds = %land.rhs30.while.cond27_crit_edge, %while.end26
  %mmax.1 = phi i32 [ %mmax.0.lcssa, %while.end26 ], [ %sub31, %land.rhs30.while.cond27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mmax.1)
  %cmp28.not = icmp eq i32 %mmax.1, 0
  br i1 %cmp28.not, label %while.cond27.while.end39_crit_edge, label %land.rhs30

while.cond27.while.end39_crit_edge:               ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end39

land.rhs30:                                       ; preds = %while.cond27
  %sub31 = add nsw i32 %mmax.1, -1
  %arrayidx32 = getelementptr i8, ptr %mskip.0.lcssa, i32 %sub31
  %53 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx32, align 1
  %cmp34 = icmp eq i8 %54, 32
  br i1 %cmp34, label %land.rhs30.while.cond27_crit_edge, label %land.rhs30.while.end39_crit_edge

land.rhs30.while.end39_crit_edge:                 ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end39

land.rhs30.while.cond27_crit_edge:                ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond27

while.end39:                                      ; preds = %land.rhs30.while.end39_crit_edge, %while.cond27.while.end39_crit_edge
  %scsi_dev_info_list = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 1
  %55 = ptrtoint ptr %scsi_dev_info_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %devinfo.0133 = load ptr, ptr %scsi_dev_info_list, align 4
  %cmp41.not134 = icmp eq ptr %devinfo.0133, %scsi_dev_info_list
  br i1 %cmp41.not134, label %while.end39.cleanup_crit_edge, label %while.end39.for.body_crit_edge

while.end39.for.body_crit_edge:                   ; preds = %while.end39
  br label %for.body

while.end39.cleanup_crit_edge:                    ; preds = %while.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end39.for.body_crit_edge
  %devinfo.0135 = phi ptr [ %devinfo.0, %for.inc.for.body_crit_edge ], [ %devinfo.0133, %while.end39.for.body_crit_edge ]
  %compatible = getelementptr inbounds %struct.scsi_dev_info_list, ptr %devinfo.0135, i32 0, i32 4
  %56 = ptrtoint ptr %compatible to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %compatible, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not = icmp eq i32 %57, 0
  %vendor66 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %devinfo.0135, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %for.body
  %call45 = tail call i32 @strnlen(ptr noundef %vendor66, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %vmax.1, i32 %call45)
  %cmp46.not = icmp eq i32 %vmax.1, %call45
  br i1 %cmp46.not, label %lor.lhs.false, label %if.then43.for.inc_crit_edge

if.then43.for.inc_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.then43
  %bcmp123 = tail call i32 @bcmp(ptr %vendor66, ptr %vskip.0.lcssa, i32 %vmax.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp123)
  %tobool51.not = icmp eq i32 %bcmp123, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end53:                                         ; preds = %lor.lhs.false
  %model54 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %devinfo.0135, i32 0, i32 2
  %call56 = tail call i32 @strnlen(ptr noundef %model54, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %mmax.1, i32 %call56)
  %cmp57 = icmp ult i32 %mmax.1, %call56
  br i1 %cmp57, label %if.end53.for.inc_crit_edge, label %lor.lhs.false59

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false59:                                  ; preds = %if.end53
  %bcmp124 = tail call i32 @bcmp(ptr %model54, ptr %mskip.0.lcssa, i32 %call56) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp124)
  %tobool63.not = icmp eq i32 %bcmp124, 0
  br i1 %tobool63.not, label %lor.lhs.false59.cleanup_crit_edge, label %lor.lhs.false59.for.inc_crit_edge

lor.lhs.false59.for.inc_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %for.body
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %vendor66, ptr noundef dereferenceable(8) %vendor, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool69.not = icmp eq i32 %bcmp, 0
  br i1 %tobool69.not, label %land.lhs.true, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.else
  %model70 = getelementptr inbounds %struct.scsi_dev_info_list, ptr %devinfo.0135, i32 0, i32 2
  %bcmp122 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %model70, ptr noundef dereferenceable(16) %model, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp122)
  %tobool73.not = icmp eq i32 %bcmp122, 0
  br i1 %tobool73.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.else.for.inc_crit_edge, %lor.lhs.false59.for.inc_crit_edge, %if.end53.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.then43.for.inc_crit_edge
  %58 = ptrtoint ptr %devinfo.0135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %devinfo.0 = load ptr, ptr %devinfo.0135, align 4
  %cmp41.not = icmp eq ptr %devinfo.0, %scsi_dev_info_list
  br i1 %cmp41.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false59.cleanup_crit_edge, %while.end39.cleanup_crit_edge, %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %devinfo_table.0.i, %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %while.end39.cleanup_crit_edge ], [ %devinfo.0135, %lor.lhs.false59.cleanup_crit_edge ], [ %devinfo.0135, %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @scsi_get_device_flags(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %vendor, ptr nocapture noundef readonly %model) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @scsi_dev_info_list_find(ptr noundef %vendor, ptr noundef %model, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.scsi_dev_info_list, ptr %call.i, i32 0, i32 3
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %sdev_bflags.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 39
  %0 = ptrtoint ptr %sdev_bflags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sdev_bflags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.scsi_get_device_flags_keyed.exit_crit_edge

if.end.i.scsi_get_device_flags_keyed.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_get_device_flags_keyed.exit

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.then.i
  %scsi_default_dev_flags.sink.i = phi ptr [ %flags.i, %if.then.i ], [ @scsi_default_dev_flags, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %2 = ptrtoint ptr %scsi_default_dev_flags.sink.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %scsi_default_dev_flags.sink.i, align 8
  br label %scsi_get_device_flags_keyed.exit

scsi_get_device_flags_keyed.exit:                 ; preds = %cleanup.sink.split.i, %if.end.i.scsi_get_device_flags_keyed.exit_crit_edge
  %retval.0.i = phi i64 [ %1, %if.end.i.scsi_get_device_flags_keyed.exit_crit_edge ], [ %3, %cleanup.sink.split.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @scsi_get_device_flags_keyed(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %vendor, ptr nocapture noundef readonly %model, i32 noundef %key) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @scsi_dev_info_list_find(ptr noundef %vendor, ptr noundef %model, i32 noundef %key)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.scsi_dev_info_list, ptr %call, i32 0, i32 3
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key)
  %cmp.not = icmp eq i32 %key, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sdev_bflags = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 39
  %0 = ptrtoint ptr %sdev_bflags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sdev_bflags, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end3.cleanup.sink.split_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3.cleanup.sink.split_crit_edge, %if.then
  %scsi_default_dev_flags.sink = phi ptr [ %flags, %if.then ], [ @scsi_default_dev_flags, %if.end3.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %scsi_default_dev_flags.sink to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %scsi_default_dev_flags.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %if.end.cleanup_crit_edge ], [ %1, %if.end3.cleanup_crit_edge ], [ %3, %cleanup.sink.split ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_exit_devinfo() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef null) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %devinfo_table.0.in.i.i = phi ptr [ @scsi_dev_info_list, %entry ], [ %devinfo_table.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %devinfo_table.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %devinfo_table.0.i.i = load ptr, ptr %devinfo_table.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %devinfo_table.0.i.i, @scsi_dev_info_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.scsi_dev_info_remove_list.exit_crit_edge, label %for.body.i.i

for.cond.i.i.scsi_dev_info_remove_list.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_dev_info_remove_list.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %key1.i.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %key1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key1.i.i, align 4
  %cmp2.i.i = icmp eq i32 %2, 0
  br i1 %cmp2.i.i, label %scsi_devinfo_lookup_by_key.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

scsi_devinfo_lookup_by_key.exit.i:                ; preds = %for.body.i.i
  %cmp.i.i = icmp ugt ptr %devinfo_table.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %scsi_devinfo_lookup_by_key.exit.i.scsi_dev_info_remove_list.exit_crit_edge, label %if.end.i

scsi_devinfo_lookup_by_key.exit.i.scsi_dev_info_remove_list.exit_crit_edge: ; preds = %scsi_devinfo_lookup_by_key.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %scsi_dev_info_remove_list.exit

if.end.i:                                         ; preds = %scsi_devinfo_lookup_by_key.exit.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %devinfo_table.0.i.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %devinfo_table.0.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %devinfo_table.0.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devinfo_table.0.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %devinfo_table.0.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %devinfo_table.0.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %devinfo_table.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %scsi_dev_info_list.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %scsi_dev_info_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scsi_dev_info_list.i, align 4
  %cmp.i15.not19.i = icmp eq ptr %12, %scsi_dev_info_list.i
  br i1 %cmp.i15.not19.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.i.for.body.i_crit_edge
  %lh.020.i = phi ptr [ %lh_next.0.i, %for.body.i.for.body.i_crit_edge ], [ %12, %list_del.exit.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %lh.020.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %lh_next.0.i = load ptr, ptr %lh.020.i, align 4
  tail call void @kfree(ptr noundef %lh.020.i) #11
  %cmp.i15.not.i = icmp eq ptr %lh_next.0.i, %scsi_dev_info_list.i
  br i1 %cmp.i15.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %list_del.exit.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef %devinfo_table.0.i.i) #11
  br label %scsi_dev_info_remove_list.exit

scsi_dev_info_remove_list.exit:                   ; preds = %for.end.i, %scsi_devinfo_lookup_by_key.exit.i.scsi_dev_info_remove_list.exit_crit_edge, %for.cond.i.i.scsi_dev_info_remove_list.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_remove_list(i32 noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %devinfo_table.0.in.i = phi ptr [ @scsi_dev_info_list, %entry ], [ %devinfo_table.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %devinfo_table.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %devinfo_table.0.i = load ptr, ptr %devinfo_table.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %devinfo_table.0.i, @scsi_dev_info_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %key1.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key1.i, align 4
  %cmp2.i = icmp eq i32 %2, %key
  br i1 %cmp2.i, label %scsi_devinfo_lookup_by_key.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

scsi_devinfo_lookup_by_key.exit:                  ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %devinfo_table.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge, label %if.end

scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge: ; preds = %scsi_devinfo_lookup_by_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %scsi_devinfo_lookup_by_key.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %devinfo_table.0.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %devinfo_table.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %devinfo_table.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devinfo_table.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %devinfo_table.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %devinfo_table.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %devinfo_table.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %scsi_dev_info_list = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %scsi_dev_info_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scsi_dev_info_list, align 4
  %cmp.i15.not19 = icmp eq ptr %12, %scsi_dev_info_list
  br i1 %cmp.i15.not19, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_del.exit.for.body_crit_edge
  %lh.020 = phi ptr [ %lh_next.0, %for.body.for.body_crit_edge ], [ %12, %list_del.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %lh.020 to i32
  call void @__asan_load4_noabort(i32 %13)
  %lh_next.0 = load ptr, ptr %lh.020, align 4
  tail call void @kfree(ptr noundef %lh.020) #11
  %cmp.i15.not = icmp eq ptr %lh_next.0, %scsi_dev_info_list
  br i1 %cmp.i15.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef %devinfo_table.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dev_info_add_list(i32 noundef %key, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %devinfo_table.0.in.i = phi ptr [ @scsi_dev_info_list, %entry ], [ %devinfo_table.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %devinfo_table.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %devinfo_table.0.i = load ptr, ptr %devinfo_table.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %devinfo_table.0.i, @scsi_dev_info_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %key1.i = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %devinfo_table.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %key1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key1.i, align 4
  %cmp2.i = icmp eq i32 %2, %key
  br i1 %cmp2.i, label %scsi_devinfo_lookup_by_key.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

scsi_devinfo_lookup_by_key.exit:                  ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %devinfo_table.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %scsi_devinfo_lookup_by_key.exit.if.end_crit_edge, label %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge

scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge: ; preds = %scsi_devinfo_lookup_by_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

scsi_devinfo_lookup_by_key.exit.if.end_crit_edge: ; preds = %scsi_devinfo_lookup_by_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %scsi_devinfo_lookup_by_key.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 24) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %prev.i, align 4
  %scsi_dev_info_list = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %scsi_dev_info_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %scsi_dev_info_list, ptr %scsi_dev_info_list, align 8
  %prev.i15 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %call7.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %scsi_dev_info_list, ptr %prev.i15, align 4
  %name5 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %name5, align 8
  %key6 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %key6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %key, ptr %key6, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scsi_dev_info_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %10, ptr noundef nonnull @scsi_dev_info_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i, ptr getelementptr inbounds (%struct.list_head, ptr @scsi_dev_info_list, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @scsi_dev_info_list, ptr %call7.i, align 8
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i, ptr %10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %scsi_devinfo_lookup_by_key.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_init_devinfo() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_dev_info_add_list(i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @scsi_dev_info_list_add_str(ptr noundef nonnull @scsi_dev_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.for.body_crit_edge, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.035, 1
  %arrayidx = getelementptr [181 x %struct.anon.83], ptr @scsi_static_device_list, i32 0, i32 %inc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %2 = phi ptr [ %1, %for.cond.for.body_crit_edge ], [ @.str.16, %if.end.for.body_crit_edge ]
  %i.035 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %model = getelementptr [181 x %struct.anon.83], ptr @scsi_static_device_list, i32 0, i32 %i.035, i32 1
  %3 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %model, align 4
  %flags = getelementptr [181 x %struct.anon.83], ptr @scsi_static_device_list, i32 0, i32 %i.035, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags, align 8
  %call.i = tail call i32 @scsi_dev_info_list_add_keyed(i32 noundef 1, ptr noundef nonnull %2, ptr noundef %4, ptr noundef null, i64 noundef %6, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %for.cond, label %for.body.if.then19_crit_edge

for.body.if.then19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

for.end:                                          ; preds = %for.cond
  %call14 = tail call ptr @proc_create(ptr noundef nonnull @.str.8, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @scsi_devinfo_proc_ops) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %for.end.if.then19_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %for.end.if.then19_crit_edge, %for.body.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %error.1.ph = phi i32 [ %call1, %if.end.if.then19_crit_edge ], [ -12, %for.end.if.then19_crit_edge ], [ %call.i, %for.body.if.then19_crit_edge ]
  tail call void @scsi_exit_devinfo()
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.1.ph, %if.then19 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_dev_info_list_add_str(ptr noundef %dev_list) unnamed_addr #0 align 64 {
entry:
  %next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #11
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev_list, ptr %next, align 4
  %tobool.not = icmp eq ptr %dev_list, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %dev_list to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dev_list, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %2)
  %cmp = icmp eq i8 %2, 34
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %dev_list, i32 1
  %3 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %incdec.ptr, ptr %next, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %next_check.0 = phi ptr [ @.str.11, %if.then ], [ @.str.12, %land.lhs.true.if.end_crit_edge ], [ @.str.12, %entry.if.end_crit_edge ]
  %call = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.13) #11
  %tobool2.not38 = icmp eq ptr %call, null
  br i1 %tobool2.not38, label %if.end.for.end_crit_edge, label %if.end.land.lhs.true3_crit_edge

if.end.land.lhs.true3_crit_edge:                  ; preds = %if.end
  br label %land.lhs.true3

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true3:                                   ; preds = %for.inc.land.lhs.true3_crit_edge, %if.end.land.lhs.true3_crit_edge
  %vendor.040 = phi ptr [ %call22, %for.inc.land.lhs.true3_crit_edge ], [ %call, %if.end.land.lhs.true3_crit_edge ]
  %res.039 = phi i32 [ %res.1, %for.inc.land.lhs.true3_crit_edge ], [ 0, %if.end.land.lhs.true3_crit_edge ]
  %4 = ptrtoint ptr %vendor.040 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vendor.040, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.039)
  %cmp8 = icmp eq i32 %res.039, 0
  %or.cond = select i1 %cmp6.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true3.for.end_crit_edge

land.lhs.true3.for.end_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.lhs.true3
  %call10 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.13) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %for.body.do.end_crit_edge, label %if.end14

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end14:                                         ; preds = %for.body
  %call13 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull %next_check.0) #11
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %if.end14.do.end_crit_edge, label %if.else19

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end14.do.end_crit_edge, %for.body.do.end_crit_edge
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull %vendor.040, ptr noundef %call10, ptr noundef null) #15
  br label %for.inc

if.else19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @scsi_dev_info_list_add_keyed(i32 noundef 0, ptr noundef nonnull %vendor.040, ptr noundef nonnull %call10, ptr noundef nonnull %call13, i64 noundef 0, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else19, %do.end
  %res.1 = phi i32 [ %call.i, %if.else19 ], [ -22, %do.end ]
  %call22 = call ptr @strsep(ptr noundef nonnull %next, ptr noundef nonnull @.str.13) #11
  %tobool2.not = icmp eq ptr %call22, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true3_crit_edge

for.inc.land.lhs.true3_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true3

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true3.for.end_crit_edge, %if.end.for.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %res.1, %for.inc.for.end_crit_edge ], [ %res.039, %land.lhs.true3.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #11
  ret i32 %res.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_devinfo_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @scsi_devinfo_seq_ops) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_scsi_devinfo_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %length, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ugt i32 %length, 4096
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %0, i32 noundef %length, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.328, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %buf, i32 %length, i32 -1226833920) #18, !srcloc !705
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !706

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %0, i32 noundef %length) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !694) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !707
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !708
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !709
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %0, ptr noundef nonnull %buf, i32 noundef %length) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !708
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !709
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %length, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %length, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.then11.i.i, !prof !706

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %length, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end7:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp8 = icmp ult i32 %length, 4096
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr i8, ptr %0, i32 %length
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end14

if.else:                                          ; preds = %if.end7
  %arrayidx10 = getelementptr i8, ptr %0, i32 4095
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.else.if.end14_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then9
  %call15 = tail call fastcc i32 @scsi_dev_info_list_add_str(ptr noundef nonnull %0)
  br label %out

out:                                              ; preds = %if.end14, %if.else.out_crit_edge, %if.then11.i.i
  %err.0 = phi i32 [ %length, %if.end14 ], [ -22, %if.else.out_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @free_pages(i32 noundef %call, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @devinfo_seq_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup22_crit_edge, label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup22

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  %storemerge42 = load ptr, ptr @scsi_dev_info_list, align 4
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %storemerge42, ptr %call7.i, align 8
  %cmp.i.not43 = icmp eq ptr %storemerge42, @scsi_dev_info_list
  br i1 %cmp.i.not43, label %if.end.for.end21_crit_edge, label %for.body.lr.ph

if.end.for.end21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21

for.body.lr.ph:                                   ; preds = %if.end
  %bottom = getelementptr inbounds %struct.double_list, ptr %call7.i, i32 0, i32 1
  br label %for.body

for.cond.loopexit:                                ; preds = %for.cond5
  %4 = ptrtoint ptr %storemerge45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge = load ptr, ptr %storemerge45, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %storemerge, ptr %call7.i, align 8
  %cmp.i.not = icmp eq ptr %storemerge, @scsi_dev_info_list
  br i1 %cmp.i.not, label %for.cond.loopexit.for.end21_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.for.end21_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end21

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %storemerge45 = phi ptr [ %storemerge42, %for.body.lr.ph ], [ %storemerge, %for.cond.loopexit.for.body_crit_edge ]
  %pos.044 = phi i64 [ %2, %for.body.lr.ph ], [ %pos.1, %for.cond.loopexit.for.body_crit_edge ]
  %scsi_dev_info_list = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %storemerge45, i32 0, i32 1
  br label %for.cond5

for.cond5:                                        ; preds = %for.body11.for.cond5_crit_edge, %for.body
  %storemerge36.in = phi ptr [ %scsi_dev_info_list, %for.body ], [ %storemerge36, %for.body11.for.cond5_crit_edge ]
  %pos.1 = phi i64 [ %pos.044, %for.body ], [ %dec, %for.body11.for.cond5_crit_edge ]
  %6 = ptrtoint ptr %storemerge36.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %storemerge36 = load ptr, ptr %storemerge36.in, align 4
  %7 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %storemerge36, ptr %bottom, align 4
  %cmp.i37.not = icmp eq ptr %storemerge36, %scsi_dev_info_list
  br i1 %cmp.i37.not, label %for.cond.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond5
  %dec = add i64 %pos.1, -1
  %cmp = icmp eq i64 %pos.1, 0
  br i1 %cmp, label %for.body11.cleanup22_crit_edge, label %for.body11.for.cond5_crit_edge

for.body11.for.cond5_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond5

for.body11.cleanup22_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup22

for.end21:                                        ; preds = %for.cond.loopexit.for.end21_crit_edge, %if.end.for.end21_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup22

cleanup22:                                        ; preds = %for.end21, %for.body11.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.2 = phi ptr [ null, %for.end21 ], [ null, %entry.cleanup22_crit_edge ], [ %call7.i, %for.body11.cleanup22_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devinfo_seq_stop(ptr nocapture noundef readnone %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %v) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @devinfo_seq_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %ppos, align 8
  %bottom = getelementptr inbounds %struct.double_list, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bottom, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %storemerge27 = load ptr, ptr %5, align 4
  store ptr %storemerge27, ptr %bottom, align 4
  %scsi_dev_info_list28 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %1, i32 0, i32 1
  %cmp29 = icmp eq ptr %scsi_dev_info_list28, %storemerge27
  br i1 %cmp29, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond:                                       ; preds = %while.body
  %scsi_dev_info_list12 = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %12, i32 0, i32 1
  %7 = ptrtoint ptr %scsi_dev_info_list12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge = load ptr, ptr %scsi_dev_info_list12, align 4
  %8 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %storemerge, ptr %bottom, align 4
  %cmp = icmp eq ptr %scsi_dev_info_list12, %storemerge
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %9 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  store ptr %12, ptr %v, align 4
  %cmp7 = icmp eq ptr %12, @scsi_dev_info_list
  br i1 %cmp7, label %if.then, label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %v) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %v, %entry.cleanup_crit_edge ], [ %v, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devinfo_seq_show(ptr noundef %m, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v, align 4
  %bottom = getelementptr inbounds %struct.double_list, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bottom, align 4
  %scsi_dev_info_list = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %scsi_dev_info_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scsi_dev_info_list, align 4
  %cmp = icmp eq ptr %5, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.scsi_dev_info_list_table, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.324, ptr noundef nonnull %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vendor = getelementptr inbounds %struct.scsi_dev_info_list, ptr %3, i32 0, i32 1
  %model = getelementptr inbounds %struct.scsi_dev_info_list, ptr %3, i32 0, i32 2
  %flags = getelementptr inbounds %struct.scsi_dev_info_list, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.325, ptr noundef %vendor, ptr noundef %model, i64 noundef %9) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 336)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 336)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !690, !692}
!llvm.named.register.sp = !{!694}
!llvm.module.flags = !{!695, !696, !697, !698, !699, !700, !701, !702}
!llvm.ident = !{!703}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_devinfo.c", i32 362, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @scsi_dev_info_list_add_keyed._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @scsi_dev_info_list_add_keyed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_devinfo.c", i32 366, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_devinfo.c", i32 368, i32 22}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/scsi_devinfo.c", i32 382, i32 3}
!12 = !{ptr @scsi_dev_info_list_add_keyed._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @scsi_dev_info_list_add_keyed._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_scsi_dev_info_list_add_keyed, !15, !"__ksymtab_scsi_dev_info_list_add_keyed", i1 false, i1 false}
!15 = !{!"../drivers/scsi/scsi_devinfo.c", i32 399, i32 1}
!16 = !{ptr @__ksymtab_scsi_dev_info_list_del_keyed, !17, !"__ksymtab_scsi_dev_info_list_del_keyed", i1 false, i1 false}
!17 = !{!"../drivers/scsi/scsi_devinfo.c", i32 510, i32 1}
!18 = !{ptr @__ksymtab_scsi_get_device_flags_keyed, !19, !"__ksymtab_scsi_get_device_flags_keyed", i1 false, i1 false}
!19 = !{!"../drivers/scsi/scsi_devinfo.c", i32 619, i32 1}
!20 = !{ptr @__param_dev_flags, !21, !"__param_dev_flags", i1 false, i1 false}
!21 = !{!"../drivers/scsi/scsi_devinfo.c", i32 752, i32 1}
!22 = !{ptr @__UNIQUE_ID_dev_flagstype279, !21, !"__UNIQUE_ID_dev_flagstype279", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_dev_flags280, !24, !"__UNIQUE_ID_dev_flags280", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_devinfo.c", i32 753, i32 1}
!25 = !{ptr @__param_default_dev_flags, !26, !"__param_default_dev_flags", i1 false, i1 false}
!26 = !{!"../drivers/scsi/scsi_devinfo.c", i32 758, i32 1}
!27 = !{ptr @__UNIQUE_ID_default_dev_flagstype281, !26, !"__UNIQUE_ID_default_dev_flagstype281", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_default_dev_flags282, !29, !"__UNIQUE_ID_default_dev_flags282", i1 false, i1 false}
!29 = !{!"../drivers/scsi/scsi_devinfo.c", i32 759, i32 1}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/scsi_devinfo.c", i32 768, i32 20}
!32 = !{ptr @__ksymtab_scsi_dev_info_add_list, !33, !"__ksymtab_scsi_dev_info_add_list", i1 false, i1 false}
!33 = !{!"../drivers/scsi/scsi_devinfo.c", i32 804, i32 1}
!34 = !{ptr @__ksymtab_scsi_dev_info_remove_list, !35, !"__ksymtab_scsi_dev_info_remove_list", i1 false, i1 false}
!35 = !{!"../drivers/scsi/scsi_devinfo.c", i32 838, i32 1}
!36 = !{ptr @scsi_default_dev_flags, !37, !"scsi_default_dev_flags", i1 false, i1 false}
!37 = !{!"../drivers/scsi/scsi_devinfo.c", i32 37, i32 22}
!38 = !{ptr @scsi_dev_flags, !39, !"scsi_dev_flags", i1 false, i1 false}
!39 = !{!"../drivers/scsi/scsi_devinfo.c", i32 39, i32 13}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/scsi_devinfo.c", i32 303, i32 4}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @scsi_strcpy_devinfo._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @scsi_strcpy_devinfo._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__param_str_dev_flags, !21, !"__param_str_dev_flags", i1 false, i1 false}
!46 = !{ptr @__param_string_dev_flags, !21, !"__param_string_dev_flags", i1 false, i1 false}
!47 = !{ptr @__param_str_default_dev_flags, !26, !"__param_str_default_dev_flags", i1 false, i1 false}
!48 = !{ptr @scsi_dev_info_list, !49, !"scsi_dev_info_list", i1 false, i1 false}
!49 = !{!"../drivers/scsi/scsi_devinfo.c", i32 38, i32 8}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/scsi_devinfo.c", i32 536, i32 16}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/scsi_devinfo.c", i32 538, i32 16}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/scsi_devinfo.c", i32 545, i32 30}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/scsi_devinfo.c", i32 552, i32 4}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @scsi_dev_info_list_add_str._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @scsi_dev_info_list_add_str._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/scsi_devinfo.c", i32 61, i32 3}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_devinfo.c", i32 61, i32 14}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/scsi_devinfo.c", i32 61, i32 32}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/scsi_devinfo.c", i32 62, i32 3}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/scsi_devinfo.c", i32 62, i32 13}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/scsi_devinfo.c", i32 62, i32 31}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/scsi_devinfo.c", i32 63, i32 13}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/scsi_devinfo.c", i32 63, i32 31}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/scsi_devinfo.c", i32 64, i32 3}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/scsi_devinfo.c", i32 64, i32 12}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/scsi_devinfo.c", i32 64, i32 23}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/scsi_devinfo.c", i32 65, i32 3}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/scsi_devinfo.c", i32 65, i32 14}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/scsi_devinfo.c", i32 65, i32 24}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/scsi_devinfo.c", i32 66, i32 14}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/scsi_devinfo.c", i32 66, i32 24}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/scsi_devinfo.c", i32 67, i32 3}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/scsi_devinfo.c", i32 67, i32 10}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/scsi_devinfo.c", i32 68, i32 10}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/scsi_devinfo.c", i32 69, i32 3}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/scsi_devinfo.c", i32 69, i32 10}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/scsi_devinfo.c", i32 69, i32 23}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/scsi_devinfo.c", i32 70, i32 3}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/scsi_devinfo.c", i32 70, i32 13}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/scsi_devinfo.c", i32 70, i32 24}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/scsi_devinfo.c", i32 71, i32 13}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/scsi_devinfo.c", i32 71, i32 25}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/scsi_devinfo.c", i32 72, i32 13}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/scsi_devinfo.c", i32 72, i32 26}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/scsi_devinfo.c", i32 73, i32 13}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/scsi_devinfo.c", i32 73, i32 25}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/scsi_devinfo.c", i32 74, i32 13}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/scsi_devinfo.c", i32 74, i32 25}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/scsi_devinfo.c", i32 75, i32 3}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/scsi_devinfo.c", i32 75, i32 15}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/scsi_devinfo.c", i32 75, i32 33}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/scsi_devinfo.c", i32 76, i32 3}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/scsi_devinfo.c", i32 76, i32 15}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/scsi_devinfo.c", i32 76, i32 31}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/scsi_devinfo.c", i32 77, i32 3}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/scsi_devinfo.c", i32 77, i32 10}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/scsi_devinfo.c", i32 77, i32 30}
!145 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/scsi_devinfo.c", i32 78, i32 3}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/scsi_devinfo.c", i32 78, i32 14}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/scsi_devinfo.c", i32 78, i32 25}
!151 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/scsi_devinfo.c", i32 79, i32 3}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/scsi_devinfo.c", i32 79, i32 13}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/scsi_devinfo.c", i32 79, i32 24}
!157 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/scsi_devinfo.c", i32 80, i32 3}
!159 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/scsi_devinfo.c", i32 80, i32 10}
!161 = !{ptr @.str.66, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/scsi_devinfo.c", i32 85, i32 3}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/scsi_devinfo.c", i32 85, i32 12}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/scsi_devinfo.c", i32 85, i32 24}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/scsi_devinfo.c", i32 90, i32 3}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/scsi_devinfo.c", i32 90, i32 14}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/scsi_devinfo.c", i32 90, i32 24}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/scsi_devinfo.c", i32 91, i32 14}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/scsi_devinfo.c", i32 91, i32 23}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/scsi_devinfo.c", i32 92, i32 14}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/scsi_devinfo.c", i32 92, i32 24}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/scsi_devinfo.c", i32 93, i32 3}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/scsi_devinfo.c", i32 93, i32 11}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/scsi_devinfo.c", i32 93, i32 29}
!187 = !{ptr @.str.79, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/scsi_devinfo.c", i32 94, i32 11}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/scsi_devinfo.c", i32 94, i32 29}
!191 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/scsi_devinfo.c", i32 95, i32 11}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/scsi/scsi_devinfo.c", i32 95, i32 29}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/scsi_devinfo.c", i32 96, i32 11}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/scsi_devinfo.c", i32 97, i32 11}
!199 = !{ptr @.str.85, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/scsi_devinfo.c", i32 97, i32 23}
!201 = !{ptr @.str.86, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/scsi_devinfo.c", i32 98, i32 3}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/scsi_devinfo.c", i32 98, i32 15}
!205 = !{ptr @.str.88, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/scsi_devinfo.c", i32 98, i32 27}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/scsi_devinfo.c", i32 99, i32 3}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/scsi_devinfo.c", i32 99, i32 11}
!211 = !{ptr @.str.91, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/scsi_devinfo.c", i32 99, i32 22}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/scsi_devinfo.c", i32 104, i32 11}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/scsi_devinfo.c", i32 104, i32 21}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/scsi_devinfo.c", i32 105, i32 11}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/scsi_devinfo.c", i32 105, i32 29}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/scsi_devinfo.c", i32 110, i32 3}
!223 = !{ptr @.str.97, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/scsi_devinfo.c", i32 110, i32 9}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/scsi_devinfo.c", i32 110, i32 19}
!227 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/scsi_devinfo.c", i32 111, i32 9}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/scsi_devinfo.c", i32 112, i32 9}
!231 = !{ptr @.str.101, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/scsi_devinfo.c", i32 113, i32 15}
!233 = !{ptr @.str.102, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/scsi_devinfo.c", i32 113, i32 28}
!235 = !{ptr @.str.103, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/scsi_devinfo.c", i32 114, i32 15}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/scsi_devinfo.c", i32 114, i32 31}
!239 = !{ptr @.str.105, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/scsi_devinfo.c", i32 115, i32 3}
!241 = !{ptr @.str.106, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/scsi_devinfo.c", i32 115, i32 14}
!243 = !{ptr @.str.107, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/scsi_devinfo.c", i32 115, i32 32}
!245 = !{ptr @.str.108, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/scsi_devinfo.c", i32 116, i32 10}
!247 = !{ptr @.str.109, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/scsi_devinfo.c", i32 116, i32 19}
!249 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/scsi_devinfo.c", i32 117, i32 3}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/scsi_devinfo.c", i32 117, i32 14}
!253 = !{ptr @.str.112, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/scsi_devinfo.c", i32 117, i32 25}
!255 = !{ptr @.str.113, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/scsi_devinfo.c", i32 118, i32 14}
!257 = !{ptr @.str.114, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/scsi_devinfo.c", i32 119, i32 14}
!259 = !{ptr @.str.115, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/scsi_devinfo.c", i32 119, i32 33}
!261 = !{ptr @.str.116, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/scsi_devinfo.c", i32 120, i32 3}
!263 = !{ptr @.str.117, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/scsi_devinfo.c", i32 120, i32 14}
!265 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/scsi_devinfo.c", i32 121, i32 3}
!267 = !{ptr @.str.119, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/scsi_devinfo.c", i32 121, i32 13}
!269 = !{ptr @.str.120, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/scsi_devinfo.c", i32 121, i32 22}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/scsi_devinfo.c", i32 122, i32 3}
!273 = !{ptr @.str.122, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/scsi_devinfo.c", i32 123, i32 3}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/scsi_devinfo.c", i32 123, i32 15}
!277 = !{ptr @.str.124, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/scsi_devinfo.c", i32 123, i32 24}
!279 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/scsi_devinfo.c", i32 124, i32 3}
!281 = !{ptr @.str.126, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/scsi_devinfo.c", i32 124, i32 13}
!283 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/scsi_devinfo.c", i32 124, i32 23}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/scsi_devinfo.c", i32 125, i32 13}
!287 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/scsi_devinfo.c", i32 126, i32 13}
!289 = !{ptr @.str.130, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/scsi_devinfo.c", i32 127, i32 13}
!291 = !{ptr @.str.131, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/scsi_devinfo.c", i32 127, i32 25}
!293 = !{ptr @.str.132, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/scsi_devinfo.c", i32 128, i32 3}
!295 = !{ptr @.str.133, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/scsi_devinfo.c", i32 128, i32 7}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/scsi_devinfo.c", i32 128, i32 18}
!299 = !{ptr @.str.135, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/scsi_devinfo.c", i32 134, i32 3}
!301 = !{ptr @.str.136, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/scsi_devinfo.c", i32 134, i32 15}
!303 = !{ptr @.str.137, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/scsi_devinfo.c", i32 135, i32 3}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/scsi_devinfo.c", i32 135, i32 14}
!307 = !{ptr @.str.139, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/scsi_devinfo.c", i32 136, i32 14}
!309 = !{ptr @.str.140, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/scsi_devinfo.c", i32 137, i32 3}
!311 = !{ptr @.str.141, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/scsi_devinfo.c", i32 137, i32 10}
!313 = !{ptr @.str.142, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/scsi_devinfo.c", i32 138, i32 3}
!315 = !{ptr @.str.143, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/scsi_devinfo.c", i32 138, i32 14}
!317 = !{ptr @.str.144, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/scsi_devinfo.c", i32 138, i32 24}
!319 = !{ptr @.str.145, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/scsi_devinfo.c", i32 139, i32 3}
!321 = !{ptr @.str.146, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/scsi_devinfo.c", i32 139, i32 13}
!323 = !{ptr @.str.147, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/scsi_devinfo.c", i32 139, i32 28}
!325 = !{ptr @.str.148, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/scsi_devinfo.c", i32 140, i32 3}
!327 = !{ptr @.str.149, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/scsi_devinfo.c", i32 140, i32 14}
!329 = !{ptr @.str.150, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/scsi_devinfo.c", i32 141, i32 14}
!331 = !{ptr @.str.151, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/scsi_devinfo.c", i32 142, i32 3}
!333 = !{ptr @.str.152, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/scsi_devinfo.c", i32 142, i32 12}
!335 = !{ptr @.str.153, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/scsi_devinfo.c", i32 143, i32 3}
!337 = !{ptr @.str.154, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/scsi_devinfo.c", i32 143, i32 12}
!339 = !{ptr @.str.155, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/scsi_devinfo.c", i32 143, i32 31}
!341 = !{ptr @.str.156, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/scsi_devinfo.c", i32 144, i32 3}
!343 = !{ptr @.str.157, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/scsi_devinfo.c", i32 144, i32 10}
!345 = !{ptr @.str.158, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/scsi_devinfo.c", i32 145, i32 3}
!347 = !{ptr @.str.159, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/scsi_devinfo.c", i32 145, i32 11}
!349 = !{ptr @.str.160, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/scsi_devinfo.c", i32 146, i32 3}
!351 = !{ptr @.str.161, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/scsi_devinfo.c", i32 146, i32 11}
!353 = !{ptr @.str.162, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/scsi_devinfo.c", i32 147, i32 3}
!355 = !{ptr @.str.163, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/scsi_devinfo.c", i32 147, i32 13}
!357 = !{ptr @.str.164, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/scsi_devinfo.c", i32 149, i32 13}
!359 = !{ptr @.str.165, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/scsi_devinfo.c", i32 150, i32 13}
!361 = !{ptr @.str.166, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/scsi_devinfo.c", i32 151, i32 13}
!363 = !{ptr @.str.167, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/scsi_devinfo.c", i32 152, i32 13}
!365 = !{ptr @.str.168, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/scsi_devinfo.c", i32 153, i32 13}
!367 = !{ptr @.str.169, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/scsi_devinfo.c", i32 154, i32 3}
!369 = !{ptr @.str.170, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/scsi_devinfo.c", i32 154, i32 10}
!371 = !{ptr @.str.171, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/scsi_devinfo.c", i32 154, i32 30}
!373 = !{ptr @.str.172, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/scsi_devinfo.c", i32 155, i32 3}
!375 = !{ptr @.str.173, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/scsi_devinfo.c", i32 155, i32 10}
!377 = !{ptr @.str.174, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/scsi_devinfo.c", i32 156, i32 3}
!379 = !{ptr @.str.175, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/scsi_devinfo.c", i32 156, i32 11}
!381 = !{ptr @.str.176, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/scsi_devinfo.c", i32 157, i32 11}
!383 = !{ptr @.str.177, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/scsi_devinfo.c", i32 158, i32 11}
!385 = !{ptr @.str.178, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/scsi_devinfo.c", i32 159, i32 11}
!387 = !{ptr @.str.179, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/scsi_devinfo.c", i32 160, i32 11}
!389 = !{ptr @.str.180, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/scsi_devinfo.c", i32 161, i32 3}
!391 = !{ptr @.str.181, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/scsi_devinfo.c", i32 161, i32 10}
!393 = !{ptr @.str.182, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/scsi_devinfo.c", i32 162, i32 10}
!395 = !{ptr @.str.183, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/scsi_devinfo.c", i32 163, i32 3}
!397 = !{ptr @.str.184, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/scsi_devinfo.c", i32 163, i32 11}
!399 = !{ptr @.str.185, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/scsi_devinfo.c", i32 164, i32 10}
!401 = !{ptr @.str.186, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/scsi_devinfo.c", i32 166, i32 3}
!403 = !{ptr @.str.187, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/scsi_devinfo.c", i32 166, i32 13}
!405 = !{ptr @.str.188, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/scsi_devinfo.c", i32 167, i32 3}
!407 = !{ptr @.str.189, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/scsi_devinfo.c", i32 167, i32 15}
!409 = !{ptr @.str.190, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/scsi_devinfo.c", i32 168, i32 15}
!411 = !{ptr @.str.191, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/scsi/scsi_devinfo.c", i32 169, i32 15}
!413 = !{ptr @.str.192, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/scsi_devinfo.c", i32 170, i32 3}
!415 = !{ptr @.str.193, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/scsi_devinfo.c", i32 170, i32 10}
!417 = !{ptr @.str.194, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/scsi_devinfo.c", i32 171, i32 3}
!419 = !{ptr @.str.195, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/scsi_devinfo.c", i32 171, i32 14}
!421 = !{ptr @.str.196, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/scsi_devinfo.c", i32 172, i32 3}
!423 = !{ptr @.str.197, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/scsi_devinfo.c", i32 172, i32 14}
!425 = !{ptr @.str.198, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/scsi_devinfo.c", i32 174, i32 14}
!427 = !{ptr @.str.199, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/scsi_devinfo.c", i32 174, i32 33}
!429 = !{ptr @.str.200, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/scsi_devinfo.c", i32 175, i32 14}
!431 = !{ptr @.str.201, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/scsi/scsi_devinfo.c", i32 176, i32 14}
!433 = !{ptr @.str.202, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/scsi_devinfo.c", i32 177, i32 14}
!435 = !{ptr @.str.203, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/scsi/scsi_devinfo.c", i32 178, i32 14}
!437 = !{ptr @.str.204, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/scsi_devinfo.c", i32 179, i32 14}
!439 = !{ptr @.str.205, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/scsi/scsi_devinfo.c", i32 180, i32 9}
!441 = !{ptr @.str.206, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/scsi_devinfo.c", i32 182, i32 9}
!443 = !{ptr @.str.207, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/scsi_devinfo.c", i32 183, i32 9}
!445 = !{ptr @.str.208, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/scsi_devinfo.c", i32 184, i32 9}
!447 = !{ptr @.str.209, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/scsi_devinfo.c", i32 185, i32 9}
!449 = !{ptr @.str.210, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/scsi_devinfo.c", i32 185, i32 22}
!451 = !{ptr @.str.211, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/scsi_devinfo.c", i32 186, i32 9}
!453 = !{ptr @.str.212, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/scsi_devinfo.c", i32 188, i32 3}
!455 = !{ptr @.str.213, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/scsi/scsi_devinfo.c", i32 189, i32 10}
!457 = !{ptr @.str.214, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/scsi_devinfo.c", i32 190, i32 10}
!459 = !{ptr @.str.215, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/scsi/scsi_devinfo.c", i32 191, i32 10}
!461 = !{ptr @.str.216, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/scsi_devinfo.c", i32 192, i32 3}
!463 = !{ptr @.str.217, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/scsi/scsi_devinfo.c", i32 192, i32 13}
!465 = !{ptr @.str.218, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/scsi_devinfo.c", i32 192, i32 24}
!467 = !{ptr @.str.219, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/scsi_devinfo.c", i32 193, i32 3}
!469 = !{ptr @.str.220, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/scsi_devinfo.c", i32 193, i32 13}
!471 = !{ptr @.str.221, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/scsi/scsi_devinfo.c", i32 194, i32 13}
!473 = !{ptr @.str.222, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/scsi_devinfo.c", i32 195, i32 3}
!475 = !{ptr @.str.223, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/scsi/scsi_devinfo.c", i32 195, i32 13}
!477 = !{ptr @.str.224, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/scsi/scsi_devinfo.c", i32 196, i32 13}
!479 = !{ptr @.str.225, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/scsi/scsi_devinfo.c", i32 197, i32 3}
!481 = !{ptr @.str.226, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/scsi/scsi_devinfo.c", i32 197, i32 12}
!483 = !{ptr @.str.227, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/scsi/scsi_devinfo.c", i32 198, i32 3}
!485 = !{ptr @.str.228, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/scsi/scsi_devinfo.c", i32 198, i32 13}
!487 = !{ptr @.str.229, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/scsi/scsi_devinfo.c", i32 199, i32 3}
!489 = !{ptr @.str.230, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/scsi/scsi_devinfo.c", i32 199, i32 14}
!491 = !{ptr @.str.231, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/scsi_devinfo.c", i32 199, i32 25}
!493 = !{ptr @.str.232, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/scsi/scsi_devinfo.c", i32 200, i32 3}
!495 = !{ptr @.str.233, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/scsi/scsi_devinfo.c", i32 200, i32 14}
!497 = !{ptr @.str.234, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/scsi/scsi_devinfo.c", i32 201, i32 14}
!499 = !{ptr @.str.235, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/scsi/scsi_devinfo.c", i32 201, i32 29}
!501 = !{ptr @.str.236, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/scsi/scsi_devinfo.c", i32 202, i32 3}
!503 = !{ptr @.str.237, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/scsi/scsi_devinfo.c", i32 202, i32 15}
!505 = !{ptr @.str.238, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/scsi/scsi_devinfo.c", i32 203, i32 15}
!507 = !{ptr @.str.239, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/scsi/scsi_devinfo.c", i32 204, i32 15}
!509 = !{ptr @.str.240, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/scsi/scsi_devinfo.c", i32 205, i32 3}
!511 = !{ptr @.str.241, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/scsi/scsi_devinfo.c", i32 205, i32 13}
!513 = !{ptr @.str.242, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/scsi/scsi_devinfo.c", i32 205, i32 33}
!515 = !{ptr @.str.243, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/scsi/scsi_devinfo.c", i32 206, i32 3}
!517 = !{ptr @.str.244, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/scsi/scsi_devinfo.c", i32 206, i32 15}
!519 = !{ptr @.str.245, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/scsi/scsi_devinfo.c", i32 207, i32 3}
!521 = !{ptr @.str.246, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/scsi/scsi_devinfo.c", i32 207, i32 13}
!523 = !{ptr @.str.247, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/scsi/scsi_devinfo.c", i32 208, i32 3}
!525 = !{ptr @.str.248, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/scsi/scsi_devinfo.c", i32 208, i32 11}
!527 = !{ptr @.str.249, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/scsi/scsi_devinfo.c", i32 209, i32 3}
!529 = !{ptr @.str.250, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/scsi/scsi_devinfo.c", i32 209, i32 12}
!531 = !{ptr @.str.251, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/scsi_devinfo.c", i32 210, i32 3}
!533 = !{ptr @.str.252, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/scsi/scsi_devinfo.c", i32 210, i32 14}
!535 = !{ptr @.str.253, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/scsi/scsi_devinfo.c", i32 211, i32 3}
!537 = !{ptr @.str.254, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/scsi/scsi_devinfo.c", i32 211, i32 15}
!539 = !{ptr @.str.255, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/scsi_devinfo.c", i32 212, i32 15}
!541 = !{ptr @.str.256, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/scsi/scsi_devinfo.c", i32 213, i32 10}
!543 = !{ptr @.str.257, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/scsi_devinfo.c", i32 214, i32 10}
!545 = !{ptr @.str.258, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/scsi/scsi_devinfo.c", i32 215, i32 3}
!547 = !{ptr @.str.259, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/scsi_devinfo.c", i32 215, i32 10}
!549 = !{ptr @.str.260, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/scsi/scsi_devinfo.c", i32 216, i32 10}
!551 = !{ptr @.str.261, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/scsi/scsi_devinfo.c", i32 217, i32 3}
!553 = !{ptr @.str.262, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/scsi/scsi_devinfo.c", i32 217, i32 14}
!555 = !{ptr @.str.263, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/scsi/scsi_devinfo.c", i32 218, i32 14}
!557 = !{ptr @.str.264, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/scsi_devinfo.c", i32 219, i32 14}
!559 = !{ptr @.str.265, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/scsi/scsi_devinfo.c", i32 220, i32 14}
!561 = !{ptr @.str.266, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/scsi/scsi_devinfo.c", i32 221, i32 3}
!563 = !{ptr @.str.267, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/scsi/scsi_devinfo.c", i32 221, i32 14}
!565 = !{ptr @.str.268, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/scsi_devinfo.c", i32 223, i32 3}
!567 = !{ptr @.str.269, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/scsi/scsi_devinfo.c", i32 223, i32 11}
!569 = !{ptr @.str.270, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/scsi/scsi_devinfo.c", i32 224, i32 3}
!571 = !{ptr @.str.271, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/scsi/scsi_devinfo.c", i32 224, i32 11}
!573 = !{ptr @.str.272, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/scsi/scsi_devinfo.c", i32 225, i32 3}
!575 = !{ptr @.str.273, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/scsi/scsi_devinfo.c", i32 226, i32 14}
!577 = !{ptr @.str.274, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/scsi_devinfo.c", i32 226, i32 25}
!579 = !{ptr @.str.275, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/scsi/scsi_devinfo.c", i32 227, i32 3}
!581 = !{ptr @.str.276, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/scsi_devinfo.c", i32 227, i32 12}
!583 = !{ptr @.str.277, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/scsi/scsi_devinfo.c", i32 228, i32 3}
!585 = !{ptr @.str.278, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/scsi_devinfo.c", i32 228, i32 14}
!587 = !{ptr @.str.279, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/scsi/scsi_devinfo.c", i32 229, i32 14}
!589 = !{ptr @.str.280, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/scsi/scsi_devinfo.c", i32 229, i32 26}
!591 = !{ptr @.str.281, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/scsi/scsi_devinfo.c", i32 230, i32 14}
!593 = !{ptr @.str.282, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/scsi/scsi_devinfo.c", i32 230, i32 25}
!595 = !{ptr @.str.283, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/scsi/scsi_devinfo.c", i32 231, i32 14}
!597 = !{ptr @.str.284, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/scsi/scsi_devinfo.c", i32 232, i32 3}
!599 = !{ptr @.str.285, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/scsi/scsi_devinfo.c", i32 232, i32 10}
!601 = !{ptr @.str.286, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/scsi_devinfo.c", i32 233, i32 10}
!603 = !{ptr @.str.287, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/scsi/scsi_devinfo.c", i32 234, i32 10}
!605 = !{ptr @.str.288, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/scsi/scsi_devinfo.c", i32 235, i32 10}
!607 = !{ptr @.str.289, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/scsi/scsi_devinfo.c", i32 239, i32 3}
!609 = !{ptr @.str.290, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/scsi/scsi_devinfo.c", i32 240, i32 3}
!611 = !{ptr @.str.291, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/scsi_devinfo.c", i32 241, i32 3}
!613 = !{ptr @.str.292, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/scsi/scsi_devinfo.c", i32 242, i32 3}
!615 = !{ptr @.str.293, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/scsi/scsi_devinfo.c", i32 243, i32 3}
!617 = !{ptr @.str.294, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/scsi/scsi_devinfo.c", i32 245, i32 14}
!619 = !{ptr @.str.295, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/scsi/scsi_devinfo.c", i32 247, i32 3}
!621 = !{ptr @.str.296, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/scsi/scsi_devinfo.c", i32 248, i32 11}
!623 = !{ptr @.str.297, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/scsi/scsi_devinfo.c", i32 249, i32 11}
!625 = !{ptr @.str.298, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/scsi/scsi_devinfo.c", i32 250, i32 3}
!627 = !{ptr @.str.299, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/scsi/scsi_devinfo.c", i32 250, i32 15}
!629 = !{ptr @.str.300, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/scsi/scsi_devinfo.c", i32 251, i32 10}
!631 = !{ptr @.str.301, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/scsi/scsi_devinfo.c", i32 252, i32 10}
!633 = !{ptr @.str.302, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/scsi/scsi_devinfo.c", i32 253, i32 3}
!635 = !{ptr @.str.303, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/scsi/scsi_devinfo.c", i32 253, i32 15}
!637 = !{ptr @.str.304, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/scsi/scsi_devinfo.c", i32 254, i32 3}
!639 = !{ptr @.str.305, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/scsi/scsi_devinfo.c", i32 254, i32 14}
!641 = !{ptr @.str.306, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/scsi/scsi_devinfo.c", i32 256, i32 3}
!643 = !{ptr @.str.307, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/scsi/scsi_devinfo.c", i32 256, i32 15}
!645 = !{ptr @.str.308, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/scsi/scsi_devinfo.c", i32 257, i32 3}
!647 = !{ptr @.str.309, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/scsi/scsi_devinfo.c", i32 257, i32 13}
!649 = !{ptr @.str.310, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/scsi/scsi_devinfo.c", i32 258, i32 3}
!651 = !{ptr @.str.311, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/scsi/scsi_devinfo.c", i32 258, i32 14}
!653 = !{ptr @.str.312, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/scsi/scsi_devinfo.c", i32 258, i32 28}
!655 = !{ptr @.str.313, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/scsi/scsi_devinfo.c", i32 259, i32 14}
!657 = !{ptr @.str.314, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/scsi/scsi_devinfo.c", i32 259, i32 28}
!659 = !{ptr @.str.315, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/scsi/scsi_devinfo.c", i32 260, i32 14}
!661 = !{ptr @.str.316, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/scsi/scsi_devinfo.c", i32 260, i32 28}
!663 = !{ptr @.str.317, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/scsi/scsi_devinfo.c", i32 261, i32 3}
!665 = !{ptr @.str.318, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/scsi/scsi_devinfo.c", i32 261, i32 15}
!667 = !{ptr @.str.319, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/scsi/scsi_devinfo.c", i32 262, i32 3}
!669 = !{ptr @.str.320, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/scsi/scsi_devinfo.c", i32 262, i32 14}
!671 = !{ptr @.str.321, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/scsi/scsi_devinfo.c", i32 263, i32 3}
!673 = !{ptr @.str.322, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/scsi/scsi_devinfo.c", i32 263, i32 12}
!675 = !{ptr @.str.323, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/scsi/scsi_devinfo.c", i32 264, i32 12}
!677 = !{ptr @scsi_static_device_list, !678, !"scsi_static_device_list", i1 false, i1 false}
!678 = !{!"../drivers/scsi/scsi_devinfo.c", i32 55, i32 3}
!679 = !{ptr @scsi_devinfo_proc_ops, !680, !"scsi_devinfo_proc_ops", i1 false, i1 false}
!680 = !{!"../drivers/scsi/scsi_devinfo.c", i32 743, i32 30}
!681 = !{ptr @scsi_devinfo_seq_ops, !682, !"scsi_devinfo_seq_ops", i1 false, i1 false}
!682 = !{!"../drivers/scsi/scsi_devinfo.c", i32 694, i32 36}
!683 = !{ptr @.str.324, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/scsi/scsi_devinfo.c", i32 638, i32 17}
!685 = !{ptr @.str.325, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/scsi/scsi_devinfo.c", i32 640, i32 16}
!687 = distinct !{null, !688, !"__already_done", i1 false, i1 false}
!688 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!689 = !{ptr @.str.326, !688, !"<string literal>", i1 false, i1 false}
!690 = !{ptr @.str.327, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!692 = !{ptr @.str.328, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!694 = !{!"sp"}
!695 = !{i32 1, !"wchar_size", i32 2}
!696 = !{i32 1, !"min_enum_size", i32 4}
!697 = !{i32 8, !"branch-target-enforcement", i32 0}
!698 = !{i32 8, !"sign-return-address", i32 0}
!699 = !{i32 8, !"sign-return-address-all", i32 0}
!700 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!701 = !{i32 7, !"uwtable", i32 1}
!702 = !{i32 7, !"frame-pointer", i32 2}
!703 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!704 = !{!"auto-init"}
!705 = !{i64 2152279417, i64 2152279442}
!706 = !{!"branch_weights", i32 2000, i32 1}
!707 = !{i64 4774972}
!708 = !{i64 4775169}
!709 = !{i64 2152260402}
