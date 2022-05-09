; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_logging.c_pt.bc'
source_filename = "../drivers/scsi/scsi_logging.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sdev_prefix_printk\22, \22a\22\09"
module asm "\09.weak\09__crc_sdev_prefix_printk\09\09\09\09"
module asm "\09.long\09__crc_sdev_prefix_printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdev_prefix_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22sdev_prefix_printk\22\09\09\09\09\09"
module asm "__kstrtabns_sdev_prefix_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scmd_printk\22, \22a\22\09"
module asm "\09.weak\09__crc_scmd_printk\09\09\09\09"
module asm "\09.long\09__crc_scmd_printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scmd_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22scmd_printk\22\09\09\09\09\09"
module asm "__kstrtabns_scmd_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scsi_format_command\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_format_command\09\09\09\09"
module asm "\09.long\09__crc___scsi_format_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_format_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_format_command\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_format_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_print_command\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_print_command\09\09\09\09"
module asm "\09.long\09__crc_scsi_print_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_command:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_command\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_print_sense_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_print_sense_hdr\09\09\09\09"
module asm "\09.long\09__crc_scsi_print_sense_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_sense_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_sense_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_sense_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scsi_print_sense\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_print_sense\09\09\09\09"
module asm "\09.long\09__crc___scsi_print_sense\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_print_sense\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_print_sense\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_print_sense\09\09\09\09"
module asm "\09.long\09__crc_scsi_print_sense\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_print_result\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_print_result\09\09\09\09"
module asm "\09.long\09__crc_scsi_print_result\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_print_result:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_print_result\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_print_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_varlen_cdb_hdr = type { i8, i8, [5 x i8], i8, i16 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/scsi_logging.c\00", [36 x i8] zeroinitializer }, align 32
@sdev_prefix_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 78, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdev_prefix_printk\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdev_prefix_printk._entry_ptr = internal global ptr @sdev_prefix_printk._entry, section ".printk_index", align 4
@__kstrtab_sdev_prefix_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdev_prefix_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_sdev_prefix_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdev_prefix_printk to i32), ptr @__kstrtab_sdev_prefix_printk, ptr @__kstrtabns_sdev_prefix_printk }, section "___ksymtab+sdev_prefix_printk", align 4
@scmd_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.5, ptr @.str.1, i32 103, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmd_printk\00", [20 x i8] zeroinitializer }, align 32
@scmd_printk._entry_ptr = internal global ptr @scmd_printk._entry, section ".printk_index", align 4
@__kstrtab_scmd_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_scmd_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_scmd_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scmd_printk to i32), ptr @__kstrtab_scmd_printk, ptr @__kstrtabns_scmd_printk }, section "___ksymtab+scmd_printk", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab___scsi_format_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_format_command = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_format_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_format_command to i32), ptr @__kstrtab___scsi_format_command, ptr @__kstrtabns___scsi_format_command }, section "___ksymtab+__scsi_format_command", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CDB: \00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@scsi_print_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str.1, i32 210, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi_print_command\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scsi_print_command._entry_ptr = internal global ptr @scsi_print_command._entry, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CDB[%02x]: \00", [20 x i8] zeroinitializer }, align 32
@scsi_print_command._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str.1, i32 225, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@scsi_print_command._entry_ptr.13 = internal global ptr @scsi_print_command._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@scsi_print_command._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str.1, i32 236, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@scsi_print_command._entry_ptr.16 = internal global ptr @scsi_print_command._entry.15, section ".printk_index", align 4
@__kstrtab_scsi_print_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_command = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_command to i32), ptr @__kstrtab_scsi_print_command, ptr @__kstrtabns_scsi_print_command }, section "___ksymtab+scsi_print_command", align 4
@__kstrtab_scsi_print_sense_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_sense_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_sense_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_sense_hdr to i32), ptr @__kstrtab_scsi_print_sense_hdr, ptr @__kstrtabns_scsi_print_sense_hdr }, section "___ksymtab+scsi_print_sense_hdr", align 4
@__kstrtab___scsi_print_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_print_sense = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_print_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_print_sense to i32), ptr @__kstrtab___scsi_print_sense, ptr @__kstrtabns___scsi_print_sense }, section "___ksymtab+__scsi_print_sense", align 4
@__kstrtab_scsi_print_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_sense to i32), ptr @__kstrtab_scsi_print_sense, ptr @__kstrtabns_scsi_print_sense }, section "___ksymtab+scsi_print_sense", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UNKNOWN(0x%02x) \00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Result: \00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hostbyte=%s \00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hostbyte=0x%02x \00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driverbyte=DRIVER_OK \00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmd_age=%lus\00", [19 x i8] zeroinitializer }, align 32
@scsi_print_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.25, ptr @.str.1, i32 439, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_print_result\00", [46 x i8] zeroinitializer }, align 32
@scsi_print_result._entry_ptr = internal global ptr @scsi_print_result._entry, section ".printk_index", align 4
@__kstrtab_scsi_print_result = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_print_result = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_print_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_print_result to i32), ptr @__kstrtab_scsi_print_result, ptr @__kstrtabns_scsi_print_result }, section "___ksymtab+scsi_print_result", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tag#%d \00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"short variable length command, len=%d\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"opcode=0x%x\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (vendor)\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (reserved)\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s, sa=0x%x\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"opcode=0x%x, sa=0x%x\00", [43 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@scsi_log_print_sense_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.33, ptr @.str.1, i32 332, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scsi_log_print_sense_hdr\00", [39 x i8] zeroinitializer }, align 32
@scsi_log_print_sense_hdr._entry_ptr = internal global ptr @scsi_log_print_sense_hdr._entry, section ".printk_index", align 4
@scsi_log_print_sense_hdr._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.33, ptr @.str.1, i32 341, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@scsi_log_print_sense_hdr._entry_ptr.35 = internal global ptr @scsi_log_print_sense_hdr._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sense Key : \00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x \00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[deferred] \00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[current] \00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[descriptor] \00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Add. Sense: %s\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%s%x)\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"<<vendor>>\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASC=0x%x \00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ASCQ=0x%x \00", [21 x i8] zeroinitializer }, align 32
@scsi_log_dump_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.46, ptr @.str.1, i32 315, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scsi_log_dump_sense\00", [44 x i8] zeroinitializer }, align 32
@scsi_log_dump_sense._entry_ptr = internal global ptr @scsi_log_dump_sense._entry, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 72, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 73, i32 7 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 78, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 103, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 174, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 197, i32 51 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 209, i32 52 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 210, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 219, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 224, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 230, i32 52 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 236, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 406, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 412, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 415, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 419, i32 51 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 425, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 428, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 433, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 436, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 439, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 52, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 121, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 133, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 138, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 141, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 147, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 151, i32 6 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 332, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 341, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 278, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 285, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 287, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 287, i32 51 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 290, i32 49 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 252, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 256, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 259, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 261, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 266, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [31 x i8] c"../drivers/scsi/scsi_logging.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 315, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab___scsi_format_command, ptr @__ksymtab___scsi_print_sense, ptr @__ksymtab_scmd_printk, ptr @__ksymtab_scsi_print_command, ptr @__ksymtab_scsi_print_result, ptr @__ksymtab_scsi_print_sense, ptr @__ksymtab_scsi_print_sense_hdr, ptr @__ksymtab_sdev_prefix_printk, ptr @scmd_printk._entry, ptr @scmd_printk._entry_ptr, ptr @scsi_log_dump_sense._entry, ptr @scsi_log_dump_sense._entry_ptr, ptr @scsi_log_print_sense_hdr._entry, ptr @scsi_log_print_sense_hdr._entry.34, ptr @scsi_log_print_sense_hdr._entry_ptr, ptr @scsi_log_print_sense_hdr._entry_ptr.35, ptr @scsi_print_command._entry, ptr @scsi_print_command._entry.12, ptr @scsi_print_command._entry.15, ptr @scsi_print_command._entry_ptr, ptr @scsi_print_command._entry_ptr.13, ptr @scsi_print_command._entry_ptr.16, ptr @scsi_print_result._entry, ptr @scsi_print_result._entry_ptr, ptr @sdev_prefix_printk._entry, ptr @sdev_prefix_printk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdev_prefix_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmd_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_print_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_print_command._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_print_command._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_print_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_log_print_sense_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_log_print_sense_hdr._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_log_dump_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdev_prefix_printk(ptr noundef %level, ptr noundef %sdev, ptr noundef %name, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !125
  %tobool.not = icmp eq ptr %sdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 128) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %name, null
  br i1 %tobool4.not, label %if.end3.if.then30.critedge_crit_edge, label %if.end7

if.end3.if.then30.critedge_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.critedge

if.end7:                                          ; preds = %if.end3
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call6)
  %cmp.not = icmp ult i32 %call6, 128
  br i1 %cmp.not, label %if.end7.if.then30.critedge_crit_edge, label %do.end, !prof !126

if.end7.if.then30.critedge_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.critedge

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #7
  br label %do.end40

if.then30.critedge:                               ; preds = %if.end7.if.then30.critedge_crit_edge, %if.end3.if.then30.critedge_crit_edge
  %off.061 = phi i32 [ %call6, %if.end7.if.then30.critedge_crit_edge ], [ 0, %if.end3.if.then30.critedge_crit_edge ]
  call void @llvm.va_start(ptr nonnull %args)
  %add.ptr31 = getelementptr i8, ptr %call7.i.i, i32 %off.061
  %sub32 = sub nuw nsw i32 128, %off.061
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call33 = call i32 @vscnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #7
  call void @llvm.va_end(ptr nonnull %args)
  br label %do.end40

do.end40:                                         ; preds = %if.then30.critedge, %do.end
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmd_printk(ptr noundef %level, ptr noundef readonly %scmd, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !125
  %tobool.not = icmp eq ptr %scmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %1 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmnd, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 128) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %scmd, i32 -192
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 3
  %tag = getelementptr i8, ptr %scmd, i32 -172
  %8 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tag, align 4
  %tobool.not.i2740 = icmp eq ptr %disk_name.i, null
  %tobool.not.i27 = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i2740
  br i1 %tobool.not.i27, label %if.end4.if.end24.i_crit_edge, label %if.end.i

if.end4.if.end24.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end.i:                                         ; preds = %if.end4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %disk_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i)
  %cmp.not.i = icmp ult i32 %call.i, 128
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %sdev_format_header.exit.thread37, !prof !126

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

sdev_format_header.exit.thread37:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %do.end

if.end24.i:                                       ; preds = %if.end.i.if.end24.i_crit_edge, %if.end4.if.end24.i_crit_edge
  %off.0.i33 = phi i32 [ %call.i, %if.end.i.if.end24.i_crit_edge ], [ 0, %if.end4.if.end24.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp25.i = icmp sgt i32 %9, -1
  br i1 %cmp25.i, label %sdev_format_header.exit, label %if.end24.i.if.then8_crit_edge

if.end24.i.if.then8_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sdev_format_header.exit:                          ; preds = %if.end24.i
  %add.ptr27.i = getelementptr i8, ptr %call7.i.i, i32 %off.0.i33
  %sub28.i = sub nuw nsw i32 128, %off.0.i33
  %call29.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.26, i32 noundef %9) #7
  %add30.i = add i32 %call29.i, %off.0.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add30.i)
  %cmp = icmp ult i32 %add30.i, 128
  br i1 %cmp, label %sdev_format_header.exit.if.then8_crit_edge, label %sdev_format_header.exit.do.end_crit_edge

sdev_format_header.exit.do.end_crit_edge:         ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sdev_format_header.exit.if.then8_crit_edge:       ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %sdev_format_header.exit.if.then8_crit_edge, %if.end24.i.if.then8_crit_edge
  %retval.0.i2836 = phi i32 [ %add30.i, %sdev_format_header.exit.if.then8_crit_edge ], [ %off.0.i33, %if.end24.i.if.then8_crit_edge ]
  call void @llvm.va_start(ptr nonnull %args)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %retval.0.i2836
  %sub = sub nuw nsw i32 128, %retval.0.i2836
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call9 = call i32 @vscnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #7
  call void @llvm.va_end(ptr nonnull %args)
  br label %do.end

do.end:                                           ; preds = %if.then8, %sdev_format_header.exit.do.end_crit_edge, %sdev_format_header.exit.thread37
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 55
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdev_format_header(ptr noundef %logbuf, i32 noundef %logbuf_len, ptr noundef %name, i32 noundef %tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %logbuf, i32 noundef %logbuf_len, ptr noundef nonnull @.str, ptr noundef nonnull %name) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %off.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0, i32 %logbuf_len)
  %cmp.not = icmp ult i32 %off.0, %logbuf_len
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !126

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tag)
  %cmp25 = icmp sgt i32 %tag, -1
  br i1 %cmp25, label %if.then26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27 = getelementptr i8, ptr %logbuf, i32 %off.0
  %sub28 = sub i32 %logbuf_len, %off.0
  %call29 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27, i32 noundef %sub28, ptr noundef nonnull @.str.26, i32 noundef %tag) #7
  %add30 = add i32 %call29, %off.0
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %off.0, %do.end ], [ %add30, %if.then26 ], [ %off.0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__scsi_format_command(ptr noundef %logbuf, i32 noundef %logbuf_len, ptr nocapture noundef readonly %cdb, i32 noundef %cdb_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @scsi_format_opcode_name(ptr noundef %logbuf, i32 noundef %logbuf_len, ptr noundef %cdb)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %logbuf_len)
  %cmp.not = icmp ult i32 %call, %logbuf_len
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp.i = icmp eq i8 %1, 127
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %additional_cdb_length.i.i = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %cdb, i32 0, i32 3
  %2 = ptrtoint ptr %additional_cdb_length.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %additional_cdb_length.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 8
  br label %scsi_command_size.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = lshr i8 %1, 5
  %5 = zext i8 %4 to i32
  %arrayidx4.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %7 to i32
  br label %scsi_command_size.exit

scsi_command_size.exit:                           ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i, %cond.true.i ], [ %conv5.i, %cond.false.i ]
  %8 = tail call i32 @llvm.umin.i32(i32 %cond.i, i32 %cdb_len)
  %sub = add i32 %logbuf_len, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp529 = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp630 = icmp ugt i32 %call, %sub
  %or.cond31 = select i1 %cmp529, i1 true, i1 %cmp630
  br i1 %or.cond31, label %scsi_command_size.exit.cleanup_crit_edge, label %scsi_command_size.exit.if.end8_crit_edge

scsi_command_size.exit.if.end8_crit_edge:         ; preds = %scsi_command_size.exit
  br label %if.end8

scsi_command_size.exit.cleanup_crit_edge:         ; preds = %scsi_command_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %scsi_command_size.exit.if.end8_crit_edge
  %off.033 = phi i32 [ %add, %if.end8.if.end8_crit_edge ], [ %call, %scsi_command_size.exit.if.end8_crit_edge ]
  %k.032 = phi i32 [ %inc, %if.end8.if.end8_crit_edge ], [ 0, %scsi_command_size.exit.if.end8_crit_edge ]
  %add.ptr = getelementptr i8, ptr %logbuf, i32 %off.033
  %sub9 = sub i32 %logbuf_len, %off.033
  %arrayidx = getelementptr i8, ptr %cdb, i32 %k.032
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub9, ptr noundef nonnull @.str.6, i32 noundef %conv) #7
  %add = add i32 %call10, %off.033
  %inc = add nuw nsw i32 %k.032, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %8)
  %cmp5 = icmp uge i32 %inc, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp6 = icmp ugt i32 %add, %sub
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end8.if.end8_crit_edge

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %scsi_command_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call, %scsi_command_size.exit.cleanup_crit_edge ], [ %add, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_format_opcode_name(ptr noundef %buffer, i32 noundef %buf_len, ptr nocapture noundef readonly %cdbp) unnamed_addr #0 align 64 {
entry:
  %cdb_name = alloca ptr, align 4
  %sa_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cdb_name) #7
  %0 = ptrtoint ptr %cdb_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cdb_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sa_name) #7
  %1 = ptrtoint ptr %sa_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %sa_name, align 4
  %2 = ptrtoint ptr %cdbp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cdbp, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp = icmp eq i8 %3, 127
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %additional_cdb_length.i = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %cdbp, i32 0, i32 3
  %4 = ptrtoint ptr %additional_cdb_length.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %additional_cdb_length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2 = icmp ult i8 %5, 2
  br i1 %cmp2, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.27, i32 noundef %add.i) #7
  br label %cleanup108

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx6 = getelementptr i8, ptr %cdbp, i32 8
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %arrayidx8 = getelementptr i8, ptr %cdbp, i32 9
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %add = or i32 %shl, %conv9
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10 = getelementptr i8, ptr %cdbp, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %12 = and i8 %11, 31
  %and = zext i8 %12 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.else, %cleanup
  %sa.1 = phi i32 [ %add, %cleanup ], [ %and, %if.else ]
  %call13 = call zeroext i1 @scsi_opcode_sa_name(i32 noundef %conv, i32 noundef %sa.1, ptr noundef nonnull %cdb_name, ptr noundef nonnull %sa_name) #7
  br i1 %call13, label %if.else63, label %if.then14

if.then14:                                        ; preds = %if.end12
  %13 = ptrtoint ptr %cdb_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdb_name, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #7
  br label %if.end75

if.else17:                                        ; preds = %if.then14
  %call18 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.28, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %buf_len)
  %cmp19.not = icmp ult i32 %call18, %buf_len
  br i1 %cmp19.not, label %if.end44, label %do.end, !prof !126

do.end:                                           ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef 9, ptr noundef null) #7
  br label %cleanup108

if.end44:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %3)
  %cmp45 = icmp ugt i8 %3, -65
  br i1 %cmp45, label %if.then47, label %if.else50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call18
  %sub = sub i32 %buf_len, %call18
  %call48 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.29) #7
  %add49 = add i32 %call48, %call18
  br label %if.end75

if.else50:                                        ; preds = %if.end44
  %15 = add i8 %3, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %15)
  %16 = icmp ult i8 %15, 30
  br i1 %16, label %if.then55, label %if.else50.if.end75_crit_edge

if.else50.if.end75_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then55:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr56 = getelementptr i8, ptr %buffer, i32 %call18
  %sub57 = sub i32 %buf_len, %call18
  %call58 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.30) #7
  %add59 = add i32 %call58, %call18
  br label %if.end75

if.else63:                                        ; preds = %if.end12
  %17 = ptrtoint ptr %sa_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sa_name, align 4
  %tobool64.not = icmp eq ptr %18, null
  br i1 %tobool64.not, label %if.else67, label %if.then65

if.then65:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #7
  br label %if.end75

if.else67:                                        ; preds = %if.else63
  %19 = ptrtoint ptr %cdb_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdb_name, align 4
  %tobool68.not = icmp eq ptr %20, null
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.31, ptr noundef nonnull %20, i32 noundef %sa.1) #7
  br label %if.end75

if.else71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %sa.1) #7
  br label %if.end75

if.end75:                                         ; preds = %if.else71, %if.then69, %if.then65, %if.then55, %if.else50.if.end75_crit_edge, %if.then47, %if.then15
  %off.0 = phi i32 [ %call66, %if.then65 ], [ %call70, %if.then69 ], [ %call72, %if.else71 ], [ %call16, %if.then15 ], [ %add49, %if.then47 ], [ %add59, %if.then55 ], [ %call18, %if.else50.if.end75_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0, i32 %buf_len)
  %cmp77.not = icmp ult i32 %off.0, %buf_len
  br i1 %cmp77.not, label %if.end75.cleanup108_crit_edge, label %do.end94, !prof !126

if.end75.cleanup108_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108

do.end94:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 9, ptr noundef null) #7
  br label %cleanup108

cleanup108:                                       ; preds = %do.end94, %if.end75.cleanup108_crit_edge, %do.end, %cleanup.thread
  %retval.1 = phi i32 [ %call18, %do.end ], [ %off.0, %do.end94 ], [ %off.0, %if.end75.cleanup108_crit_edge ], [ %call5, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sa_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cdb_name) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_print_command(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 128) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i.i.i = getelementptr i8, ptr %cmd, i32 -192
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3
  %tag = getelementptr i8, ptr %cmd, i32 -172
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag, align 4
  %tobool.not.i233254 = icmp eq ptr %disk_name.i, null
  %tobool.not.i233 = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i233254
  br i1 %tobool.not.i233, label %if.end3.if.end24.i_crit_edge, label %if.end.i

if.end3.if.end24.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end.i:                                         ; preds = %if.end3
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %disk_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i)
  %cmp.not.i = icmp ult i32 %call.i, 128
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %sdev_format_header.exit.thread263, !prof !126

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

sdev_format_header.exit.thread263:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %do.end166

if.end24.i:                                       ; preds = %if.end.i.if.end24.i_crit_edge, %if.end3.if.end24.i_crit_edge
  %off.0.i253 = phi i32 [ %call.i, %if.end.i.if.end24.i_crit_edge ], [ 0, %if.end3.if.end24.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp25.i = icmp sgt i32 %8, -1
  br i1 %cmp25.i, label %sdev_format_header.exit, label %if.end24.i.if.end8_crit_edge

if.end24.i.if.end8_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

sdev_format_header.exit:                          ; preds = %if.end24.i
  %add.ptr27.i = getelementptr i8, ptr %call7.i.i, i32 %off.0.i253
  %sub28.i = sub nuw nsw i32 128, %off.0.i253
  %call29.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.26, i32 noundef %8) #7
  %add30.i = add i32 %call29.i, %off.0.i253
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add30.i)
  %cmp.not = icmp ult i32 %add30.i, 128
  br i1 %cmp.not, label %sdev_format_header.exit.if.end8_crit_edge, label %sdev_format_header.exit.do.end166_crit_edge

sdev_format_header.exit.do.end166_crit_edge:      ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end166

sdev_format_header.exit.if.end8_crit_edge:        ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %sdev_format_header.exit.if.end8_crit_edge, %if.end24.i.if.end8_crit_edge
  %retval.0.i234262 = phi i32 [ %add30.i, %sdev_format_header.exit.if.end8_crit_edge ], [ %off.0.i253, %if.end24.i.if.end8_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %retval.0.i234262
  %sub = sub nuw nsw i32 128, %retval.0.i234262
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.7) #7
  %add = add i32 %call9, %retval.0.i234262
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp10.not = icmp ult i32 %add, 128
  br i1 %cmp10.not, label %if.end34.critedge, label %do.end, !prof !126

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 9, ptr noundef null) #7
  br label %do.end166

if.end34.critedge:                                ; preds = %if.end8
  %add.ptr35 = getelementptr i8, ptr %call7.i.i, i32 %add
  %sub36 = sub nuw nsw i32 128, %add
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %call38 = tail call fastcc i32 @scsi_format_opcode_name(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef %10)
  %add39 = add i32 %call38, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add39)
  %cmp40.not = icmp ult i32 %add39, 128
  br i1 %cmp40.not, label %if.end42, label %if.end34.critedge.do.end166_crit_edge

if.end34.critedge.do.end166_crit_edge:            ; preds = %if.end34.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end166

if.end42:                                         ; preds = %if.end34.critedge
  %cmd_len = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %11 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %12)
  %cmp43 = icmp ugt i16 %12, 16
  br i1 %cmp43, label %if.then45, label %if.end117

if.then45:                                        ; preds = %if.end42
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub47 = sub nuw nsw i32 128, %add39
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.8) #7
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  %15 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp55256.not = icmp eq i16 %16, 0
  br i1 %cmp55256.not, label %if.then45.out_crit_edge, label %for.body.preheader

if.then45.out_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.preheader:                               ; preds = %if.then45
  %conv54255 = zext i16 %16 to i32
  br label %for.body

for.body:                                         ; preds = %do.end113.for.body_crit_edge, %for.body.preheader
  %conv54259 = phi i32 [ %conv54, %do.end113.for.body_crit_edge ], [ %conv54255, %for.body.preheader ]
  %k.0257 = phi i32 [ %add116, %do.end113.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i236 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %disk.i236 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk.i236, align 8
  %tobool.not.i237 = icmp eq ptr %20, null
  %disk_name.i238 = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 3
  %retval.0.i239 = select i1 %tobool.not.i237, ptr null, ptr %disk_name.i238
  %21 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tag, align 4
  %call66 = tail call fastcc i32 @sdev_format_header(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef %retval.0.i239, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call66)
  %cmp69 = icmp ugt i32 %call66, 70
  br i1 %cmp69, label %do.end86, label %if.then101.critedge, !prof !127

do.end86:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 9, ptr noundef null) #7
  br label %do.end113

if.then101.critedge:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub59 = sub nsw i32 %conv54259, %k.0257
  %23 = tail call i32 @llvm.smin.i32(i32 %sub59, i32 16)
  %add.ptr102 = getelementptr i8, ptr %call7.i.i, i32 %call66
  %sub103 = sub nuw nsw i32 128, %call66
  %call104 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.11, i32 noundef %k.0257) #7
  %add105 = add i32 %call104, %call66
  %24 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmnd, align 4
  %arrayidx = getelementptr i8, ptr %25, i32 %k.0257
  %add.ptr107 = getelementptr i8, ptr %call7.i.i, i32 %add105
  %sub108 = sub i32 128, %add105
  %call109 = tail call i32 @hex_dump_to_buffer(ptr noundef %arrayidx, i32 noundef %23, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr107, i32 noundef %sub108, i1 noundef zeroext false) #7
  br label %do.end113

do.end113:                                        ; preds = %if.then101.critedge, %do.end86
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %sdev_gendev115 = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev115, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  %add116 = add nuw nsw i32 %k.0257, 16
  %28 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cmd_len, align 4
  %conv54 = zext i16 %29 to i32
  %cmp55 = icmp ult i32 %add116, %conv54
  br i1 %cmp55, label %do.end113.for.body_crit_edge, label %do.end113.out_crit_edge

do.end113.out_crit_edge:                          ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end113.for.body_crit_edge:                     ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end117:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %add39)
  %cmp120 = icmp ugt i32 %add39, 79
  br i1 %cmp120, label %do.end137, label %if.then152.critedge, !prof !127

do.end137:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 9, ptr noundef null) #7
  br label %do.end166

if.then152.critedge:                              ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr153 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub154 = sub nuw nsw i32 128, %add39
  %call155 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153, i32 noundef %sub154, ptr noundef nonnull @.str.14) #7
  %add156 = add i32 %call155, %add39
  %30 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmnd, align 4
  %32 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cmd_len, align 4
  %conv159 = zext i16 %33 to i32
  %add.ptr160 = getelementptr i8, ptr %call7.i.i, i32 %add156
  %sub161 = sub i32 128, %add156
  %call162 = tail call i32 @hex_dump_to_buffer(ptr noundef %31, i32 noundef %conv159, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr160, i32 noundef %sub161, i1 noundef zeroext false) #7
  br label %do.end166

do.end166:                                        ; preds = %if.then152.critedge, %do.end137, %if.end34.critedge.do.end166_crit_edge, %do.end, %sdev_format_header.exit.do.end166_crit_edge, %sdev_format_header.exit.thread263
  %device167 = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %device167 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device167, align 4
  %sdev_gendev168 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev168, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  br label %out

out:                                              ; preds = %do.end166, %do.end113.out_crit_edge, %if.then45.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_print_sense_hdr(ptr noundef %sdev, ptr noundef %name, ptr nocapture noundef readonly %sshdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @scsi_log_print_sense_hdr(ptr noundef %sdev, ptr noundef %name, i32 noundef -1, ptr noundef %sshdr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_log_print_sense_hdr(ptr noundef %sdev, ptr noundef %name, i32 noundef %tag, ptr nocapture noundef readonly %sshdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 128) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %name, null
  br i1 %tobool.not.i, label %if.end.if.end24.i_crit_edge, label %if.end.i

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i)
  %cmp.not.i = icmp ult i32 %call.i, 128
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %do.end.i, !prof !126

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %sdev_format_header.exit

if.end24.i:                                       ; preds = %if.end.i.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  %off.0.i48 = phi i32 [ %call.i, %if.end.i.if.end24.i_crit_edge ], [ 0, %if.end.if.end24.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tag)
  %cmp25.i = icmp sgt i32 %tag, -1
  br i1 %cmp25.i, label %if.then26.i, label %if.end24.i.sdev_format_header.exit_crit_edge

if.end24.i.sdev_format_header.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdev_format_header.exit

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27.i = getelementptr i8, ptr %call7.i.i, i32 %off.0.i48
  %sub28.i = sub nuw nsw i32 128, %off.0.i48
  %call29.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.26, i32 noundef %tag) #7
  %add30.i = add i32 %call29.i, %off.0.i48
  br label %sdev_format_header.exit

sdev_format_header.exit:                          ; preds = %if.then26.i, %if.end24.i.sdev_format_header.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %add30.i, %if.then26.i ], [ %off.0.i48, %if.end24.i.sdev_format_header.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %retval.0.i
  %sub = sub i32 128, %retval.0.i
  %call.i37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.36) #7
  %sense_key.i = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %1 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sense_key.i, align 1
  %call1.i = tail call ptr @scsi_sense_key_string(i8 noundef zeroext %2) #7
  %tobool.not.i38 = icmp eq ptr %call1.i, null
  %add.ptr3.i = getelementptr i8, ptr %add.ptr, i32 %call.i37
  %sub4.i = sub i32 %sub, %call.i37
  br i1 %tobool.not.i38, label %if.else.i, label %if.then.i39

if.then.i39:                                      ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %call1.i) #7
  br label %if.end.i41

if.else.i:                                        ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %sense_key.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sense_key.i, align 1
  %conv.i = zext i8 %4 to i32
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #7
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.else.i, %if.then.i39
  %call2.pn.i = phi i32 [ %call2.i, %if.then.i39 ], [ %call6.i, %if.else.i ]
  %off.0.i40 = add i32 %call2.pn.i, %call.i37
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 %off.0.i40
  %sub9.i = sub i32 %sub, %off.0.i40
  %5 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sshdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %6)
  %cmp.i.i = icmp ugt i8 %6, 111
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.i = icmp ne i8 %7, 0
  %8 = and i1 %cmp.i.i, %tobool.i.i
  %cond.i = select i1 %8, ptr @.str.38, ptr @.str.39
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8.i, i32 noundef %sub9.i, ptr noundef nonnull %cond.i) #7
  %9 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sshdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %10)
  %cmp.i = icmp ugt i8 %10, 113
  br i1 %cmp.i, label %if.then16.i, label %if.end.i41.scsi_format_sense_hdr.exit_crit_edge

if.end.i41.scsi_format_sense_hdr.exit_crit_edge:  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %scsi_format_sense_hdr.exit

if.then16.i:                                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %add13.i = add i32 %call12.i, %off.0.i40
  %add.ptr17.i = getelementptr i8, ptr %add.ptr, i32 %add13.i
  %sub18.i = sub i32 %sub, %add13.i
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i, i32 noundef %sub18.i, ptr noundef nonnull @.str.40) #7
  br label %scsi_format_sense_hdr.exit

scsi_format_sense_hdr.exit:                       ; preds = %if.then16.i, %if.end.i41.scsi_format_sense_hdr.exit_crit_edge
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2592, i32 noundef 128) #10
  %tobool4.not = icmp eq ptr %call7.i.i42, null
  br i1 %tobool4.not, label %scsi_format_sense_hdr.exit.cleanup_crit_edge, label %if.end6

scsi_format_sense_hdr.exit.cleanup_crit_edge:     ; preds = %scsi_format_sense_hdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %scsi_format_sense_hdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @sdev_format_header(ptr noundef nonnull %call7.i.i42, i32 noundef 128, ptr noundef %name, i32 noundef %tag)
  %add.ptr8 = getelementptr i8, ptr %call7.i.i42, i32 %call7
  %sub9 = sub i32 128, %call7
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %12 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %asc, align 1
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %14 = ptrtoint ptr %ascq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ascq, align 1
  tail call fastcc void @scsi_format_extd_sense(ptr noundef %add.ptr8, i32 noundef %sub9, i8 noundef zeroext %13, i8 noundef zeroext %15)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i42) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i42) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %scsi_format_sense_hdr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__scsi_print_sense(ptr noundef %sdev, ptr noundef %name, ptr noundef %sense_buffer, i32 noundef %sense_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @scsi_log_print_sense(ptr noundef %sdev, ptr noundef %name, i32 noundef -1, ptr noundef %sense_buffer, i32 noundef %sense_len)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_log_print_sense(ptr noundef %sdev, ptr noundef %name, i32 noundef %tag, ptr noundef %sense_buffer, i32 noundef %sense_len) unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #7
  %0 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sshdr, align 8
  %call = call zeroext i1 @scsi_normalize_sense(ptr noundef %sense_buffer, i32 noundef %sense_len, ptr noundef nonnull %sshdr) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @scsi_log_print_sense_hdr(ptr noundef %sdev, ptr noundef %name, i32 noundef %tag, ptr noundef nonnull %sshdr)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 128) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %for.cond.preheader.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sense_len)
  %cmp22.i = icmp sgt i32 %sense_len, 0
  br i1 %cmp22.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tobool.not.i.i = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tag)
  %cmp25.i.i = icmp sgt i32 %tag, -1
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  br label %for.body.i

for.body.i:                                       ; preds = %sdev_format_header.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %sdev_format_header.exit.i.for.body.i_crit_edge ]
  %sub.i = sub i32 %sense_len, %i.023.i
  %2 = call i32 @llvm.smin.i32(i32 %sub.i, i32 16) #7
  br i1 %tobool.not.i.i, label %for.body.i.if.end24.i.i_crit_edge, label %if.end.i.i

for.body.i.if.end24.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.end.i.i:                                       ; preds = %for.body.i
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i.i)
  %cmp.not.i.i = icmp ult i32 %call.i.i, 128
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end24.i.i_crit_edge, label %do.end.i.i, !prof !126

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %sdev_format_header.exit.i

if.end24.i.i:                                     ; preds = %if.end.i.i.if.end24.i.i_crit_edge, %for.body.i.if.end24.i.i_crit_edge
  %off.0.i21.i = phi i32 [ %call.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ 0, %for.body.i.if.end24.i.i_crit_edge ]
  br i1 %cmp25.i.i, label %if.then26.i.i, label %if.end24.i.i.sdev_format_header.exit.i_crit_edge

if.end24.i.i.sdev_format_header.exit.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sdev_format_header.exit.i

if.then26.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %off.0.i21.i
  %sub28.i.i = sub nuw nsw i32 128, %off.0.i21.i
  %call29.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i.i, i32 noundef %sub28.i.i, ptr noundef nonnull @.str.26, i32 noundef %tag) #7
  %add30.i.i = add i32 %call29.i.i, %off.0.i21.i
  br label %sdev_format_header.exit.i

sdev_format_header.exit.i:                        ; preds = %if.then26.i.i, %if.end24.i.i.sdev_format_header.exit.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %add30.i.i, %if.then26.i.i ], [ %off.0.i21.i, %if.end24.i.i.sdev_format_header.exit.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %sense_buffer, i32 %i.023.i
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %retval.0.i.i
  %sub3.i = sub i32 128, %retval.0.i.i
  %call4.i = call i32 @hex_dump_to_buffer(ptr noundef %arrayidx.i, i32 noundef %2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.i, i32 noundef %sub3.i, i1 noundef zeroext false) #7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev.i, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i.i) #11
  %add.i = add i32 %i.023.i, 16
  %cmp.i = icmp slt i32 %add.i, %sense_len
  br i1 %cmp.i, label %sdev_format_header.exit.i.for.body.i_crit_edge, label %sdev_format_header.exit.i.for.end.i_crit_edge

sdev_format_header.exit.i.for.end.i_crit_edge:    ; preds = %sdev_format_header.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

sdev_format_header.exit.i.for.body.i_crit_edge:   ; preds = %sdev_format_header.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %sdev_format_header.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end

if.end:                                           ; preds = %for.end.i, %if.else.if.end_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_print_sense(ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %cmd, i32 -192
  %2 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %disk_name.i
  %tag = getelementptr i8, ptr %cmd, i32 -172
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 21
  %8 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sense_buffer, align 4
  tail call fastcc void @scsi_log_print_sense(ptr noundef %1, ptr noundef %retval.0.i, i32 noundef %7, ptr noundef %9, i32 noundef 96)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_print_result(ptr nocapture noundef readonly %cmd, ptr noundef %msg, i32 noundef %disposition) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_mlreturn_string(i32 noundef %disposition) #7
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %result, align 4
  %call1 = tail call ptr @scsi_hostbyte_string(i32 noundef %1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %jiffies_at_alloc = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 7
  %3 = ptrtoint ptr %jiffies_at_alloc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %jiffies_at_alloc, align 4
  %sub = sub i32 %2, %4
  %div = udiv i32 %sub, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 128) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %cmd, i32 -192
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 3
  %tag = getelementptr i8, ptr %cmd, i32 -172
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  %tobool.not.i239256 = icmp eq ptr %disk_name.i, null
  %tobool.not.i239 = select i1 %tobool.not.i, i1 true, i1 %tobool.not.i239256
  br i1 %tobool.not.i239, label %if.end.if.end24.i_crit_edge, label %if.end.i

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %disk_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call.i)
  %cmp.not.i = icmp ult i32 %call.i, 128
  br i1 %cmp.not.i, label %if.end.i.if.end24.i_crit_edge, label %sdev_format_header.exit.thread260, !prof !126

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

sdev_format_header.exit.thread260:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 47, i32 noundef 9, ptr noundef null) #7
  br label %do.end178

if.end24.i:                                       ; preds = %if.end.i.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  %off.0.i255 = phi i32 [ %call.i, %if.end.i.if.end24.i_crit_edge ], [ 0, %if.end.if.end24.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp25.i = icmp sgt i32 %11, -1
  br i1 %cmp25.i, label %sdev_format_header.exit, label %if.end24.i.if.end7_crit_edge

if.end24.i.if.end7_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

sdev_format_header.exit:                          ; preds = %if.end24.i
  %add.ptr27.i = getelementptr i8, ptr %call7.i.i, i32 %off.0.i255
  %sub28.i = sub nuw nsw i32 128, %off.0.i255
  %call29.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr27.i, i32 noundef %sub28.i, ptr noundef nonnull @.str.26, i32 noundef %11) #7
  %add30.i = add i32 %call29.i, %off.0.i255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add30.i)
  %cmp.not = icmp ult i32 %add30.i, 128
  br i1 %cmp.not, label %sdev_format_header.exit.if.end7_crit_edge, label %sdev_format_header.exit.do.end178_crit_edge

sdev_format_header.exit.do.end178_crit_edge:      ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end178

sdev_format_header.exit.if.end7_crit_edge:        ; preds = %sdev_format_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %sdev_format_header.exit.if.end7_crit_edge, %if.end24.i.if.end7_crit_edge
  %retval.0.i240259 = phi i32 [ %add30.i, %sdev_format_header.exit.if.end7_crit_edge ], [ %off.0.i255, %if.end24.i.if.end7_crit_edge ]
  %tobool8.not = icmp eq ptr %msg, null
  br i1 %tobool8.not, label %if.end7.if.end37_crit_edge, label %if.then9

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then9:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %retval.0.i240259
  %sub10 = sub nuw nsw i32 128, %retval.0.i240259
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub10, ptr noundef nonnull @.str.17, ptr noundef nonnull %msg) #7
  %add = add i32 %call11, %retval.0.i240259
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp12.not = icmp ult i32 %add, 128
  br i1 %cmp12.not, label %if.then9.if.end37_crit_edge, label %do.end, !prof !126

if.then9.if.end37_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 407, i32 noundef 9, ptr noundef null) #7
  br label %do.end178

if.end37:                                         ; preds = %if.then9.if.end37_crit_edge, %if.end7.if.end37_crit_edge
  %off.0 = phi i32 [ %retval.0.i240259, %if.end7.if.end37_crit_edge ], [ %add, %if.then9.if.end37_crit_edge ]
  %tobool38.not = icmp eq ptr %call, null
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %off.0
  %sub45 = sub nuw nsw i32 128, %off.0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #7
  br label %if.end48

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.19, i32 noundef %disposition) #7
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then39
  %call42.pn = phi i32 [ %call42, %if.then39 ], [ %call46, %if.else ]
  %off.1 = add i32 %call42.pn, %off.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %off.1)
  %cmp50.not = icmp ult i32 %off.1, 128
  br i1 %cmp50.not, label %if.end82.critedge, label %do.end66, !prof !126

do.end66:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 416, i32 noundef 9, ptr noundef null) #7
  br label %do.end178

if.end82.critedge:                                ; preds = %if.end48
  %add.ptr83 = getelementptr i8, ptr %call7.i.i, i32 %off.1
  %sub84 = sub nuw nsw i32 128, %off.1
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.20) #7
  %add86 = add i32 %call85, %off.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add86)
  %cmp88.not = icmp ult i32 %add86, 128
  br i1 %cmp88.not, label %if.end120.critedge, label %do.end104, !prof !126

do.end104:                                        ; preds = %if.end82.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 420, i32 noundef 9, ptr noundef null) #7
  br label %do.end178

if.end120.critedge:                               ; preds = %if.end82.critedge
  %tobool121.not = icmp eq ptr %call1, null
  %add.ptr128 = getelementptr i8, ptr %call7.i.i, i32 %add86
  %sub129 = sub nuw nsw i32 128, %add86
  br i1 %tobool121.not, label %if.else127, label %if.then122

if.then122:                                       ; preds = %if.end120.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128, i32 noundef %sub129, ptr noundef nonnull @.str.21, ptr noundef nonnull %call1) #7
  br label %if.end133

if.else127:                                       ; preds = %if.end120.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  %14 = lshr i32 %13, 16
  %and = and i32 %14, 255
  %call131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128, i32 noundef %sub129, ptr noundef nonnull @.str.22, i32 noundef %and) #7
  br label %if.end133

if.end133:                                        ; preds = %if.else127, %if.then122
  %call125.pn = phi i32 [ %call125, %if.then122 ], [ %call131, %if.else127 ]
  %off.2 = add i32 %call125.pn, %add86
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %off.2)
  %cmp135.not = icmp ult i32 %off.2, 128
  br i1 %cmp135.not, label %if.end167.critedge, label %do.end151, !prof !126

do.end151:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 429, i32 noundef 9, ptr noundef null) #7
  br label %do.end178

if.end167.critedge:                               ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr168 = getelementptr i8, ptr %call7.i.i, i32 %off.2
  %sub169 = sub nuw nsw i32 128, %off.2
  %call170 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr168, i32 noundef %sub169, ptr noundef nonnull @.str.23) #7
  %add171 = add i32 %call170, %off.2
  %add.ptr172 = getelementptr i8, ptr %call7.i.i, i32 %add171
  %sub173 = sub i32 128, %add171
  %call174 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr172, i32 noundef %sub173, ptr noundef nonnull @.str.24, i32 noundef %div) #7
  br label %do.end178

do.end178:                                        ; preds = %if.end167.critedge, %do.end151, %do.end104, %do.end66, %do.end, %sdev_format_header.exit.do.end178_crit_edge, %sdev_format_header.exit.thread260
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 55
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %sdev_gendev, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_mlreturn_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_hostbyte_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_opcode_sa_name(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_format_extd_sense(ptr noundef %buffer, i32 noundef %buf_len, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) unnamed_addr #0 align 64 {
entry:
  %extd_sense_fmt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extd_sense_fmt) #7
  %0 = ptrtoint ptr %extd_sense_fmt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %extd_sense_fmt, align 4
  %call = call ptr @scsi_extd_sense_format(i8 noundef zeroext %asc, i8 noundef zeroext %ascq, ptr noundef nonnull %extd_sense_fmt) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.41, ptr noundef nonnull %call) #7
  %1 = ptrtoint ptr %extd_sense_fmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %extd_sense_fmt, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.then.if.end29_crit_edge, label %if.then3

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call1
  %sub = sub i32 %buf_len, %call1
  %conv = zext i8 %ascq to i32
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.42, ptr noundef nonnull %2, i32 noundef %conv) #7
  br label %if.end29

if.else:                                          ; preds = %entry
  %conv5 = zext i8 %asc to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %asc)
  %cmp = icmp slt i8 %asc, 0
  br i1 %cmp, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buffer, i32 noundef %buf_len, ptr noundef nonnull @.str.43) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else.if.end9_crit_edge
  %off.0 = phi i32 [ %call8, %if.then7 ], [ 0, %if.else.if.end9_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %buffer, i32 %off.0
  %sub11 = sub i32 %buf_len, %off.0
  %call13 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr10, i32 noundef %sub11, ptr noundef nonnull @.str.44, i32 noundef %conv5) #7
  %add14 = add i32 %call13, %off.0
  %conv15 = zext i8 %ascq to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ascq)
  %cmp16 = icmp slt i8 %ascq, 0
  br i1 %cmp16, label %if.then18, label %if.end9.if.end23_crit_edge

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr19 = getelementptr i8, ptr %buffer, i32 %add14
  %sub20 = sub i32 %buf_len, %add14
  %call21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.43) #7
  %add22 = add i32 %call21, %add14
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end9.if.end23_crit_edge
  %off.1 = phi i32 [ %add22, %if.then18 ], [ %add14, %if.end9.if.end23_crit_edge ]
  %add.ptr24 = getelementptr i8, ptr %buffer, i32 %off.1
  %sub25 = sub i32 %buf_len, %off.1
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.45, i32 noundef %conv15) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end23, %if.then3, %if.then.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extd_sense_fmt) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_sense_key_string(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_extd_sense_format(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_logging.c", i32 72, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_logging.c", i32 73, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_logging.c", i32 78, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sdev_prefix_printk._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @sdev_prefix_printk._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_sdev_prefix_printk, !11, !"__ksymtab_sdev_prefix_printk", i1 false, i1 false}
!11 = !{!"../drivers/scsi/scsi_logging.c", i32 81, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/scsi_logging.c", i32 103, i32 2}
!14 = !{ptr @scmd_printk._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @scmd_printk._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_scmd_printk, !17, !"__ksymtab_scmd_printk", i1 false, i1 false}
!17 = !{!"../drivers/scsi/scsi_logging.c", i32 106, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/scsi_logging.c", i32 174, i32 6}
!20 = !{ptr @__ksymtab___scsi_format_command, !21, !"__ksymtab___scsi_format_command", i1 false, i1 false}
!21 = !{!"../drivers/scsi/scsi_logging.c", i32 178, i32 1}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/scsi_logging.c", i32 197, i32 51}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/scsi_logging.c", i32 209, i32 52}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/scsi_logging.c", i32 210, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @scsi_print_command._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @scsi_print_command._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/scsi_logging.c", i32 219, i32 8}
!33 = !{ptr @scsi_print_command._entry.12, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/scsi/scsi_logging.c", i32 224, i32 4}
!35 = !{ptr @scsi_print_command._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/scsi_logging.c", i32 230, i32 52}
!38 = !{ptr @scsi_print_command._entry.15, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/scsi/scsi_logging.c", i32 236, i32 2}
!40 = !{ptr @scsi_print_command._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_scsi_print_command, !42, !"__ksymtab_scsi_print_command", i1 false, i1 false}
!42 = !{!"../drivers/scsi/scsi_logging.c", i32 240, i32 1}
!43 = !{ptr @__ksymtab_scsi_print_sense_hdr, !44, !"__ksymtab_scsi_print_sense_hdr", i1 false, i1 false}
!44 = !{!"../drivers/scsi/scsi_logging.c", i32 366, i32 1}
!45 = !{ptr @__ksymtab___scsi_print_sense, !46, !"__ksymtab___scsi_print_sense", i1 false, i1 false}
!46 = !{!"../drivers/scsi/scsi_logging.c", i32 374, i32 1}
!47 = !{ptr @__ksymtab_scsi_print_sense, !48, !"__ksymtab_scsi_print_sense", i1 false, i1 false}
!48 = !{!"../drivers/scsi/scsi_logging.c", i32 383, i32 1}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/scsi_logging.c", i32 406, i32 6}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/scsi_logging.c", i32 412, i32 6}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/scsi_logging.c", i32 415, i32 6}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/scsi_logging.c", i32 419, i32 51}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/scsi_logging.c", i32 425, i32 6}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/scsi_logging.c", i32 428, i32 6}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/scsi_logging.c", i32 433, i32 5}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_logging.c", i32 436, i32 5}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/scsi_logging.c", i32 439, i32 2}
!67 = !{ptr @scsi_print_result._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @scsi_print_result._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__ksymtab_scsi_print_result, !70, !"__ksymtab_scsi_print_result", i1 false, i1 false}
!70 = !{!"../drivers/scsi/scsi_logging.c", i32 442, i32 1}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/scsi_logging.c", i32 52, i32 6}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/scsi_logging.c", i32 121, i32 6}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/scsi_logging.c", i32 133, i32 37}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/scsi_logging.c", i32 138, i32 8}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/scsi_logging.c", i32 141, i32 8}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/scsi_logging.c", i32 147, i32 37}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/scsi_logging.c", i32 151, i32 6}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/scsi_logging.c", i32 332, i32 2}
!87 = !{ptr @scsi_log_print_sense_hdr._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @scsi_log_print_sense_hdr._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @scsi_log_print_sense_hdr._entry.34, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/scsi/scsi_logging.c", i32 341, i32 2}
!91 = !{ptr @scsi_log_print_sense_hdr._entry_ptr.35, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/scsi_logging.c", i32 278, i32 35}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/scsi_logging.c", i32 285, i32 6}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/scsi_logging.c", i32 287, i32 35}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/scsi_logging.c", i32 287, i32 51}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/scsi_logging.c", i32 290, i32 49}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/scsi_logging.c", i32 252, i32 36}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/scsi_logging.c", i32 256, i32 7}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/scsi_logging.c", i32 259, i32 37}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/scsi_logging.c", i32 261, i32 6}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/scsi_logging.c", i32 266, i32 6}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/scsi_logging.c", i32 315, i32 3}
!114 = !{ptr @scsi_log_dump_sense._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @scsi_log_dump_sense._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{!"branch_weights", i32 2000, i32 1}
!127 = !{!"branch_weights", i32 1, i32 2000}
