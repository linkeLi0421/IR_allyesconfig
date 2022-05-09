; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_dh.c_pt.bc'
source_filename = "../drivers/scsi/scsi_dh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+scsi_register_device_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_register_device_handler\09\09\09\09"
module asm "\09.long\09__crc_scsi_register_device_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_register_device_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_register_device_handler\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_register_device_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_unregister_device_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_unregister_device_handler\09\09\09\09"
module asm "\09.long\09__crc_scsi_unregister_device_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_unregister_device_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_unregister_device_handler\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_unregister_device_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_dh_activate\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dh_activate\09\09\09\09"
module asm "\09.long\09__crc_scsi_dh_activate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dh_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dh_activate\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dh_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_dh_set_params\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dh_set_params\09\09\09\09"
module asm "\09.long\09__crc_scsi_dh_set_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dh_set_params:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dh_set_params\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dh_set_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_dh_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dh_attach\09\09\09\09"
module asm "\09.long\09__crc_scsi_dh_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dh_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dh_attach\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dh_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_dh_attached_handler_name\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_dh_attached_handler_name\09\09\09\09"
module asm "\09.long\09__crc_scsi_dh_attached_handler_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_dh_attached_handler_name:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_dh_attached_handler_name\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_dh_attached_handler_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_dh_blist = type { ptr, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
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
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@scsi_dh_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @scsi_dh_list, ptr @scsi_dh_list }, [24 x i8] zeroinitializer }, align 32
@scsi_register_device_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: device handler registered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scsi_register_device_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/scsi_dh.c\00", [41 x i8] zeroinitializer }, align 32
@scsi_register_device_handler._entry_ptr = internal global ptr @scsi_register_device_handler._entry, section ".printk_index", align 4
@__kstrtab_scsi_register_device_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_register_device_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_register_device_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_register_device_handler to i32), ptr @__kstrtab_scsi_register_device_handler, ptr @__kstrtabns_scsi_register_device_handler }, section "___ksymtab_gpl+scsi_register_device_handler", align 4
@scsi_unregister_device_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: device handler unregistered\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scsi_unregister_device_handler\00", [33 x i8] zeroinitializer }, align 32
@scsi_unregister_device_handler._entry_ptr = internal global ptr @scsi_unregister_device_handler._entry, section ".printk_index", align 4
@__kstrtab_scsi_unregister_device_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_unregister_device_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_unregister_device_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_unregister_device_handler to i32), ptr @__kstrtab_scsi_unregister_device_handler, ptr @__kstrtabns_scsi_unregister_device_handler }, section "___ksymtab_gpl+scsi_unregister_device_handler", align 4
@__kstrtab_scsi_dh_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dh_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dh_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dh_activate to i32), ptr @__kstrtab_scsi_dh_activate, ptr @__kstrtabns_scsi_dh_activate }, section "___ksymtab_gpl+scsi_dh_activate", align 4
@__kstrtab_scsi_dh_set_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dh_set_params = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dh_set_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dh_set_params to i32), ptr @__kstrtab_scsi_dh_set_params, ptr @__kstrtabns_scsi_dh_set_params }, section "___ksymtab_gpl+scsi_dh_set_params", align 4
@__kstrtab_scsi_dh_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dh_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dh_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dh_attach to i32), ptr @__kstrtab_scsi_dh_attach, ptr @__kstrtabns_scsi_dh_attach }, section "___ksymtab_gpl+scsi_dh_attach", align 4
@__kstrtab_scsi_dh_attached_handler_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_dh_attached_handler_name = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_dh_attached_handler_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_dh_attached_handler_name to i32), ptr @__kstrtab_scsi_dh_attached_handler_name, ptr @__kstrtabns_scsi_dh_attached_handler_name }, section "___ksymtab_gpl+scsi_dh_attached_handler_name", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alua\00", [27 x i8] zeroinitializer }, align 32
@scsi_dh_blist = internal constant { [40 x %struct.scsi_dh_blist], [96 x i8] } { [40 x %struct.scsi_dh_blist] [%struct.scsi_dh_blist { ptr @.str.6, ptr @.str.7, ptr @.str.8 }, %struct.scsi_dh_blist { ptr @.str.6, ptr @.str.9, ptr @.str.8 }, %struct.scsi_dh_blist { ptr @.str.6, ptr @.str.10, ptr @.str.8 }, %struct.scsi_dh_blist { ptr @.str.11, ptr @.str.12, ptr @.str.13 }, %struct.scsi_dh_blist { ptr @.str.11, ptr @.str.14, ptr @.str.13 }, %struct.scsi_dh_blist { ptr @.str.15, ptr @.str.16, ptr @.str.13 }, %struct.scsi_dh_blist { ptr @.str.17, ptr @.str.18, ptr @.str.13 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.20, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.22, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.23, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.24, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.25, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.26, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.27, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.28, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.29, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.30, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.31, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.32, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.19, ptr @.str.33, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.34, ptr @.str.35, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.34, ptr @.str.36, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.34, ptr @.str.37, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.34, ptr @.str.38, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.34, ptr @.str.39, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.40, ptr @.str.41, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.40, ptr @.str.42, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.40, ptr @.str.43, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.44, ptr @.str.45, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.44, ptr @.str.46, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.44, ptr @.str.47, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.44, ptr @.str.48, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.44, ptr @.str.49, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.50, ptr @.str.51, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.52, ptr @.str.53, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.54, ptr @.str.53, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.55, ptr @.str.53, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.56, ptr @.str.57, ptr @.str.21 }, %struct.scsi_dh_blist { ptr @.str.58, ptr @.str.59, ptr @.str.21 }, %struct.scsi_dh_blist zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DGC\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAID\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISK\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VRAID\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMPAQ\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSA1000 VOLUME\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hp_sw\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HSV110\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HSV100\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DEC\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HSG80\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1722\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdac\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1724\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1726\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1742\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1745\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1746\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1813\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1814\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1815\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1818\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3526\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3542\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3552\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SGI\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TP9300\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TP9400\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TP9500\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TP9700\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IS\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STK\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OPENstorage\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FLEXLINE 380\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BladeCtlr\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SUN\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CSM\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LCSM100\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STK6580_6780\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SUN_6180\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ArrayStorage\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DELL\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MD3\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NETAPP\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"INF-01-00\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSI\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENGENIO\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LENOVO\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DE_Series\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FUJITSU\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETERNUS_AHB\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Attach failed (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: Detached\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scsi_dh_%s\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 13, i64 15, i64 16]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 6]
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"scsi_dh_list\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 17, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 211, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 232, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 76, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"scsi_dh_blist\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 25, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 26, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 26, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 26, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 27, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 28, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 30, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 30, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 30, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 31, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 32, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 32, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 33, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 33, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 35, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 35, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 35, i32 20 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 36, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 37, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 38, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 39, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 40, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 41, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 42, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 43, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 44, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 45, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 46, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 47, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 48, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 48, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 49, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 50, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 51, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 52, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 53, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 53, i32 10 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 54, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 55, i32 10 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 56, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 56, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 57, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 58, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 59, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 60, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 61, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 61, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 62, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 62, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 63, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 64, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 65, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 65, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 66, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 66, i32 14 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 150, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 166, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 16, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [26 x i8] c"../drivers/scsi/scsi_dh.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 112, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__ksymtab_scsi_dh_activate, ptr @__ksymtab_scsi_dh_attach, ptr @__ksymtab_scsi_dh_attached_handler_name, ptr @__ksymtab_scsi_dh_set_params, ptr @__ksymtab_scsi_register_device_handler, ptr @__ksymtab_scsi_unregister_device_handler, ptr @scsi_register_device_handler._entry, ptr @scsi_register_device_handler._entry_ptr, ptr @scsi_unregister_device_handler._entry, ptr @scsi_unregister_device_handler._entry_ptr, ptr @list_lock, ptr @scsi_dh_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @scsi_dh_blist, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dh_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_register_device_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_unregister_device_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_dh_blist to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_dh_add_device(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inquiry.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 29
  %0 = ptrtoint ptr %inquiry.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inquiry.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.for.cond.preheader.i_crit_edge, label %cond.true.i.i

entry.for.cond.preheader.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader.i

cond.true.i.i:                                    ; preds = %entry
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %4 = and i8 %3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %phi.cmp.i = icmp eq i8 %4, 0
  br i1 %phi.cmp.i, label %cond.true.i.i.for.cond.preheader.i_crit_edge, label %cond.true.i.i.if.then_crit_edge

cond.true.i.i.if.then_crit_edge:                  ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.true.i.i.for.cond.preheader.i_crit_edge:     ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %cond.true.i.i.for.cond.preheader.i_crit_edge, %entry.for.cond.preheader.i_crit_edge
  %vendor2.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 30
  %5 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vendor2.i, align 4
  %model.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 31
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %7 = phi ptr [ @.str.6, %for.cond.preheader.i ], [ %13, %for.inc.i.for.body.i_crit_edge ]
  %b.024.i = phi ptr [ @scsi_dh_blist, %for.cond.preheader.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %7) #7
  %call6.i = tail call i32 @strncmp(ptr noundef %6, ptr noundef nonnull %7, i32 noundef %call5.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %8 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %model.i, align 8
  %model8.i = getelementptr inbounds %struct.scsi_dh_blist, ptr %b.024.i, i32 0, i32 1
  %10 = ptrtoint ptr %model8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model8.i, align 4
  %call10.i = tail call i32 @strlen(ptr noundef %11) #7
  %call11.i = tail call i32 @strncmp(ptr noundef %9, ptr noundef %11, i32 noundef %call10.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %scsi_dh_find_driver.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.scsi_dh_blist, ptr %b.024.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

scsi_dh_find_driver.exit:                         ; preds = %land.lhs.true.i
  %driver.i = getelementptr inbounds %struct.scsi_dh_blist, ptr %b.024.i, i32 0, i32 2
  %14 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %scsi_dh_find_driver.exit.if.end5_crit_edge, label %scsi_dh_find_driver.exit.if.then_crit_edge

scsi_dh_find_driver.exit.if.then_crit_edge:       ; preds = %scsi_dh_find_driver.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

scsi_dh_find_driver.exit.if.end5_crit_edge:       ; preds = %scsi_dh_find_driver.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %scsi_dh_find_driver.exit.if.then_crit_edge, %cond.true.i.i.if.then_crit_edge
  %retval.0.i15 = phi ptr [ %15, %scsi_dh_find_driver.exit.if.then_crit_edge ], [ @.str.5, %cond.true.i.i.if.then_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i9.for.cond.i_crit_edge, %if.then
  %tmp.0.in.i = phi ptr [ @scsi_dh_list, %if.then ], [ %tmp.0.i, %for.body.i9.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @scsi_dh_list
  br i1 %cmp.not.i, label %if.end.thread18, label %for.body.i9

if.end.thread18:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  br label %if.end5

for.body.i9:                                      ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.scsi_device_handler, ptr %tmp.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name2.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %18) #7
  %call4.i = tail call i32 @strncmp(ptr noundef %18, ptr noundef %retval.0.i15, i32 noundef %call.i) #4
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end, label %for.body.i9.for.cond.i_crit_edge

for.body.i9.for.cond.i_crit_edge:                 ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %tobool2.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call fastcc i32 @scsi_dh_handler_attach(ptr noundef %sdev, ptr noundef nonnull %tmp.0.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %if.end.thread18, %scsi_dh_find_driver.exit.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_dh_handler_attach(ptr noundef %sdev, ptr noundef %scsi_dh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %module = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 1
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %1) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %attach = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 4
  %2 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach, align 4
  %call1 = tail call i32 %3(ptr noundef %sdev) #4
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %sw.default [
    i32 0, label %if.else
    i32 15, label %if.end.if.then6_crit_edge
    i32 13, label %sw.bb3
    i32 3, label %if.end.if.end7_crit_edge
    i32 16, label %if.end.if.end7_crit_edge24
  ]

if.end.if.end7_crit_edge24:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %sw.default, %sw.bb3, %if.end.if.then6_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end.if.then6_crit_edge ], [ -11, %sw.bb3 ], [ -22, %sw.default ]
  %name = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.60, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef %6, i32 noundef %call1) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge24
  %ret.023 = phi i32 [ %ret.0.ph, %if.then6 ], [ -19, %if.end.if.end7_crit_edge ], [ -19, %if.end.if.end7_crit_edge24 ]
  %7 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %8) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %handler = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 59
  %9 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %scsi_dh, ptr %handler, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.023, %if.end7 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_dh_release_device(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 59
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %detach.i = getelementptr inbounds %struct.scsi_device_handler, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %detach.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %detach.i, align 4
  tail call void %3(ptr noundef %sdev) #4
  %4 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handler, align 8
  %name.i = getelementptr inbounds %struct.scsi_device_handler, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.62, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef %7) #4
  %8 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler, align 8
  %module.i = getelementptr inbounds %struct.scsi_device_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %11) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_register_device_handler(ptr noundef %scsi_dh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tmp.0.in.i = phi ptr [ @scsi_dh_list, %entry ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @scsi_dh_list
  br i1 %cmp.not.i, label %__scsi_dh_lookup.exit.thread, label %for.body.i

__scsi_dh_lookup.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.scsi_device_handler, ptr %tmp.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %4) #7
  %call4.i = tail call i32 @strncmp(ptr noundef %4, ptr noundef %1, i32 noundef %call.i) #4
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %__scsi_dh_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

__scsi_dh_lookup.exit:                            ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %__scsi_dh_lookup.exit.if.end_crit_edge, label %__scsi_dh_lookup.exit.return_crit_edge

__scsi_dh_lookup.exit.return_crit_edge:           ; preds = %__scsi_dh_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

__scsi_dh_lookup.exit.if.end_crit_edge:           ; preds = %__scsi_dh_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %__scsi_dh_lookup.exit.if.end_crit_edge, %__scsi_dh_lookup.exit.thread
  %attach = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 4
  %5 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attach, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %detach = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 5
  %7 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %detach, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %if.end4

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  %9 = load ptr, ptr @scsi_dh_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %scsi_dh, ptr noundef nonnull @scsi_dh_list, ptr noundef %9) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add.exit_crit_edge

if.end4.list_add.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %scsi_dh, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %scsi_dh to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %scsi_dh, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %scsi_dh, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @scsi_dh_list, ptr %prev3.i.i, align 4
  store volatile ptr %scsi_dh, ptr @scsi_dh_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end4.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14) #8
  br label %return

return:                                           ; preds = %list_add.exit, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %__scsi_dh_lookup.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -16, %__scsi_dh_lookup.exit.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_unregister_device_handler(ptr noundef %scsi_dh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.scsi_device_handler, ptr %scsi_dh, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tmp.0.in.i = phi ptr [ @scsi_dh_list, %entry ], [ %tmp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %tmp.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, @scsi_dh_list
  br i1 %cmp.not.i, label %__scsi_dh_lookup.exit.thread, label %for.body.i

__scsi_dh_lookup.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  br label %return

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.scsi_device_handler, ptr %tmp.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %4) #7
  %call4.i = tail call i32 @strncmp(ptr noundef %4, ptr noundef %1, i32 noundef %call.i) #4
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %__scsi_dh_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

__scsi_dh_lookup.exit:                            ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %tobool.not = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not, label %__scsi_dh_lookup.exit.return_crit_edge, label %if.end

__scsi_dh_lookup.exit.return_crit_edge:           ; preds = %__scsi_dh_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %__scsi_dh_lookup.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %scsi_dh) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %scsi_dh, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %scsi_dh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scsi_dh, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %scsi_dh to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %scsi_dh, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %scsi_dh, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %14) #8
  br label %return

return:                                           ; preds = %list_del.exit, %__scsi_dh_lookup.exit.return_crit_edge, %__scsi_dh_lookup.exit.thread
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -19, %__scsi_dh_lookup.exit.return_crit_edge ], [ -19, %__scsi_dh_lookup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dh_activate(ptr noundef %q, ptr noundef %fn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_device_from_queue(ptr noundef %q) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %fn, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %fn(ptr noundef %data, i32 noundef 16) #4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %handler = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 59
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end3.out_fn_crit_edge, label %if.end6

if.end3.out_fn_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fn

if.end6:                                          ; preds = %if.end3
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 69
  %2 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdev_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %3, label %if.end14 [
    i32 3, label %if.end6.out_fn_crit_edge
    i32 4, label %if.end6.out_fn_crit_edge45
    i32 6, label %out_fn.fold.split
  ]

if.end6.out_fn_crit_edge45:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fn

if.end6.out_fn_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fn

if.end14:                                         ; preds = %if.end6
  %activate = getelementptr inbounds %struct.scsi_device_handler, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %activate, align 4
  %tobool16.not = icmp eq ptr %6, null
  br i1 %tobool16.not, label %if.end14.out_put_device_crit_edge, label %if.then17

if.end14.out_put_device_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_device

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 %6(ptr noundef nonnull %call, ptr noundef %fn, ptr noundef %data) #4
  br label %out_put_device

out_put_device:                                   ; preds = %if.then23, %out_fn.out_put_device_crit_edge, %if.then17, %if.end14.out_put_device_crit_edge
  %err.0 = phi i32 [ %err.1, %if.then23 ], [ %err.1, %out_fn.out_put_device_crit_edge ], [ %call20, %if.then17 ], [ 14, %if.end14.out_put_device_crit_edge ]
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev) #4
  br label %cleanup

out_fn.fold.split:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_fn

out_fn:                                           ; preds = %out_fn.fold.split, %if.end6.out_fn_crit_edge, %if.end6.out_fn_crit_edge45, %if.end3.out_fn_crit_edge
  %err.1 = phi i32 [ 5, %if.end6.out_fn_crit_edge ], [ 16, %if.end3.out_fn_crit_edge ], [ 5, %if.end6.out_fn_crit_edge45 ], [ 14, %out_fn.fold.split ]
  %tobool22.not = icmp eq ptr %fn, null
  br i1 %tobool22.not, label %out_fn.out_put_device_crit_edge, label %if.then23

out_fn.out_put_device_crit_edge:                  ; preds = %out_fn
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_device

if.then23:                                        ; preds = %out_fn
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %fn(ptr noundef %data, i32 noundef %err.1) #4
  br label %out_put_device

cleanup:                                          ; preds = %out_put_device, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_put_device ], [ 16, %if.then2 ], [ 16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_from_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dh_set_params(ptr noundef %q, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_device_from_queue(ptr noundef %q) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %handler = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 59
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %set_params = getelementptr inbounds %struct.scsi_device_handler, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_params, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 %3(ptr noundef nonnull %call, ptr noundef %params) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %err.0 = phi i32 [ %call7, %if.then4 ], [ -16, %land.lhs.true.if.end8_crit_edge ], [ -16, %if.end.if.end8_crit_edge ]
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_dh_attach(ptr noundef %q, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_device_from_queue(ptr noundef %q) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %if.end.out_put_device_crit_edge, label %lor.lhs.false.i

if.end.out_put_device_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_device

lor.lhs.false.i:                                  ; preds = %if.end
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %char0.i = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %cmp.i = icmp eq i8 %char0.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.out_put_device_crit_edge, label %if.end.i

lor.lhs.false.i.out_put_device_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_device

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %tmp.0.in.i.i = phi ptr [ @scsi_dh_list, %if.end.i ], [ %tmp.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %1 = ptrtoint ptr %tmp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0.i.i = load ptr, ptr %tmp.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %tmp.0.i.i, @scsi_dh_list
  br i1 %cmp.not.i.i, label %__scsi_dh_lookup.exit.thread.i, label %for.body.i.i

__scsi_dh_lookup.exit.thread.i:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  br label %if.then3.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %name2.i.i = getelementptr inbounds %struct.scsi_device_handler, ptr %tmp.0.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name2.i.i, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %3) #7
  %call4.i.i = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull %name, i32 noundef %call.i.i) #4
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %__scsi_dh_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

__scsi_dh_lookup.exit.i:                          ; preds = %for.body.i.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %tobool2.not.i = icmp eq ptr %tmp.0.i.i, null
  br i1 %tobool2.not.i, label %__scsi_dh_lookup.exit.i.if.then3.i_crit_edge, label %__scsi_dh_lookup.exit.i.if.end4_crit_edge

__scsi_dh_lookup.exit.i.if.end4_crit_edge:        ; preds = %__scsi_dh_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

__scsi_dh_lookup.exit.i.if.then3.i_crit_edge:     ; preds = %__scsi_dh_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.i:                                       ; preds = %__scsi_dh_lookup.exit.i.if.then3.i_crit_edge, %__scsi_dh_lookup.exit.thread.i
  %call4.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.65, ptr noundef nonnull %name) #4
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #4
  br label %for.cond.i15.i

for.cond.i15.i:                                   ; preds = %for.body.i20.i.for.cond.i15.i_crit_edge, %if.then3.i
  %tmp.0.in.i12.i = phi ptr [ @scsi_dh_list, %if.then3.i ], [ %tmp.0.i13.i, %for.body.i20.i.for.cond.i15.i_crit_edge ]
  %4 = ptrtoint ptr %tmp.0.in.i12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i13.i = load ptr, ptr %tmp.0.in.i12.i, align 4
  %cmp.not.i14.i = icmp eq ptr %tmp.0.i13.i, @scsi_dh_list
  br i1 %cmp.not.i14.i, label %scsi_dh_lookup.exit.thread26, label %for.body.i20.i

scsi_dh_lookup.exit.thread26:                     ; preds = %for.cond.i15.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  br label %out_put_device

for.body.i20.i:                                   ; preds = %for.cond.i15.i
  %name2.i16.i = getelementptr inbounds %struct.scsi_device_handler, ptr %tmp.0.i13.i, i32 0, i32 2
  %5 = ptrtoint ptr %name2.i16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name2.i16.i, align 4
  %call.i17.i = tail call i32 @strlen(ptr noundef %6) #7
  %call4.i18.i = tail call i32 @strncmp(ptr noundef %6, ptr noundef nonnull %name, i32 noundef %call.i17.i) #4
  %tobool.not.i19.i = icmp eq i32 %call4.i18.i, 0
  br i1 %tobool.not.i19.i, label %scsi_dh_lookup.exit, label %for.body.i20.i.for.cond.i15.i_crit_edge

for.body.i20.i.for.cond.i15.i_crit_edge:          ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i15.i

scsi_dh_lookup.exit:                              ; preds = %for.body.i20.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #4
  %tobool2.not = icmp eq ptr %tmp.0.i13.i, null
  br i1 %tobool2.not, label %scsi_dh_lookup.exit.out_put_device_crit_edge, label %scsi_dh_lookup.exit.if.end4_crit_edge

scsi_dh_lookup.exit.if.end4_crit_edge:            ; preds = %scsi_dh_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

scsi_dh_lookup.exit.out_put_device_crit_edge:     ; preds = %scsi_dh_lookup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_device

if.end4:                                          ; preds = %scsi_dh_lookup.exit.if.end4_crit_edge, %__scsi_dh_lookup.exit.i.if.end4_crit_edge
  %retval.0.i25 = phi ptr [ %tmp.0.i13.i, %scsi_dh_lookup.exit.if.end4_crit_edge ], [ %tmp.0.i.i, %__scsi_dh_lookup.exit.i.if.end4_crit_edge ]
  %handler = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 59
  %7 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %cmp.not = icmp eq ptr %8, %retval.0.i25
  %spec.select = select i1 %cmp.not, i32 0, i32 -16
  br label %out_put_device

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call fastcc i32 @scsi_dh_handler_attach(ptr noundef nonnull %call, ptr noundef nonnull %retval.0.i25)
  br label %out_put_device

out_put_device:                                   ; preds = %if.end10, %if.then6, %scsi_dh_lookup.exit.out_put_device_crit_edge, %scsi_dh_lookup.exit.thread26, %lor.lhs.false.i.out_put_device_crit_edge, %if.end.out_put_device_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10 ], [ -22, %scsi_dh_lookup.exit.out_put_device_crit_edge ], [ %spec.select, %if.then6 ], [ -22, %scsi_dh_lookup.exit.thread26 ], [ -22, %lor.lhs.false.i.out_put_device_crit_edge ], [ -22, %if.end.out_put_device_crit_edge ]
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev) #4
  br label %cleanup

cleanup:                                          ; preds = %out_put_device, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_put_device ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @scsi_dh_attached_handler_name(ptr noundef %q, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_device_from_queue(ptr noundef %q) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %handler = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 59
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.scsi_device_handler, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call4 = tail call noalias ptr @kstrdup(ptr noundef %3, i32 noundef %gfp) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %handler_name.0 = phi ptr [ %call4, %if.then2 ], [ null, %if.end.if.end5_crit_edge ]
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call, i32 0, i32 55
  tail call void @put_device(ptr noundef %sdev_gendev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %handler_name.0, %if.end5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !140, !141, !143, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_dh.c", i32 211, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @scsi_register_device_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @scsi_register_device_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_scsi_register_device_handler, !7, !"__ksymtab_scsi_register_device_handler", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_dh.c", i32 215, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_dh.c", i32 232, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @scsi_unregister_device_handler._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @scsi_unregister_device_handler._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_scsi_unregister_device_handler, !14, !"__ksymtab_scsi_unregister_device_handler", i1 false, i1 false}
!14 = !{!"../drivers/scsi/scsi_dh.c", i32 236, i32 1}
!15 = !{ptr @__ksymtab_scsi_dh_activate, !16, !"__ksymtab_scsi_dh_activate", i1 false, i1 false}
!16 = !{!"../drivers/scsi/scsi_dh.c", i32 286, i32 1}
!17 = !{ptr @__ksymtab_scsi_dh_set_params, !18, !"__ksymtab_scsi_dh_set_params", i1 false, i1 false}
!18 = !{!"../drivers/scsi/scsi_dh.c", i32 312, i32 1}
!19 = !{ptr @__ksymtab_scsi_dh_attach, !20, !"__ksymtab_scsi_dh_attach", i1 false, i1 false}
!20 = !{!"../drivers/scsi/scsi_dh.c", i32 348, i32 1}
!21 = !{ptr @__ksymtab_scsi_dh_attached_handler_name, !22, !"__ksymtab_scsi_dh_attached_handler_name", i1 false, i1 false}
!22 = !{!"../drivers/scsi/scsi_dh.c", i32 373, i32 1}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_dh.c", i32 76, i32 10}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/scsi_dh.c", i32 26, i32 3}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/scsi_dh.c", i32 26, i32 10}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/scsi_dh.c", i32 26, i32 20}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/scsi_dh.c", i32 27, i32 10}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/scsi_dh.c", i32 28, i32 10}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/scsi_dh.c", i32 30, i32 3}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/scsi_dh.c", i32 30, i32 13}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/scsi_dh.c", i32 30, i32 31}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/scsi_dh.c", i32 31, i32 13}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/scsi_dh.c", i32 32, i32 3}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/scsi_dh.c", i32 32, i32 9}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/scsi_dh.c", i32 33, i32 3}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/scsi_dh.c", i32 33, i32 10}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/scsi_dh.c", i32 35, i32 3}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/scsi_dh.c", i32 35, i32 10}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/scsi_dh.c", i32 35, i32 20}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/scsi_dh.c", i32 36, i32 10}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/scsi_dh.c", i32 37, i32 10}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/scsi_dh.c", i32 38, i32 10}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_dh.c", i32 39, i32 10}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/scsi_dh.c", i32 40, i32 10}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/scsi_dh.c", i32 41, i32 10}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/scsi_dh.c", i32 42, i32 10}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/scsi_dh.c", i32 43, i32 10}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/scsi_dh.c", i32 44, i32 10}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/scsi_dh.c", i32 45, i32 10}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/scsi_dh.c", i32 46, i32 10}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/scsi_dh.c", i32 47, i32 10}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/scsi_dh.c", i32 48, i32 3}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/scsi_dh.c", i32 48, i32 10}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/scsi_dh.c", i32 49, i32 10}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/scsi_dh.c", i32 50, i32 10}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/scsi_dh.c", i32 51, i32 10}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/scsi_dh.c", i32 52, i32 10}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/scsi_dh.c", i32 53, i32 3}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/scsi_dh.c", i32 53, i32 10}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/scsi_dh.c", i32 54, i32 10}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/scsi_dh.c", i32 55, i32 10}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/scsi_dh.c", i32 56, i32 3}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/scsi_dh.c", i32 56, i32 10}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/scsi_dh.c", i32 57, i32 10}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/scsi_dh.c", i32 58, i32 10}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/scsi_dh.c", i32 59, i32 10}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/scsi_dh.c", i32 60, i32 10}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/scsi_dh.c", i32 61, i32 3}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/scsi_dh.c", i32 61, i32 11}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/scsi_dh.c", i32 62, i32 3}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/scsi_dh.c", i32 62, i32 13}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/scsi_dh.c", i32 63, i32 3}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/scsi_dh.c", i32 64, i32 3}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/scsi_dh.c", i32 65, i32 3}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/scsi_dh.c", i32 65, i32 13}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/scsi_dh.c", i32 66, i32 3}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/scsi_dh.c", i32 66, i32 14}
!133 = !{ptr @scsi_dh_blist, !134, !"scsi_dh_blist", i1 false, i1 false}
!134 = !{!"../drivers/scsi/scsi_dh.c", i32 25, i32 35}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/scsi_dh.c", i32 150, i32 4}
!137 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/scsi_dh.c", i32 166, i32 2}
!140 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/scsi_dh.c", i32 16, i32 8}
!143 = !{ptr @list_lock, !142, !"list_lock", i1 false, i1 false}
!144 = !{ptr @scsi_dh_list, !145, !"scsi_dh_list", i1 false, i1 false}
!145 = !{!"../drivers/scsi/scsi_dh.c", i32 17, i32 8}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/scsi_dh.c", i32 112, i32 3}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
