; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_scan.c_pt.bc'
source_filename = "../drivers/scsi/scsi_scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_is_target_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_is_target_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_is_target_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_is_target_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_is_target_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_is_target_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_sanitize_inquiry_string\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_sanitize_inquiry_string\09\09\09\09"
module asm "\09.long\09__crc_scsi_sanitize_inquiry_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_sanitize_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_sanitize_inquiry_string\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_sanitize_inquiry_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__scsi_add_device\22, \22a\22\09"
module asm "\09.weak\09__crc___scsi_add_device\09\09\09\09"
module asm "\09.long\09__crc___scsi_add_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_add_device\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_add_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_add_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_add_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_rescan_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_rescan_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_rescan_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_rescan_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_rescan_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_rescan_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_scan_target\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_scan_target\09\09\09\09"
module asm "\09.long\09__crc_scsi_scan_target\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_scan_target:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_scan_target\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_scan_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_scan_host\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_scan_host\09\09\09\09"
module asm "\09.long\09__crc_scsi_scan_host\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_scan_host:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_scan_host\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_scan_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.async_scan_data = type { %struct.list_head, ptr, %struct.completion }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_lun = type { [8 x i8] }
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

@__param_str_max_luns = internal constant [18 x i8] c"scsi_mod.max_luns\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@max_scsi_luns = internal global { i64, [24 x i8] } { i64 512, [24 x i8] zeroinitializer }, align 32
@__param_max_luns = internal constant %struct.kernel_param { ptr @__param_str_max_luns, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_scsi_luns } }, section "__param", align 4
@__UNIQUE_ID_max_lunstype281 = internal constant [34 x i8] c"scsi_mod.parmtype=max_luns:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_max_luns282 = internal constant [70 x i8] c"scsi_mod.parm=max_luns:last scsi LUN (should be between 1 and 2^64-1)\00", section ".modinfo", align 1
@__param_str_scan = internal constant [14 x i8] c"scsi_mod.scan\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_scan = internal constant %struct.kparam_string { i32 7, ptr @scsi_scan_type }, align 4
@__param_scan = internal constant %struct.kernel_param { ptr @__param_str_scan, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_scan } }, section "__param", align 4
@__UNIQUE_ID_scantype283 = internal constant [30 x i8] c"scsi_mod.parmtype=scan:string\00", section ".modinfo", align 1
@__UNIQUE_ID_scan284 = internal constant [164 x i8] c"scsi_mod.parm=scan:sync, async, manual, or none. Setting to 'manual' disables automatic scanning, but allows for manual device scan via the 'scan' sysfs attribute.\00", section ".modinfo", align 1
@__param_str_inq_timeout = internal constant [21 x i8] c"scsi_mod.inq_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@scsi_inq_timeout = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@__param_inq_timeout = internal constant %struct.kernel_param { ptr @__param_str_inq_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @scsi_inq_timeout } }, section "__param", align 4
@__UNIQUE_ID_inq_timeouttype285 = internal constant [35 x i8] c"scsi_mod.parmtype=inq_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_inq_timeout286 = internal constant [145 x i8] c"scsi_mod.parm=inq_timeout:Timeout (in seconds) waiting for devices to answer INQUIRY. Default is 20. Some devices may need more; most need less.\00", section ".modinfo", align 1
@scsi_scan_type = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"async\00\00", [25 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@scanning_hosts = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @scanning_hosts, ptr @scanning_hosts }, [24 x i8] zeroinitializer }, align 32
@async_scan_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@scsi_complete_async_scans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016scsi: waiting for bus probes to complete ...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scsi_complete_async_scans\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/scsi/scsi_scan.c\00", [39 x i8] zeroinitializer }, align 32
@scsi_complete_async_scans._entry_ptr = internal global ptr @scsi_complete_async_scans._entry, section ".printk_index", align 4
@scsi_target_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.12, ptr null, ptr null, ptr null, ptr @scsi_target_dev_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_is_target_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_is_target_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_is_target_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_is_target_device to i32), ptr @__kstrtab_scsi_is_target_device, ptr @__kstrtabns_scsi_is_target_device }, section "___ksymtab+scsi_is_target_device", align 4
@__kstrtab_scsi_sanitize_inquiry_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_sanitize_inquiry_string = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_sanitize_inquiry_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_sanitize_inquiry_string to i32), ptr @__kstrtab_scsi_sanitize_inquiry_string, ptr @__kstrtabns_scsi_sanitize_inquiry_string }, section "___ksymtab+scsi_sanitize_inquiry_string", align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab___scsi_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_add_device to i32), ptr @__kstrtab___scsi_add_device, ptr @__kstrtabns___scsi_add_device }, section "___ksymtab+__scsi_add_device", align 4
@__kstrtab_scsi_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_add_device to i32), ptr @__kstrtab_scsi_add_device, ptr @__kstrtabns_scsi_add_device }, section "___ksymtab+scsi_add_device", align 4
@__kstrtab_scsi_rescan_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_rescan_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_rescan_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_rescan_device to i32), ptr @__kstrtab_scsi_rescan_device, ptr @__kstrtabns_scsi_rescan_device }, section "___ksymtab+scsi_rescan_device", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_scan_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_scan_target = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_scan_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_scan_target to i32), ptr @__kstrtab_scsi_scan_target, ptr @__kstrtabns_scsi_scan_target }, section "___ksymtab+scsi_scan_target", align 4
@scsi_logging_level = external dso_local local_unnamed_addr global i32, align 4
@scsi_scan_host_selected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 1751, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: <%u:%u:%llu>\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scsi_scan_host_selected\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scsi_scan_host_selected._entry_ptr = internal global ptr @scsi_scan_host_selected._entry, section ".printk_index", align 4
@__kstrtab_scsi_scan_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_scan_host = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_scan_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_scan_host to i32), ptr @__kstrtab_scsi_scan_host, ptr @__kstrtabns_scsi_scan_host }, section "___ksymtab+scsi_scan_host", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"async_scan_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scsi_target\00", [20 x i8] zeroinitializer }, align 32
@scsi_alloc_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: allocation failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_alloc_target\00", [46 x i8] zeroinitializer }, align 32
@scsi_alloc_target._entry_ptr = internal global ptr @scsi_alloc_target._entry, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"target%d:%d:%d\00", [17 x i8] zeroinitializer }, align 32
@scsi_bus_type = external dso_local global %struct.bus_type, align 4
@scsi_alloc_target._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 535, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"target allocation failed, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@scsi_alloc_target._entry_ptr.19 = internal global ptr @scsi_alloc_target._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"scsi scan: device exists on %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"scsi scan: peripheral qualifier of 3, device not added\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"scsi scan: consider passing scsi_mod.dev_flags=%s:%s:0x240 or 0x1000240\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"scsi scan: peripheral device type of 31, no device added\0A\00", [38 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sdev->state_mutex\00", [45 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdev->list_lock\00", [47 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sdev->inquiry_mutex\00", [43 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&sdev->event_work)\00", [59 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&sdev->requeue_work)\00", [57 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_alloc_sdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013%s: Allocation failure during SCSI scanning, some SCSI devices might not be configured\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scsi_alloc_sdev\00", [16 x i8] zeroinitializer }, align 32
@scsi_alloc_sdev._entry_ptr = internal global ptr @scsi_alloc_sdev._entry, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nullnullnullnull\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi scan: INQUIRY pass %d length %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scsi scan: INQUIRY %s with code 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"successful\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"scsi scan: %d byte inquiry failed.  Consider BLIST_INQUIRY_36 for this device\0A\00", [49 x i8] zeroinitializer }, align 32
@scsi_probe_lun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 784, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"scsi scan: INQUIRY result too short (%d), using 36\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scsi_probe_lun\00", [17 x i8] zeroinitializer }, align 32
@scsi_probe_lun._entry_ptr = internal global ptr @scsi_probe_lun._entry, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATA     \00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: correcting incorrect peripheral device type 0x%x for W-LUN 0x%16xhN\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.scsi_add_lun = private unnamed_addr constant [13 x i8] c"scsi_add_lun\00", align 1
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s %.8s %.16s %.4s PQ: %d ANSI: %d%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CCS\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"in wrong state %s to complete scan\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to configure device\0A\00", [36 x i8] zeroinitializer }, align 32
@scsi_add_lun.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unlocking floptical drive\0A\00", [37 x i8] zeroinitializer }, align 32
@scsi_report_lun_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.53, ptr @.str.3, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi_report_lun_scan\00", [43 x i8] zeroinitializer }, align 32
@scsi_report_lun_scan._entry_ptr = internal global ptr @scsi_report_lun_scan._entry, section ".printk_index", align 4
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"scsi scan: Sending REPORT LUNS to (try %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"scsi scan: REPORT LUNS %s (try %d) result 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scsi scan: REPORT LUN scan\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"lun%llu has a LUN larger than allowed by the host adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unexpected response from lun %llu while scanning, scan aborted\0A\00", [32 x i8] zeroinitializer }, align 32
@scsi_sequential_lun_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1294, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scsi scan: Sequential scan\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scsi_sequential_lun_scan\00", [39 x i8] zeroinitializer }, align 32
@scsi_sequential_lun_scan._entry_ptr = internal global ptr @scsi_sequential_lun_scan._entry, section ".printk_index", align 4
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@scsi_prep_async_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1813, ptr @.str.64, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s called twice\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi_prep_async_scan\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@scsi_prep_async_scan._entry_ptr = internal global ptr @scsi_prep_async_scan._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@scsi_finish_async_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.65, ptr @.str.3, i32 1865, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_finish_async_scan\00", [41 x i8] zeroinitializer }, align 32
@scsi_finish_async_scan._entry_ptr = internal global ptr @scsi_finish_async_scan._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 14]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"max_scsi_luns\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 88, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"scsi_inq_timeout\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 108, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"scsi_scan_type\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 100, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 135, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"scanning_hosts\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 117, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"async_scan_lock\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 175, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"scsi_target_type\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 410, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1554, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1698, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1749, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 87, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 116, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 411, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 500, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 507, i32 20 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 535, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1151, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1194, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1198, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1238, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 295, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 301, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 302, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 303, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 304, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 380, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 84, i32 44 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 657, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 676, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 745, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 782, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 877, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 900, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 945, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1015, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1053, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 206, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1430, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1460, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1468, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1503, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1514, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1526, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1293, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1808, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1813, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private constant [28 x i8] c"../drivers/scsi/scsi_scan.c\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1865, i32 3 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_inq_timeout286, ptr @__UNIQUE_ID_inq_timeouttype285, ptr @__UNIQUE_ID_max_luns282, ptr @__UNIQUE_ID_max_lunstype281, ptr @__UNIQUE_ID_scan284, ptr @__UNIQUE_ID_scantype283, ptr @__ksymtab___scsi_add_device, ptr @__ksymtab_scsi_add_device, ptr @__ksymtab_scsi_is_target_device, ptr @__ksymtab_scsi_rescan_device, ptr @__ksymtab_scsi_sanitize_inquiry_string, ptr @__ksymtab_scsi_scan_host, ptr @__ksymtab_scsi_scan_target, ptr @__param_inq_timeout, ptr @__param_max_luns, ptr @__param_scan, ptr @scsi_alloc_sdev._entry, ptr @scsi_alloc_sdev._entry_ptr, ptr @scsi_alloc_target._entry, ptr @scsi_alloc_target._entry.16, ptr @scsi_alloc_target._entry_ptr, ptr @scsi_alloc_target._entry_ptr.19, ptr @scsi_complete_async_scans._entry, ptr @scsi_complete_async_scans._entry_ptr, ptr @scsi_finish_async_scan._entry, ptr @scsi_finish_async_scan._entry_ptr, ptr @scsi_prep_async_scan._entry, ptr @scsi_prep_async_scan._entry_ptr, ptr @scsi_probe_lun._entry, ptr @scsi_probe_lun._entry_ptr, ptr @scsi_report_lun_scan._entry, ptr @scsi_report_lun_scan._entry_ptr, ptr @scsi_scan_host_selected._entry, ptr @scsi_scan_host_selected._entry_ptr, ptr @scsi_sequential_lun_scan._entry, ptr @scsi_sequential_lun_scan._entry_ptr, ptr @max_scsi_luns, ptr @scsi_inq_timeout, ptr @scsi_scan_type, ptr @.str, ptr @scanning_hosts, ptr @async_scan_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @scsi_target_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @scsi_alloc_sdev.__key, ptr @.str.24, ptr @scsi_alloc_sdev.__key.25, ptr @.str.26, ptr @scsi_alloc_sdev.__key.27, ptr @.str.28, ptr @scsi_alloc_sdev.__key.29, ptr @.str.30, ptr @scsi_alloc_sdev.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_scsi_luns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_inq_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_scan_type to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scanning_hosts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_scan_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_complete_async_scans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_target_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_scan_host_selected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_target._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_sdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_sdev.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_sdev.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_sdev.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_sdev.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_alloc_sdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_probe_lun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_report_lun_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_sequential_lun_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_prep_async_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_finish_async_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @scsi_enable_async_suspend(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @scsi_scan_type, ptr noundef nonnull dereferenceable(5) @.str, i32 5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %is_prepared.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %1 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %bf.cast.not.i = icmp eq i16 %1, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i = or i16 %bf.load.i, 16384
  %2 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %return

return:                                           ; preds = %if.then.i, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_complete_async_scans() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @scanning_hosts, align 4
  %cmp.i.not35 = icmp eq ptr %0, @scanning_hosts
  br i1 %cmp.i.not35, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then3.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 68) #17
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then3, label %do.end.critedge

if.then3:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #13
  %2 = load volatile ptr, ptr @scanning_hosts, align 4
  %cmp.i.not = icmp eq ptr %2, @scanning_hosts
  br i1 %cmp.i.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.critedge:                                  ; preds = %if.end
  %shost = getelementptr inbounds %struct.async_scan_data, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %shost to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %shost, align 8
  %prev_finished = getelementptr inbounds %struct.async_scan_data, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %prev_finished to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prev_finished, align 4
  %wait.i = getelementptr inbounds %struct.async_scan_data, ptr %call7.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #13
  %5 = load volatile ptr, ptr @scanning_hosts, align 4
  %cmp.i29.not = icmp eq ptr %5, @scanning_hosts
  br i1 %cmp.i29.not, label %do.end.critedge.done_crit_edge, label %if.end9

do.end.critedge.done_crit_edge:                   ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end9:                                          ; preds = %do.end.critedge
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %6, ptr noundef nonnull @scanning_hosts) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %call7.i, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @scanning_hosts, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @async_scan_lock) #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  tail call void @wait_for_completion(ptr noundef %prev_finished) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #13
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i) #13
  br i1 %call.i.i31, label %if.end.i.i32, label %list_add_tail.exit.list_del.exit_crit_edge

list_add_tail.exit.list_del.exit_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i32:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i32, %list_add_tail.exit.list_del.exit_crit_edge
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = load volatile ptr, ptr @scanning_hosts, align 4
  %cmp.i33.not = icmp eq ptr %18, @scanning_hosts
  br i1 %cmp.i33.not, label %list_del.exit.done_crit_edge, label %if.then18

list_del.exit.done_crit_edge:                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.then18:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev_finished20 = getelementptr inbounds %struct.async_scan_data, ptr %18, i32 0, i32 2
  tail call void @complete(ptr noundef %prev_finished20) #13
  br label %done

done:                                             ; preds = %if.then18, %list_del.exit.done_crit_edge, %do.end.critedge.done_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @async_scan_lock) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_is_target_device(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @scsi_target_type
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_target_reap(ptr noundef %starget) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 13
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %do.body2, label %do.end5, !prof !188

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #13, !srcloc !189
  unreachable

do.end5:                                          ; preds = %entry
  %reap_ref.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reap_ref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !190
  tail call void @llvm.prefetch.p0(ptr %reap_ref.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %reap_ref.i, ptr %reap_ref.i, i32 1, ptr elementtype(i32) %reap_ref.i) #13, !srcloc !191
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.scsi_target_reap_ref_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !192

if.end5.i.i.i.i.i.scsi_target_reap_ref_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_target_reap_ref_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %reap_ref.i, i32 noundef 3) #13
  br label %scsi_target_reap_ref_put.exit

if.then.i.i:                                      ; preds = %do.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !193
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.then.i.i.i [
    i32 1, label %if.then.i.i.scsi_target_reap_ref_release.exit.i.i_crit_edge
    i32 4, label %if.then.i.i.scsi_target_reap_ref_release.exit.i.i_crit_edge7
  ]

if.then.i.i.scsi_target_reap_ref_release.exit.i.i_crit_edge7: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_target_reap_ref_release.exit.i.i

if.then.i.i.scsi_target_reap_ref_release.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_target_reap_ref_release.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i.i.i = getelementptr %struct.scsi_target, ptr %starget, i32 0, i32 3
  tail call void @transport_remove_device(ptr noundef %dev.i.i.i) #13
  tail call void @device_del(ptr noundef %dev.i.i.i) #13
  br label %scsi_target_reap_ref_release.exit.i.i

scsi_target_reap_ref_release.exit.i.i:            ; preds = %if.then.i.i.i, %if.then.i.i.scsi_target_reap_ref_release.exit.i.i_crit_edge, %if.then.i.i.scsi_target_reap_ref_release.exit.i.i_crit_edge7
  tail call fastcc void @scsi_target_destroy(ptr noundef %starget) #13
  br label %scsi_target_reap_ref_put.exit

scsi_target_reap_ref_put.exit:                    ; preds = %scsi_target_reap_ref_release.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.scsi_target_reap_ref_put.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_sanitize_inquiry_string(ptr nocapture noundef %s, i32 noundef %len) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp18 = icmp sgt i32 %len, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %terminated.021 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.addr.020 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %len, %entry.for.body_crit_edge ]
  %s.addr.019 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %s, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %s.addr.019 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s.addr.019, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  %spec.select = select i1 %cmp1, i32 1, i32 %terminated.021
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp ne i32 %spec.select, 0
  %2 = add i8 %1, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %2)
  %3 = icmp ult i8 %2, -95
  %or.cond = select i1 %tobool.not, i1 true, i1 %3
  br i1 %or.cond, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %s.addr.019 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %s.addr.019, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %len.addr.020, -1
  %incdec.ptr = getelementptr i8, ptr %s.addr.019, i32 1
  %cmp = icmp sgt i32 %len.addr.020, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__scsi_add_device(ptr noundef %shost, i32 noundef %channel, i32 noundef %id, i64 noundef %lun, ptr noundef %hostdata) #2 align 64 {
entry:
  %sdev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdev) #13
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -19 to ptr), ptr %sdev, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %call3 = tail call fastcc ptr @scsi_alloc_target(ptr noundef %shost_gendev, i32 noundef %channel, i32 noundef %id)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @scsi_autopm_get_target(ptr noundef nonnull %call3) #13
  %scan_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #13
  %async_scan = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %1 = ptrtoint ptr %async_scan to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %async_scan, align 8
  %2 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool7.not = icmp eq i16 %2, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 @scsi_complete_async_scans()
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 48
  %3 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shost_state.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %4, label %if.end10.if.end17_crit_edge [
    i32 5, label %if.end10.land.lhs.true_crit_edge
    i32 2, label %if.end10.land.lhs.true_crit_edge32
  ]

if.end10.land.lhs.true_crit_edge32:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end10.land.lhs.true_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end10.land.lhs.true_crit_edge, %if.end10.land.lhs.true_crit_edge32
  %call13 = tail call i32 @scsi_autopm_get_host(ptr noundef %shost) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %call3, i64 noundef %lun, ptr noundef null, ptr noundef nonnull %sdev, i32 noundef 1, ptr noundef %hostdata)
  call void @scsi_autopm_put_host(ptr noundef %shost) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  call void @mutex_unlock(ptr noundef %scan_mutex) #13
  call void @scsi_autopm_put_target(ptr noundef nonnull %call3) #13
  call void @scsi_target_reap(ptr noundef nonnull %call3)
  %dev = getelementptr inbounds %struct.scsi_target, ptr %call3, i32 0, i32 3
  call void @put_device(ptr noundef %dev) #13
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end17 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdev) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scsi_alloc_target(ptr noundef %parent, i32 noundef %channel, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %parent, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.if.end8.i.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.if.end8.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %while.end.i, %while.body.i.if.end8.i.i_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.if.end8.i.i_crit_edge ]
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 12
  %2 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transportt, align 4
  %target_size = getelementptr inbounds %struct.scsi_transport_template, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %target_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_size, align 4
  %add = add i32 %5, 1000
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #18
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %dev3 = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %dev3) #13
  %reap_ref = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %reap_ref, i32 noundef 4) #13
  %6 = ptrtoint ptr %reap_ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %reap_ref, align 8
  %call4 = tail call ptr @get_device(ptr noundef %parent) #13
  %parent5 = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %parent5, align 32
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 17
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev3, ptr noundef nonnull @.str.15, i32 noundef %9, i32 noundef %channel, i32 noundef %id) #13
  %bus = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @scsi_bus_type, ptr %bus, align 16
  %type = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @scsi_target_type, ptr %type, align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @scsi_scan_type, ptr noundef nonnull dereferenceable(5) @.str, i32 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.scsi_enable_async_suspend.exit_crit_edge

if.end.scsi_enable_async_suspend.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_enable_async_suspend.exit

if.end.i:                                         ; preds = %if.end
  %is_prepared.i.i = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 3, i32 12, i32 1
  %12 = ptrtoint ptr %is_prepared.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i.i = load i16, ptr %is_prepared.i.i, align 4
  %13 = and i16 %bf.load.i.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not.i.i = icmp eq i16 %13, 0
  br i1 %bf.cast.not.i.i, label %if.then.i.i97, label %if.end.i.scsi_enable_async_suspend.exit_crit_edge

if.end.i.scsi_enable_async_suspend.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_enable_async_suspend.exit

if.then.i.i97:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set.i.i = or i16 %bf.load.i.i, 16384
  %14 = ptrtoint ptr %is_prepared.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bf.set.i.i, ptr %is_prepared.i.i, align 4
  br label %scsi_enable_async_suspend.exit

scsi_enable_async_suspend.exit:                   ; preds = %if.then.i.i97, %if.end.i.scsi_enable_async_suspend.exit_crit_edge, %if.end.scsi_enable_async_suspend.exit_crit_edge
  %id7 = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %id, ptr %id7, align 64
  %channel8 = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %channel8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %channel, ptr %channel8, align 4
  %can_queue = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %can_queue, align 16
  %siblings = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %siblings, ptr %siblings, align 4
  %prev.i = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %siblings, ptr %prev.i, align 8
  %devices = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %devices, ptr %devices, align 4
  %prev.i98 = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %devices, ptr %prev.i98, align 16
  %state = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state, align 4
  %scsi_level = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %scsi_level to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %scsi_level, align 8
  %max_target_blocked = getelementptr inbounds %struct.scsi_target, ptr %call9.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %max_target_blocked to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %max_target_blocked, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 4
  br label %retry

retry:                                            ; preds = %if.end46, %scsi_enable_async_suspend.exit
  %25 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_lock, align 4
  %call13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #13
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %retry
  %dev.addr.0.i.i = phi ptr [ %parent, %retry ], [ %28, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.dev_to_shost.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

while.body.i.i.dev_to_shost.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %dev_to_shost.exit.i

dev_to_shost.exit.i:                              ; preds = %while.end.i.i, %while.body.i.i.dev_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.dev_to_shost.exit.i_crit_edge ]
  %__targets.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %__targets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn27.i = load ptr, ptr %__targets.i, align 4
  %cmp.not28.i = icmp eq ptr %.pn27.i, %__targets.i
  br i1 %cmp.not28.i, label %dev_to_shost.exit.i.if.end21_crit_edge, label %dev_to_shost.exit.i.for.body.i_crit_edge

dev_to_shost.exit.i.for.body.i_crit_edge:         ; preds = %dev_to_shost.exit.i
  br label %for.body.i

dev_to_shost.exit.i.if.end21_crit_edge:           ; preds = %dev_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dev_to_shost.exit.i.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn27.i, %dev_to_shost.exit.i.for.body.i_crit_edge ]
  %id2.i = getelementptr i8, ptr %.pn29.i, i32 956
  %30 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %id)
  %cmp3.i = icmp eq i32 %31, %id
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %channel4.i = getelementptr i8, ptr %.pn29.i, i32 952
  %32 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %channel)
  %cmp5.i = icmp eq i32 %33, %channel
  br i1 %cmp5.i, label %for.end.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %34 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i = load ptr, ptr %.pn29.i, align 4
  %cmp.not.i99 = icmp eq ptr %.pn.i, %__targets.i
  br i1 %cmp.not.i99, label %for.inc.i.if.end21_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.end.i:                                        ; preds = %land.lhs.true.i
  %starget.0.le.i = getelementptr i8, ptr %.pn29.i, i32 -4
  %tobool.not.i100 = icmp eq ptr %starget.0.le.i, null
  br i1 %tobool.not.i100, label %for.end.i.if.end21_crit_edge, label %found

for.end.i.if.end21_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %for.end.i.if.end21_crit_edge, %for.inc.i.if.end21_crit_edge, %dev_to_shost.exit.i.if.end21_crit_edge
  %__targets = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 1
  %prev.i101 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i101, align 4
  %call.i.i102 = call zeroext i1 @__list_add_valid(ptr noundef %siblings, ptr noundef %36, ptr noundef %__targets) #13
  br i1 %call.i.i102, label %if.end.i.i103, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i103:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %siblings, ptr %prev.i101, align 4
  %38 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %__targets, ptr %siblings, align 4
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev.i, align 8
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %siblings, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i103, %if.end21.list_add_tail.exit_crit_edge
  %41 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call13) #13
  call void @transport_setup_device(ptr noundef %dev3) #13
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 11
  %43 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hostt, align 8
  %target_alloc = getelementptr inbounds %struct.scsi_host_template, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %target_alloc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %target_alloc, align 4
  %tobool24.not = icmp eq ptr %46, null
  br i1 %tobool24.not, label %list_add_tail.exit.if.end39_crit_edge, label %if.then25

list_add_tail.exit.if.end39_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then25:                                        ; preds = %list_add_tail.exit
  %call28 = call i32 %46(ptr noundef nonnull %call9.i.i) #13
  %47 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call28, label %do.end36 [
    i32 0, label %if.then25.if.end39_crit_edge
    i32 -6, label %if.then25.if.end37_crit_edge
  ]

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then25.if.end39_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

do.end36:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.17, i32 noundef %call28) #18
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %if.then25.if.end37_crit_edge
  call fastcc void @scsi_target_destroy(ptr noundef nonnull %call9.i.i)
  br label %cleanup

if.end39:                                         ; preds = %if.then25.if.end39_crit_edge, %list_add_tail.exit.if.end39_crit_edge
  %call40 = call ptr @get_device(ptr noundef %dev3) #13
  br label %cleanup

found:                                            ; preds = %for.end.i
  %dev.i = getelementptr i8, ptr %.pn29.i, i32 20
  %call12.i = call ptr @get_device(ptr noundef %dev.i) #13
  %reap_ref41 = getelementptr i8, ptr %.pn29.i, i32 948
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %reap_ref41, i32 noundef 4) #13
  %48 = ptrtoint ptr %reap_ref41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %reap_ref41, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %found
  %50 = phi i32 [ %49, %found ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %50, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %reap_ref41, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %52 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %reap_ref41, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %54 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %reap_ref41, ptr %reap_ref41, i32 %53, i32 %add.i.i.i.i, ptr elementtype(i32) %reap_ref41) #13, !srcloc !194
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %53
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !192

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %55 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %56, 1
  %57 = or i32 %add5.i.i.i.i, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !192

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %reap_ref41, i32 noundef 0) #13
  %58 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %59 = phi i32 [ %56, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  %tobool12.i.i.i.i.not = icmp eq i32 %59, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %60 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %call13) #13
  br i1 %tobool12.i.i.i.i.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @put_device(ptr noundef %dev3) #13
  br label %cleanup

if.end46:                                         ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @put_device(ptr noundef %dev.i) #13
  call void @msleep(i32 noundef 1) #13
  br label %retry

cleanup:                                          ; preds = %if.then45, %if.end39, %if.end37, %do.end
  %retval.0 = phi ptr [ %starget.0.le.i, %if.then45 ], [ null, %if.end37 ], [ %call9.i.i, %if.end39 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_get_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_probe_and_add_lun(ptr noundef %starget, i64 noundef %lun, ptr noundef writeonly %bflagsp, ptr noundef writeonly %sdevp, i32 noundef %rescan, ptr noundef %hostdata) unnamed_addr #2 align 64 {
entry:
  %scsi_cmd.i = alloca [16 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  %resid.i = alloca i32, align 4
  %vend = alloca [9 x i8], align 1
  %mod = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %call1 = tail call ptr @scsi_device_lookup_by_target(ptr noundef %starget, i64 noundef %lun) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end23, label %if.then

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rescan)
  %cmp.not = icmp eq i32 %rescan, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %call1, i32 0, i32 69
  %4 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdev_state.i, align 4
  %6 = and i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %.not = icmp eq i32 %6, 1
  br i1 %.not, label %if.end23.thread, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %7 = load i32, ptr @scsi_logging_level, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %do.body.do.end12_crit_edge, label %do.body9, !prof !192

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12

do.body9:                                         ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.scsi_device, ptr %call1, i32 0, i32 55, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i200 = icmp eq ptr %10, null
  br i1 %tobool.not.i200, label %if.end.i, label %do.body9.dev_name.exit_crit_edge

do.body9.dev_name.exit_crit_edge:                 ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call1, i32 0, i32 55
  %11 = ptrtoint ptr %sdev_gendev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_gendev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body9.dev_name.exit_crit_edge
  %retval.0.i201 = phi ptr [ %12, %if.end.i ], [ %10, %do.body9.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %call1, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i201) #13
  br label %do.end12

do.end12:                                         ; preds = %dev_name.exit, %do.body.do.end12_crit_edge
  %tobool13.not = icmp eq ptr %sdevp, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %sdevp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1, ptr %sdevp, align 4
  br label %if.end15

if.else:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_device_put(ptr noundef nonnull %call1) #13
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %tobool16.not = icmp eq ptr %bflagsp, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %vendor = getelementptr inbounds %struct.scsi_device, ptr %call1, i32 0, i32 30
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vendor, align 4
  %model = getelementptr inbounds %struct.scsi_device, ptr %call1, i32 0, i32 31
  %16 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %model, align 8
  %call18 = tail call i64 @scsi_get_device_flags(ptr noundef nonnull %call1, ptr noundef %15, ptr noundef %17) #13
  %18 = ptrtoint ptr %bflagsp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call18, ptr %bflagsp, align 8
  br label %cleanup

if.end23.thread:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_device_put(ptr noundef nonnull %call1) #13
  br label %if.end26

if.end23:                                         ; preds = %dev_to_shost.exit
  %call22 = tail call fastcc ptr @scsi_alloc_sdev(ptr noundef %starget, i64 noundef %lun, ptr noundef %hostdata)
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end23.if.end26_crit_edge, %if.end23.thread
  %sdev.0267 = phi ptr [ %call1, %if.end23.thread ], [ %call22, %if.end23.if.end26_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 256) #17
  %tobool28.not = icmp eq ptr %call7.i, null
  br i1 %tobool28.not, label %if.end26.if.else148_crit_edge, label %if.end30

if.end26.if.else148_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else148

if.end30:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  %20 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 4
  %21 = call ptr @memset(ptr %scsi_cmd.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #13
  %22 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 3
  %25 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %sshdr.i, align 8
  %inquiry_len.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 27
  %26 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %inquiry_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i202 = icmp eq i8 %27, 0
  %narrow.i = select i1 %tobool.not.i202, i8 36, i8 %27
  %spec.select.i = zext i8 %narrow.i to i32
  %arrayidx72.i = getelementptr i8, ptr %call7.i, i32 8
  %arrayidx73.i = getelementptr i8, ptr %call7.i, i32 16
  %arrayidx74.i = getelementptr i8, ptr %call7.i, i32 32
  %arrayidx75.i = getelementptr i8, ptr %call7.i, i32 4
  %28 = getelementptr inbounds i8, ptr %scsi_cmd.i, i32 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call7.i, i32 9
  %incdec.ptr.i.1.i = getelementptr i8, ptr %call7.i, i32 10
  %incdec.ptr.i.2.i = getelementptr i8, ptr %call7.i, i32 11
  %incdec.ptr.i.3.i = getelementptr i8, ptr %call7.i, i32 12
  %incdec.ptr.i.4.i = getelementptr i8, ptr %call7.i, i32 13
  %incdec.ptr.i.5.i = getelementptr i8, ptr %call7.i, i32 14
  %incdec.ptr.i.6.i = getelementptr i8, ptr %call7.i, i32 15
  %incdec.ptr.i30.i = getelementptr i8, ptr %call7.i, i32 33
  %incdec.ptr.i30.1.i = getelementptr i8, ptr %call7.i, i32 34
  %incdec.ptr.i30.2.i = getelementptr i8, ptr %call7.i, i32 35
  br label %next_pass.i

next_pass.i:                                      ; preds = %next_pass.i.backedge, %if.end30
  %try_inquiry_len.0.i = phi i32 [ %spec.select.i, %if.end30 ], [ %try_inquiry_len.0.i.be, %next_pass.i.backedge ]
  %cmp106.i = phi i1 [ false, %if.end30 ], [ %cmp69.i, %next_pass.i.backedge ]
  %cmp85.i = phi i1 [ true, %if.end30 ], [ false, %next_pass.i.backedge ]
  %pass.0.i = phi i32 [ 1, %if.end30 ], [ %pass.0.i.be, %next_pass.i.backedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %29 = load i32, ptr @scsi_logging_level, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %next_pass.i.do.end8.i_crit_edge, label %do.body6.i, !prof !192

next_pass.i.do.end8.i_crit_edge:                  ; preds = %next_pass.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

do.body6.i:                                       ; preds = %next_pass.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef %pass.0.i, i32 noundef %try_inquiry_len.0.i) #13
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.body6.i, %next_pass.i.do.end8.i_crit_edge
  %conv11.i = trunc i32 %try_inquiry_len.0.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end8.i
  %count.041.i = phi i32 [ 0, %do.end8.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resid.i) #13
  %31 = ptrtoint ptr %resid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %resid.i, align 4, !annotation !195
  %32 = call ptr @memset(ptr %28, i32 0, i32 5)
  %33 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 18, ptr %scsi_cmd.i, align 1
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv11.i, ptr %20, align 1
  %35 = call ptr @memset(ptr %call7.i, i32 0, i32 %try_inquiry_len.0.i)
  %36 = load i32, ptr @scsi_inq_timeout, align 4
  %mul.i = mul i32 %36, 100
  %add.i = add i32 %mul.i, 50
  %call.i.i = call i32 @__scsi_execute(ptr noundef %sdev.0267, ptr noundef nonnull %scsi_cmd.i, i32 noundef 2, ptr noundef %call7.i, i32 noundef %try_inquiry_len.0.i, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef %add.i, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %resid.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %37 = load i32, ptr @scsi_logging_level, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp17.not.i = icmp eq i32 %38, 0
  br i1 %cmp17.not.i, label %for.body.i.do.end33.i_crit_edge, label %do.body26.i, !prof !192

for.body.i.do.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33.i

do.body26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.not.i = icmp eq i32 %call.i.i, 0
  %cond28.i = select i1 %tobool27.not.i, ptr @.str.39, ptr @.str.38
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond28.i, i32 noundef %call.i.i) #13
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.body26.i, %for.body.i.do.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp34.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %do.end33.i
  %and.i.i = and i32 %call.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp1.i.not.i = icmp eq i32 %and.i.i, 2
  br i1 %cmp1.i.not.i, label %land.lhs.true.i, label %if.then36.i.cleanup.i_crit_edge

if.then36.i.cleanup.i_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.then36.i
  %39 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sshdr.i, align 8
  %41 = and i8 %40, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %41)
  %cmp.i.i = icmp eq i8 %41, 112
  br i1 %cmp.i.i, label %if.then41.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then41.i:                                      ; preds = %land.lhs.true.i
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %43)
  %cmp43.i = icmp eq i8 %43, 6
  br i1 %cmp43.i, label %land.lhs.true45.i, label %if.then41.i.cleanup.i_crit_edge

if.then41.i.cleanup.i_crit_edge:                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

land.lhs.true45.i:                                ; preds = %if.then41.i
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %23, align 2
  %46 = and i8 %45, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %46)
  %switch2.i = icmp eq i8 %46, 40
  br i1 %switch2.i, label %land.lhs.true53.i, label %land.lhs.true45.i.cleanup.i_crit_edge

land.lhs.true45.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

land.lhs.true53.i:                                ; preds = %land.lhs.true45.i
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp55.i = icmp eq i8 %48, 0
  br i1 %cmp55.i, label %land.lhs.true53.i.for.inc.i_crit_edge, label %land.lhs.true53.i.cleanup.i_crit_edge

land.lhs.true53.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

land.lhs.true53.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.else.i:                                        ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp60.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp60.i, label %if.then62.i, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then62.i:                                      ; preds = %if.else.i
  %49 = ptrtoint ptr %resid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %resid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %try_inquiry_len.0.i)
  %cmp63.i = icmp eq i32 %50, %try_inquiry_len.0.i
  br i1 %cmp63.i, label %if.then62.i.for.inc.i_crit_edge, label %if.then62.i.cleanup.i_crit_edge

if.then62.i.cleanup.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then62.i.for.inc.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.then62.i.cleanup.i_crit_edge, %if.else.i.cleanup.i_crit_edge, %land.lhs.true53.i.cleanup.i_crit_edge, %land.lhs.true45.i.cleanup.i_crit_edge, %if.then41.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge, %if.then36.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resid.i) #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then62.i.for.inc.i_crit_edge, %land.lhs.true53.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resid.i) #13
  %inc.i = add nuw nsw i32 %count.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp69.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp69.i, label %for.body.i.preheader.i, label %if.else105.i

for.body.i.preheader.i:                           ; preds = %for.end.i
  %51 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx72.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp1.i4.i = icmp eq i8 %52, 0
  %53 = add i8 %52, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %53)
  %54 = icmp ult i8 %53, -95
  br i1 %54, label %if.then10.i.i, label %for.body.i.preheader.i.for.inc.i.i_crit_edge

for.body.i.preheader.i.for.inc.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 32, ptr %arrayidx72.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then10.i.i, %for.body.i.preheader.i.for.inc.i.i_crit_edge
  %56 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp1.i4.1.i = icmp eq i8 %57, 0
  %narrow46.i = select i1 %cmp1.i4.1.i, i1 true, i1 %cmp1.i4.i
  %58 = add i8 %57, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %58)
  %59 = icmp ult i8 %58, -95
  %or.cond.i.1.i = or i1 %narrow46.i, %59
  br i1 %or.cond.i.1.i, label %if.then10.i.1.i, label %for.inc.i.i.for.inc.i.1.i_crit_edge

for.inc.i.i.for.inc.i.1.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.1.i

if.then10.i.1.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 32, ptr %incdec.ptr.i.i, align 1
  br label %for.inc.i.1.i

for.inc.i.1.i:                                    ; preds = %if.then10.i.1.i, %for.inc.i.i.for.inc.i.1.i_crit_edge
  %61 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr.i.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp1.i4.2.i = icmp eq i8 %62, 0
  %narrow47.i = select i1 %cmp1.i4.2.i, i1 true, i1 %narrow46.i
  %63 = add i8 %62, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %63)
  %64 = icmp ult i8 %63, -95
  %or.cond.i.2.i = or i1 %narrow47.i, %64
  br i1 %or.cond.i.2.i, label %if.then10.i.2.i, label %for.inc.i.1.i.for.inc.i.2.i_crit_edge

for.inc.i.1.i.for.inc.i.2.i_crit_edge:            ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.2.i

if.then10.i.2.i:                                  ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 32, ptr %incdec.ptr.i.1.i, align 2
  br label %for.inc.i.2.i

for.inc.i.2.i:                                    ; preds = %if.then10.i.2.i, %for.inc.i.1.i.for.inc.i.2.i_crit_edge
  %66 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp1.i4.3.i = icmp eq i8 %67, 0
  %narrow48.i = select i1 %cmp1.i4.3.i, i1 true, i1 %narrow47.i
  %68 = add i8 %67, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %68)
  %69 = icmp ult i8 %68, -95
  %or.cond.i.3.i = or i1 %narrow48.i, %69
  br i1 %or.cond.i.3.i, label %if.then10.i.3.i, label %for.inc.i.2.i.for.inc.i.3.i_crit_edge

for.inc.i.2.i.for.inc.i.3.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.3.i

if.then10.i.3.i:                                  ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 32, ptr %incdec.ptr.i.2.i, align 1
  br label %for.inc.i.3.i

for.inc.i.3.i:                                    ; preds = %if.then10.i.3.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge
  %71 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp1.i4.4.i = icmp eq i8 %72, 0
  %narrow49.i = select i1 %cmp1.i4.4.i, i1 true, i1 %narrow48.i
  %73 = add i8 %72, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %73)
  %74 = icmp ult i8 %73, -95
  %or.cond.i.4.i = or i1 %narrow49.i, %74
  br i1 %or.cond.i.4.i, label %if.then10.i.4.i, label %for.inc.i.3.i.for.inc.i.4.i_crit_edge

for.inc.i.3.i.for.inc.i.4.i_crit_edge:            ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.4.i

if.then10.i.4.i:                                  ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 32, ptr %incdec.ptr.i.3.i, align 4
  br label %for.inc.i.4.i

for.inc.i.4.i:                                    ; preds = %if.then10.i.4.i, %for.inc.i.3.i.for.inc.i.4.i_crit_edge
  %76 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr.i.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp1.i4.5.i = icmp eq i8 %77, 0
  %narrow50.i = select i1 %cmp1.i4.5.i, i1 true, i1 %narrow49.i
  %78 = add i8 %77, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %78)
  %79 = icmp ult i8 %78, -95
  %or.cond.i.5.i = or i1 %narrow50.i, %79
  br i1 %or.cond.i.5.i, label %if.then10.i.5.i, label %for.inc.i.4.i.for.inc.i.5.i_crit_edge

for.inc.i.4.i.for.inc.i.5.i_crit_edge:            ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.5.i

if.then10.i.5.i:                                  ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 32, ptr %incdec.ptr.i.4.i, align 1
  br label %for.inc.i.5.i

for.inc.i.5.i:                                    ; preds = %if.then10.i.5.i, %for.inc.i.4.i.for.inc.i.5.i_crit_edge
  %81 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr.i.5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp1.i4.6.i = icmp eq i8 %82, 0
  %narrow51.i = select i1 %cmp1.i4.6.i, i1 true, i1 %narrow50.i
  %83 = add i8 %82, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %83)
  %84 = icmp ult i8 %83, -95
  %or.cond.i.6.i = or i1 %narrow51.i, %84
  br i1 %or.cond.i.6.i, label %if.then10.i.6.i, label %for.inc.i.5.i.for.inc.i.6.i_crit_edge

for.inc.i.5.i.for.inc.i.6.i_crit_edge:            ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.6.i

if.then10.i.6.i:                                  ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 32, ptr %incdec.ptr.i.5.i, align 2
  br label %for.inc.i.6.i

for.inc.i.6.i:                                    ; preds = %if.then10.i.6.i, %for.inc.i.5.i.for.inc.i.6.i_crit_edge
  %86 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %incdec.ptr.i.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp1.i4.7.i = icmp eq i8 %87, 0
  %narrow52.i = select i1 %cmp1.i4.7.i, i1 true, i1 %narrow51.i
  %88 = add i8 %87, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %88)
  %89 = icmp ult i8 %88, -95
  %or.cond.i.7.i = or i1 %narrow52.i, %89
  br i1 %or.cond.i.7.i, label %if.then10.i.7.i, label %for.inc.i.6.i.for.body.i13.i.preheader_crit_edge

for.inc.i.6.i.for.body.i13.i.preheader_crit_edge: ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i13.i.preheader

if.then10.i.7.i:                                  ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 32, ptr %incdec.ptr.i.6.i, align 1
  br label %for.body.i13.i.preheader

for.body.i13.i.preheader:                         ; preds = %if.then10.i.7.i, %for.inc.i.6.i.for.body.i13.i.preheader_crit_edge
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %for.inc.i18.i.for.body.i13.i_crit_edge, %for.body.i13.i.preheader
  %terminated.021.i6.i = phi i32 [ %spec.select.i10.i, %for.inc.i18.i.for.body.i13.i_crit_edge ], [ 0, %for.body.i13.i.preheader ]
  %len.addr.020.i7.i = phi i32 [ %dec.i15.i, %for.inc.i18.i.for.body.i13.i_crit_edge ], [ 16, %for.body.i13.i.preheader ]
  %s.addr.019.i8.i = phi ptr [ %incdec.ptr.i16.i, %for.inc.i18.i.for.body.i13.i_crit_edge ], [ %arrayidx73.i, %for.body.i13.i.preheader ]
  %91 = ptrtoint ptr %s.addr.019.i8.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %s.addr.019.i8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp1.i9.i = icmp eq i8 %92, 0
  %spec.select.i10.i = select i1 %cmp1.i9.i, i32 1, i32 %terminated.021.i6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i10.i)
  %tobool.not.i11.i = icmp ne i32 %spec.select.i10.i, 0
  %93 = add i8 %92, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %93)
  %94 = icmp ult i8 %93, -95
  %or.cond.i12.i = select i1 %tobool.not.i11.i, i1 true, i1 %94
  br i1 %or.cond.i12.i, label %if.then10.i14.i, label %for.body.i13.i.for.inc.i18.i_crit_edge

for.body.i13.i.for.inc.i18.i_crit_edge:           ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i18.i

if.then10.i14.i:                                  ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %s.addr.019.i8.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 32, ptr %s.addr.019.i8.i, align 1
  br label %for.inc.i18.i

for.inc.i18.i:                                    ; preds = %if.then10.i14.i, %for.body.i13.i.for.inc.i18.i_crit_edge
  %dec.i15.i = add nsw i32 %len.addr.020.i7.i, -1
  %incdec.ptr.i16.i = getelementptr i8, ptr %s.addr.019.i8.i, i32 1
  %cmp.i17.i = icmp ugt i32 %len.addr.020.i7.i, 1
  br i1 %cmp.i17.i, label %for.inc.i18.i.for.body.i13.i_crit_edge, label %for.body.i27.preheader.i

for.inc.i18.i.for.body.i13.i_crit_edge:           ; preds = %for.inc.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i13.i

for.body.i27.preheader.i:                         ; preds = %for.inc.i18.i
  %96 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx74.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp1.i23.i = icmp eq i8 %97, 0
  %98 = add i8 %97, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %98)
  %99 = icmp ult i8 %98, -95
  br i1 %99, label %if.then10.i28.i, label %for.body.i27.preheader.i.for.inc.i32.i_crit_edge

for.body.i27.preheader.i.for.inc.i32.i_crit_edge: ; preds = %for.body.i27.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i32.i

if.then10.i28.i:                                  ; preds = %for.body.i27.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 32, ptr %arrayidx74.i, align 8
  br label %for.inc.i32.i

for.inc.i32.i:                                    ; preds = %if.then10.i28.i, %for.body.i27.preheader.i.for.inc.i32.i_crit_edge
  %101 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %incdec.ptr.i30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp1.i23.1.i = icmp eq i8 %102, 0
  %narrow53.i = select i1 %cmp1.i23.1.i, i1 true, i1 %cmp1.i23.i
  %103 = add i8 %102, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %103)
  %104 = icmp ult i8 %103, -95
  %or.cond.i26.1.i = or i1 %narrow53.i, %104
  br i1 %or.cond.i26.1.i, label %if.then10.i28.1.i, label %for.inc.i32.i.for.inc.i32.1.i_crit_edge

for.inc.i32.i.for.inc.i32.1.i_crit_edge:          ; preds = %for.inc.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i32.1.i

if.then10.i28.1.i:                                ; preds = %for.inc.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 32, ptr %incdec.ptr.i30.i, align 1
  br label %for.inc.i32.1.i

for.inc.i32.1.i:                                  ; preds = %if.then10.i28.1.i, %for.inc.i32.i.for.inc.i32.1.i_crit_edge
  %106 = ptrtoint ptr %incdec.ptr.i30.1.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %incdec.ptr.i30.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp1.i23.2.i = icmp eq i8 %107, 0
  %narrow54.i = select i1 %cmp1.i23.2.i, i1 true, i1 %narrow53.i
  %108 = add i8 %107, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %108)
  %109 = icmp ult i8 %108, -95
  %or.cond.i26.2.i = or i1 %narrow54.i, %109
  br i1 %or.cond.i26.2.i, label %if.then10.i28.2.i, label %for.inc.i32.1.i.for.inc.i32.2.i_crit_edge

for.inc.i32.1.i.for.inc.i32.2.i_crit_edge:        ; preds = %for.inc.i32.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i32.2.i

if.then10.i28.2.i:                                ; preds = %for.inc.i32.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %incdec.ptr.i30.1.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 32, ptr %incdec.ptr.i30.1.i, align 2
  br label %for.inc.i32.2.i

for.inc.i32.2.i:                                  ; preds = %if.then10.i28.2.i, %for.inc.i32.1.i.for.inc.i32.2.i_crit_edge
  %111 = ptrtoint ptr %incdec.ptr.i30.2.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %incdec.ptr.i30.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp1.i23.3.i = icmp eq i8 %112, 0
  %narrow55.i = select i1 %cmp1.i23.3.i, i1 true, i1 %narrow54.i
  %113 = add i8 %112, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %113)
  %114 = icmp ult i8 %113, -95
  %or.cond.i26.3.i = or i1 %narrow55.i, %114
  br i1 %or.cond.i26.3.i, label %if.then10.i28.3.i, label %for.inc.i32.2.i.for.inc.i32.3.i_crit_edge

for.inc.i32.2.i.for.inc.i32.3.i_crit_edge:        ; preds = %for.inc.i32.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i32.3.i

if.then10.i28.3.i:                                ; preds = %for.inc.i32.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %incdec.ptr.i30.2.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 32, ptr %incdec.ptr.i30.2.i, align 1
  br label %for.inc.i32.3.i

for.inc.i32.3.i:                                  ; preds = %if.then10.i28.3.i, %for.inc.i32.2.i.for.inc.i32.3.i_crit_edge
  %116 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx75.i, align 4
  %conv76.i = zext i8 %117 to i32
  %add77.i = add nuw nsw i32 %conv76.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %117)
  %cmp78.i = icmp ugt i8 %117, -6
  %spec.select1.i = select i1 %cmp78.i, i32 %spec.select.i, i32 %add77.i
  %call84.i = call i64 @scsi_get_device_flags(ptr noundef %sdev.0267, ptr noundef %arrayidx72.i, ptr noundef %arrayidx73.i) #13
  br i1 %cmp85.i, label %if.then87.i, label %for.inc.i32.3.i.if.end113.i_crit_edge

for.inc.i32.3.i.if.end113.i_crit_edge:            ; preds = %for.inc.i32.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113.i

if.then87.i:                                      ; preds = %for.inc.i32.3.i
  %and88.i = and i64 %call84.i, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and88.i)
  %tobool89.not.i = icmp eq i64 %and88.i, 0
  br i1 %tobool89.not.i, label %if.else91.i, label %if.then87.i.if.end99.i_crit_edge

if.then87.i.if.end99.i_crit_edge:                 ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

if.else91.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #15
  %118 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %inquiry_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool93.not.i = icmp eq i8 %119, 0
  %conv96.i = zext i8 %119 to i32
  %spec.select3.i = select i1 %tobool93.not.i, i32 %spec.select1.i, i32 %conv96.i
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else91.i, %if.then87.i.if.end99.i_crit_edge
  %next_inquiry_len.0.i = phi i32 [ 36, %if.then87.i.if.end99.i_crit_edge ], [ %spec.select3.i, %if.else91.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %next_inquiry_len.0.i, i32 %try_inquiry_len.0.i)
  %cmp100.i = icmp ugt i32 %next_inquiry_len.0.i, %try_inquiry_len.0.i
  br i1 %cmp100.i, label %if.end99.i.next_pass.i.backedge_crit_edge, label %if.end99.i.if.end113.i_crit_edge

if.end99.i.if.end113.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end113.i

if.end99.i.next_pass.i.backedge_crit_edge:        ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_pass.i.backedge

if.else105.i:                                     ; preds = %for.end.i
  br i1 %cmp106.i, label %if.then108.i, label %scsi_probe_lun.exit

if.then108.i:                                     ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef %try_inquiry_len.0.i) #13
  br label %next_pass.i.backedge

next_pass.i.backedge:                             ; preds = %if.then108.i, %if.end99.i.next_pass.i.backedge_crit_edge
  %try_inquiry_len.0.i.be = phi i32 [ %spec.select.i, %if.then108.i ], [ %next_inquiry_len.0.i, %if.end99.i.next_pass.i.backedge_crit_edge ]
  %pass.0.i.be = phi i32 [ 3, %if.then108.i ], [ 2, %if.end99.i.next_pass.i.backedge_crit_edge ]
  br label %next_pass.i

if.end113.i:                                      ; preds = %if.end99.i.if.end113.i_crit_edge, %for.inc.i32.3.i.if.end113.i_crit_edge
  %120 = call i32 @llvm.smin.i32(i32 %try_inquiry_len.0.i, i32 %spec.select1.i) #13
  %conv120.i = trunc i32 %120 to i8
  %121 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv120.i, ptr %inquiry_len.i, align 4
  %conv123.i = and i32 %120, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %conv123.i)
  %cmp124.i = icmp ult i32 %conv123.i, 36
  br i1 %cmp124.i, label %if.then126.i, label %if.end113.i.if.end141.i_crit_edge

if.end113.i.if.end141.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141.i

if.then126.i:                                     ; preds = %if.end113.i
  %122 = ptrtoint ptr %sdev.0267 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sdev.0267, align 8
  %short_inquiry.i = getelementptr inbounds %struct.Scsi_Host, ptr %123, i32 0, i32 36
  %124 = ptrtoint ptr %short_inquiry.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load.i = load i16, ptr %short_inquiry.i, align 8
  %125 = and i16 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool127.not.i = icmp eq i16 %125, 0
  br i1 %tobool127.not.i, label %do.end131.i, label %if.then126.i.if.end139.i_crit_edge

if.then126.i.if.end139.i_crit_edge:               ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139.i

do.end131.i:                                      ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #15
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %123, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.41, i32 noundef %conv123.i) #18
  %126 = ptrtoint ptr %sdev.0267 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sdev.0267, align 8
  %short_inquiry136.i = getelementptr inbounds %struct.Scsi_Host, ptr %127, i32 0, i32 36
  %128 = ptrtoint ptr %short_inquiry136.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load137.i = load i16, ptr %short_inquiry136.i, align 8
  %bf.set.i = or i16 %bf.load137.i, 64
  store i16 %bf.set.i, ptr %short_inquiry136.i, align 8
  br label %if.end139.i

if.end139.i:                                      ; preds = %do.end131.i, %if.then126.i.if.end139.i_crit_edge
  %129 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 36, ptr %inquiry_len.i, align 4
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.end139.i, %if.end113.i.if.end141.i_crit_edge
  %arrayidx142.i = getelementptr i8, ptr %call7.i, i32 2
  %130 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx142.i, align 2
  %132 = and i8 %131, 7
  %scsi_level.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 23
  %133 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp148.i = icmp ugt i8 %132, 1
  br i1 %cmp148.i, label %if.end141.i.if.then161.i_crit_edge, label %lor.lhs.false150.i

if.end141.i.if.then161.i_crit_edge:               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161.i

lor.lhs.false150.i:                               ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp153.i = icmp eq i8 %132, 1
  br i1 %cmp153.i, label %land.lhs.true155.i, label %lor.lhs.false150.i.if.end164.i_crit_edge

lor.lhs.false150.i.if.end164.i_crit_edge:         ; preds = %lor.lhs.false150.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164.i

land.lhs.true155.i:                               ; preds = %lor.lhs.false150.i
  %arrayidx156.i = getelementptr i8, ptr %call7.i, i32 3
  %134 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx156.i, align 1
  %136 = and i8 %135, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %136)
  %cmp159.i = icmp eq i8 %136, 1
  br i1 %cmp159.i, label %land.lhs.true155.i.if.then161.i_crit_edge, label %land.lhs.true155.i.if.end164.i_crit_edge

land.lhs.true155.i.if.end164.i_crit_edge:         ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164.i

land.lhs.true155.i.if.then161.i_crit_edge:        ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161.i

if.then161.i:                                     ; preds = %land.lhs.true155.i.if.then161.i_crit_edge, %if.end141.i.if.then161.i_crit_edge
  %inc163.i = add nuw nsw i8 %132, 1
  %137 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %inc163.i, ptr %scsi_level.i, align 1
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then161.i, %land.lhs.true155.i.if.end164.i_crit_edge, %lor.lhs.false150.i.if.end164.i_crit_edge
  %138 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %scsi_level.i, align 1
  %sdev_target.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 37
  %140 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sdev_target.i, align 8
  %scsi_level166.i = getelementptr inbounds %struct.scsi_target, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %scsi_level166.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %139, ptr %scsi_level166.i, align 8
  %lun_in_cdb.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 41
  %143 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 8)
  %bf.load167.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.clear168.i = and i64 %bf.load167.i, -524289
  store i64 %bf.clear168.i, ptr %lun_in_cdb.i, align 4
  %144 = load i8, ptr %scsi_level.i, align 1
  %145 = add i8 %144, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %145)
  %146 = icmp ult i8 %145, -3
  br i1 %146, label %if.end164.i.if.end34_crit_edge, label %land.lhs.true179.i

if.end164.i.if.end34_crit_edge:                   ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.lhs.true179.i:                               ; preds = %if.end164.i
  %147 = ptrtoint ptr %sdev.0267 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sdev.0267, align 8
  %no_scsi2_lun_in_cdb.i = getelementptr inbounds %struct.Scsi_Host, ptr %148, i32 0, i32 36
  %149 = ptrtoint ptr %no_scsi2_lun_in_cdb.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load181.i = load i16, ptr %no_scsi2_lun_in_cdb.i, align 8
  %150 = and i16 %bf.load181.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool185.not.i = icmp eq i16 %150, 0
  br i1 %tobool185.not.i, label %if.then186.i, label %land.lhs.true179.i.if.end34_crit_edge

land.lhs.true179.i.if.end34_crit_edge:            ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then186.i:                                     ; preds = %land.lhs.true179.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set190.i = or i64 %bf.load167.i, 524288
  %151 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_storeN_noabort(i32 %151, i32 8)
  store i64 %bf.set190.i, ptr %lun_in_cdb.i, align 4
  br label %if.end34

scsi_probe_lun.exit:                              ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  br label %out_free_sdev.thread278

if.end34:                                         ; preds = %if.then186.i, %land.lhs.true179.i.if.end34_crit_edge, %if.end164.i.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  %tobool35.not = icmp eq ptr %bflagsp, null
  br i1 %tobool35.not, label %if.end34.if.end37_crit_edge, label %if.then36

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %152 = ptrtoint ptr %bflagsp to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %call84.i, ptr %bflagsp, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end34.if.end37_crit_edge
  %153 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %154 to i32
  %155 = lshr i32 %conv, 5
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %155, label %lor.lhs.false91 [
    i32 3, label %do.body42
    i32 1, label %land.lhs.true98
  ]

do.body42:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %157 = load i32, ptr @scsi_logging_level, align 4
  %158 = and i32 %157, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %158)
  %cmp45 = icmp ugt i32 %158, 128
  br i1 %cmp45, label %do.body54, label %do.body42.do.end59_crit_edge, !prof !188

do.body42.do.end59_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59

do.body54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.21) #13
  br label %do.end59

do.end59:                                         ; preds = %do.body54, %do.body42.do.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lun)
  %cmp60 = icmp eq i64 %lun, 0
  br i1 %cmp60, label %do.body63, label %do.end59.out_free_sdev.thread278_crit_edge

do.end59.out_free_sdev.thread278_crit_edge:       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_sdev.thread278

do.body63:                                        ; preds = %do.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %159 = load i32, ptr @scsi_logging_level, align 4
  %160 = and i32 %159, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp66.not = icmp eq i32 %160, 0
  br i1 %cmp66.not, label %do.body63.out_free_sdev.thread278_crit_edge, label %do.body75, !prof !192

do.body63.out_free_sdev.thread278_crit_edge:      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_sdev.thread278

do.body75:                                        ; preds = %do.body63
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %vend) #13
  %161 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 1
  %162 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 2
  %163 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 3
  %164 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 4
  %165 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 5
  %166 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 6
  %167 = getelementptr inbounds [9 x i8], ptr %vend, i32 0, i32 7
  %168 = call ptr @memset(ptr %vend, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %mod) #13
  %169 = call ptr @memset(ptr %mod, i32 255, i32 17)
  %170 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx75.i, align 4
  %conv.i = zext i8 %171 to i32
  %add2.i = add nuw nsw i32 %conv.i, 5
  %umax = call i32 @llvm.umax.i32(i32 %add2.i, i32 8)
  %172 = add nsw i32 %umax, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %exitcond.not = icmp eq i32 %172, 0
  br i1 %exitcond.not, label %do.body75.scsi_inq_str.exit_crit_edge, label %for.body.i206

do.body75.scsi_inq_str.exit_crit_edge:            ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206:                                    ; preds = %do.body75
  %173 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx72.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %174)
  %cmp8.i = icmp ugt i8 %174, 32
  %175 = call i8 @llvm.umax.i8(i8 %174, i8 32) #13
  %add13.term.032.i = zext i1 %cmp8.i to i32
  %176 = ptrtoint ptr %vend to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %vend, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %172)
  %exitcond.1.not = icmp eq i32 %172, 1
  br i1 %exitcond.1.not, label %for.body.i206.scsi_inq_str.exit_crit_edge, label %for.body.i206.1

for.body.i206.scsi_inq_str.exit_crit_edge:        ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.1:                                  ; preds = %for.body.i206
  %177 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %incdec.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %178)
  %cmp8.i.1 = icmp ugt i8 %178, 32
  %179 = call i8 @llvm.umax.i8(i8 %178, i8 32) #13
  %add13.term.032.i.1 = select i1 %cmp8.i.1, i32 2, i32 %add13.term.032.i
  %180 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %161, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %172)
  %exitcond.2.not = icmp eq i32 %172, 2
  br i1 %exitcond.2.not, label %for.body.i206.1.scsi_inq_str.exit_crit_edge, label %for.body.i206.2

for.body.i206.1.scsi_inq_str.exit_crit_edge:      ; preds = %for.body.i206.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.2:                                  ; preds = %for.body.i206.1
  %181 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %incdec.ptr.i.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %182)
  %cmp8.i.2 = icmp ugt i8 %182, 32
  %183 = call i8 @llvm.umax.i8(i8 %182, i8 32) #13
  %add13.term.032.i.2 = select i1 %cmp8.i.2, i32 3, i32 %add13.term.032.i.1
  %184 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %162, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %172)
  %exitcond.3.not = icmp eq i32 %172, 3
  br i1 %exitcond.3.not, label %for.body.i206.2.scsi_inq_str.exit_crit_edge, label %for.body.i206.3

for.body.i206.2.scsi_inq_str.exit_crit_edge:      ; preds = %for.body.i206.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.3:                                  ; preds = %for.body.i206.2
  %185 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %incdec.ptr.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %186)
  %cmp8.i.3 = icmp ugt i8 %186, 32
  %187 = call i8 @llvm.umax.i8(i8 %186, i8 32) #13
  %add13.term.032.i.3 = select i1 %cmp8.i.3, i32 4, i32 %add13.term.032.i.2
  %188 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %163, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %172)
  %exitcond.4.not = icmp eq i32 %172, 4
  br i1 %exitcond.4.not, label %for.body.i206.3.scsi_inq_str.exit_crit_edge, label %for.body.i206.4

for.body.i206.3.scsi_inq_str.exit_crit_edge:      ; preds = %for.body.i206.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.4:                                  ; preds = %for.body.i206.3
  %189 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %incdec.ptr.i.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %190)
  %cmp8.i.4 = icmp ugt i8 %190, 32
  %191 = call i8 @llvm.umax.i8(i8 %190, i8 32) #13
  %add13.term.032.i.4 = select i1 %cmp8.i.4, i32 5, i32 %add13.term.032.i.3
  %192 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %164, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %172)
  %exitcond.5.not = icmp eq i32 %172, 5
  br i1 %exitcond.5.not, label %for.body.i206.4.scsi_inq_str.exit_crit_edge, label %for.body.i206.5

for.body.i206.4.scsi_inq_str.exit_crit_edge:      ; preds = %for.body.i206.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.5:                                  ; preds = %for.body.i206.4
  %193 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %incdec.ptr.i.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %194)
  %cmp8.i.5 = icmp ugt i8 %194, 32
  %195 = call i8 @llvm.umax.i8(i8 %194, i8 32) #13
  %add13.term.032.i.5 = select i1 %cmp8.i.5, i32 6, i32 %add13.term.032.i.4
  %196 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %165, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %172)
  %exitcond.6.not = icmp eq i32 %172, 6
  br i1 %exitcond.6.not, label %for.body.i206.5.scsi_inq_str.exit_crit_edge, label %for.body.i206.6

for.body.i206.5.scsi_inq_str.exit_crit_edge:      ; preds = %for.body.i206.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.6:                                  ; preds = %for.body.i206.5
  %197 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %incdec.ptr.i.5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %198)
  %cmp8.i.6 = icmp ugt i8 %198, 32
  %199 = call i8 @llvm.umax.i8(i8 %198, i8 32) #13
  %add13.term.032.i.6 = select i1 %cmp8.i.6, i32 7, i32 %add13.term.032.i.5
  %200 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %166, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %172)
  %exitcond.7.not = icmp eq i32 %172, 7
  br i1 %exitcond.7.not, label %for.body.i206.6.scsi_inq_str.exit_crit_edge, label %for.body.i206.7

for.body.i206.6.scsi_inq_str.exit_crit_edge:      ; preds = %for.body.i206.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit

for.body.i206.7:                                  ; preds = %for.body.i206.6
  call void @__sanitizer_cov_trace_pc() #15
  %201 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %incdec.ptr.i.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %202)
  %cmp8.i.7 = icmp ugt i8 %202, 32
  %203 = call i8 @llvm.umax.i8(i8 %202, i8 32) #13
  %add13.term.032.i.7 = select i1 %cmp8.i.7, i32 8, i32 %add13.term.032.i.6
  %204 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %167, align 1
  br label %scsi_inq_str.exit

scsi_inq_str.exit:                                ; preds = %for.body.i206.7, %for.body.i206.6.scsi_inq_str.exit_crit_edge, %for.body.i206.5.scsi_inq_str.exit_crit_edge, %for.body.i206.4.scsi_inq_str.exit_crit_edge, %for.body.i206.3.scsi_inq_str.exit_crit_edge, %for.body.i206.2.scsi_inq_str.exit_crit_edge, %for.body.i206.1.scsi_inq_str.exit_crit_edge, %for.body.i206.scsi_inq_str.exit_crit_edge, %do.body75.scsi_inq_str.exit_crit_edge
  %term.0.lcssa.i = phi i32 [ 0, %do.body75.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i, %for.body.i206.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.1, %for.body.i206.1.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.2, %for.body.i206.2.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.3, %for.body.i206.3.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.4, %for.body.i206.4.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.5, %for.body.i206.5.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.6, %for.body.i206.6.scsi_inq_str.exit_crit_edge ], [ %add13.term.032.i.7, %for.body.i206.7 ]
  %arrayidx15.i = getelementptr i8, ptr %vend, i32 %term.0.lcssa.i
  %205 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %arrayidx15.i, align 1
  %umax291 = call i32 @llvm.umax.i32(i32 %add2.i, i32 16)
  %206 = add nsw i32 %umax291, -16
  br label %land.rhs.i215

land.rhs.i215:                                    ; preds = %for.body.i222.land.rhs.i215_crit_edge, %scsi_inq_str.exit
  %add35.i209 = phi i32 [ %add.i220, %for.body.i222.land.rhs.i215_crit_edge ], [ 16, %scsi_inq_str.exit ]
  %idx.033.i210 = phi i32 [ %add13.i218, %for.body.i222.land.rhs.i215_crit_edge ], [ 0, %scsi_inq_str.exit ]
  %term.032.i211 = phi i32 [ %add13.term.032.i219, %for.body.i222.land.rhs.i215_crit_edge ], [ 0, %scsi_inq_str.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.033.i210, i32 %206)
  %exitcond292.not = icmp eq i32 %idx.033.i210, %206
  br i1 %exitcond292.not, label %land.rhs.i215.scsi_inq_str.exit226_crit_edge, label %for.body.i222

land.rhs.i215.scsi_inq_str.exit226_crit_edge:     ; preds = %land.rhs.i215
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit226

for.body.i222:                                    ; preds = %land.rhs.i215
  %arrayidx6.i216 = getelementptr i8, ptr %call7.i, i32 %add35.i209
  %207 = ptrtoint ptr %arrayidx6.i216 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx6.i216, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %208)
  %cmp8.i217 = icmp ugt i8 %208, 32
  %add13.i218 = add nuw nsw i32 %idx.033.i210, 1
  %209 = call i8 @llvm.umax.i8(i8 %208, i8 32) #13
  %add13.term.032.i219 = select i1 %cmp8.i217, i32 %add13.i218, i32 %term.032.i211
  %210 = getelementptr i8, ptr %mod, i32 %idx.033.i210
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %209, ptr %210, align 1
  %add.i220 = add nuw nsw i32 %idx.033.i210, 17
  %exitcond.not.i221 = icmp eq i32 %add13.i218, 16
  br i1 %exitcond.not.i221, label %for.body.i222.scsi_inq_str.exit226_crit_edge, label %for.body.i222.land.rhs.i215_crit_edge

for.body.i222.land.rhs.i215_crit_edge:            ; preds = %for.body.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i215

for.body.i222.scsi_inq_str.exit226_crit_edge:     ; preds = %for.body.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_inq_str.exit226

scsi_inq_str.exit226:                             ; preds = %for.body.i222.scsi_inq_str.exit226_crit_edge, %land.rhs.i215.scsi_inq_str.exit226_crit_edge
  %term.0.lcssa.i223 = phi i32 [ %add13.term.032.i219, %for.body.i222.scsi_inq_str.exit226_crit_edge ], [ %term.032.i211, %land.rhs.i215.scsi_inq_str.exit226_crit_edge ]
  %arrayidx15.i224 = getelementptr i8, ptr %mod, i32 %term.0.lcssa.i223
  %212 = ptrtoint ptr %arrayidx15.i224 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %arrayidx15.i224, align 1
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull %vend, ptr noundef nonnull %mod) #13
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %mod) #13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %vend) #13
  br label %out_free_sdev.thread278

lor.lhs.false91:                                  ; preds = %if.end37
  %pdt_1f_for_no_lun = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 7
  %213 = ptrtoint ptr %pdt_1f_for_no_lun to i32
  call void @__asan_load1_noabort(i32 %213)
  %bf.load = load i8, ptr %pdt_1f_for_no_lun, align 4
  %214 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool92.not = icmp eq i8 %214, 0
  %and95 = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and95)
  %cmp96 = icmp ne i32 %and95, 31
  %or.cond = select i1 %tobool92.not, i1 true, i1 %cmp96
  %and.i = and i64 %lun, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 49408
  %or.cond282 = or i1 %cmp.i.not, %or.cond
  br i1 %or.cond282, label %lor.lhs.false91.if.end120_crit_edge, label %lor.lhs.false91.do.body102_crit_edge

lor.lhs.false91.do.body102_crit_edge:             ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body102

lor.lhs.false91.if.end120_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

land.lhs.true98:                                  ; preds = %if.end37
  %and.i.old = and i64 %lun, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %and.i.old)
  %cmp.i.not.old = icmp eq i64 %and.i.old, 49408
  br i1 %cmp.i.not.old, label %land.lhs.true98.if.end120_crit_edge, label %land.lhs.true98.do.body102_crit_edge

land.lhs.true98.do.body102_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body102

land.lhs.true98.if.end120_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

do.body102:                                       ; preds = %land.lhs.true98.do.body102_crit_edge, %lor.lhs.false91.do.body102_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %215 = load i32, ptr @scsi_logging_level, align 4
  %216 = and i32 %215, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp105.not = icmp eq i32 %216, 0
  br i1 %cmp105.not, label %do.body102.out_free_sdev.thread278_crit_edge, label %do.body114, !prof !192

do.body102.out_free_sdev.thread278_crit_edge:     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_sdev.thread278

do.body114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.23) #13
  br label %out_free_sdev.thread278

if.end120:                                        ; preds = %land.lhs.true98.if.end120_crit_edge, %lor.lhs.false91.if.end120_crit_edge
  %async_scan = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 36
  %217 = ptrtoint ptr %async_scan to i32
  call void @__asan_load2_noabort(i32 %217)
  %bf.load121 = load i16, ptr %async_scan, align 8
  %218 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %inquiry_len.i, align 4
  %220 = call i8 @llvm.umax.i8(i8 %219, i8 36) #13
  %cond.i = zext i8 %220 to i32
  %call.i229 = call ptr @kmemdup(ptr noundef %call7.i, i32 noundef %cond.i, i32 noundef 3264) #13
  %inquiry.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 29
  %221 = ptrtoint ptr %inquiry.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i229, ptr %inquiry.i, align 8
  %cmp3.i230 = icmp eq ptr %call.i229, null
  br i1 %cmp3.i230, label %if.end120.out_free_sdev.thread278_crit_edge, label %if.end.i232

if.end120.out_free_sdev.thread278_crit_edge:      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_sdev.thread278

if.end.i232:                                      ; preds = %if.end120
  %add.ptr.i231 = getelementptr i8, ptr %call.i229, i32 8
  %vendor.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 30
  %222 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %add.ptr.i231, ptr %vendor.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %call.i229, i32 16
  %model.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 31
  %223 = ptrtoint ptr %model.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %add.ptr7.i, ptr %model.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %call.i229, i32 32
  %rev.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 32
  %224 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %add.ptr9.i, ptr %rev.i, align 4
  %call11.i = call i32 @strncmp(ptr noundef %add.ptr.i231, ptr noundef nonnull dereferenceable(9) @.str.43, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp eq i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end.i232.if.end15.i_crit_edge

if.end.i232.if.end15.i_crit_edge:                 ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #15
  %225 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 8)
  %bf.load.i233 = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set.i234 = or i64 %bf.load.i233, 68719476736
  store i64 %bf.set.i234, ptr %lun_in_cdb.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end.i232.if.end15.i_crit_edge
  %and.i235 = and i64 %call84.i, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i235)
  %tobool.not.i236 = icmp eq i64 %and.i235, 0
  br i1 %tobool.not.i236, label %if.else.i239, label %if.then16.i

if.then16.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 22
  %226 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 5, ptr %type.i, align 4
  %227 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 8)
  %bf.load17.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set19.i = or i64 %bf.load17.i, -9223372036854775808
  store i64 %bf.set19.i, ptr %lun_in_cdb.i, align 4
  br label %if.end44.i

if.else.i239:                                     ; preds = %if.end15.i
  %228 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %call7.i, align 8
  %230 = and i8 %229, 31
  %type23.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 22
  %231 = ptrtoint ptr %type23.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %type23.i, align 4
  %arrayidx24.i = getelementptr i8, ptr %call7.i, i32 1
  %232 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx24.i, align 1
  %234 = lshr i8 %233, 7
  %235 = zext i8 %234 to i64
  %236 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 8)
  %bf.load28.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.shl.i = shl nuw i64 %235, 63
  %bf.clear29.i = and i64 %bf.load28.i, 9223372036854775807
  %bf.set30.i = or i64 %bf.shl.i, %bf.clear29.i
  store i64 %bf.set30.i, ptr %lun_in_cdb.i, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 18
  %237 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %lun.i, align 8
  %and.i.i237 = and i64 %238, 65280
  call void @__sanitizer_cov_trace_const_cmp8(i64 49408, i64 %and.i.i237)
  %cmp.i.i238 = icmp ne i64 %and.i.i237, 49408
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %230)
  %cmp35.not.i = icmp eq i8 %230, 30
  %or.cond.i = select i1 %cmp.i.i238, i1 true, i1 %cmp35.not.i
  br i1 %or.cond.i, label %if.else.i239.if.end44.i_crit_edge, label %if.then37.i

if.else.i239.if.end44.i_crit_edge:                ; preds = %if.else.i239
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44.i

if.then37.i:                                      ; preds = %if.else.i239
  call void @__sanitizer_cov_trace_pc() #15
  %conv34.i = zext i8 %230 to i32
  %conv41.i = trunc i64 %238 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.44, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.scsi_add_lun, i32 noundef %conv34.i, i32 noundef %conv41.i) #13
  %239 = ptrtoint ptr %type23.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 30, ptr %type23.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then37.i, %if.else.i239.if.end44.i_crit_edge, %if.then16.i
  %type45.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 22
  %240 = ptrtoint ptr %type45.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %type45.i, align 4
  %242 = zext i8 %241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %241, label %if.end44.i.if.end59.i_crit_edge [
    i8 14, label %if.end44.i.if.then53.i_crit_edge
    i8 5, label %if.end44.i.if.then53.i_crit_edge308
  ]

if.end44.i.if.then53.i_crit_edge308:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53.i

if.end44.i.if.then53.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then53.i

if.end44.i.if.end59.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

if.then53.i:                                      ; preds = %if.end44.i.if.then53.i_crit_edge, %if.end44.i.if.then53.i_crit_edge308
  %and54.i = shl i64 %call84.i, 1
  %243 = and i64 %and54.i, 262144
  %244 = xor i64 %243, 262144
  %245 = or i64 %244, %call84.i
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then53.i, %if.end44.i.if.end59.i_crit_edge
  %bflags.3 = phi i64 [ %call84.i, %if.end44.i.if.end59.i_crit_edge ], [ %245, %if.then53.i ]
  %246 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %call7.i, align 8
  %248 = lshr i8 %247, 5
  %inq_periph_qual.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 24
  %249 = ptrtoint ptr %inq_periph_qual.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %inq_periph_qual.i, align 2
  %250 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 8)
  %bf.load66.i = load i64, ptr %lun_in_cdb.i, align 4
  %251 = lshr i64 %bf.load66.i, 3
  %bf.shl69.i = and i64 %251, 1152921504606846976
  %bf.clear70.i = and i64 %bf.load66.i, -1152921504606846977
  %bf.set71.i = or i64 %bf.shl69.i, %bf.clear70.i
  store i64 %bf.set71.i, ptr %lun_in_cdb.i, align 4
  %arrayidx73.i241 = getelementptr i8, ptr %call7.i, i32 7
  %252 = ptrtoint ptr %arrayidx73.i241 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx73.i241, align 1
  %254 = and i8 %253, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool76.not.i = icmp eq i8 %254, 0
  br i1 %tobool76.not.i, label %if.end59.i.land.end.thread.i_crit_edge, label %land.end.i

if.end59.i.land.end.thread.i_crit_edge:           ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.thread.i

land.end.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx77.i = getelementptr i8, ptr %call7.i, i32 3
  %255 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx77.i, align 1
  %257 = and i8 %256, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %257)
  %cmp80.i = icmp eq i8 %257, 2
  %spec.select.i242 = select i1 %cmp80.i, i64 72057594037927936, i64 0
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.end.i, %if.end59.i.land.end.thread.i_crit_edge
  %258 = phi i64 [ 0, %if.end59.i.land.end.thread.i_crit_edge ], [ %spec.select.i242, %land.end.i ]
  %bf.clear85.i = and i64 %bf.set71.i, -72057594037927937
  %bf.set86.i = or i64 %258, %bf.clear85.i
  %259 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_storeN_noabort(i32 %259, i32 8)
  store i64 %bf.set86.i, ptr %lun_in_cdb.i, align 4
  %260 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %261)
  %cmp89.i = icmp ugt i8 %261, 3
  br i1 %cmp89.i, label %land.end.thread.i.if.then101.i_crit_edge, label %lor.lhs.false91.i

land.end.thread.i.if.then101.i_crit_edge:         ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then101.i

lor.lhs.false91.i:                                ; preds = %land.end.thread.i
  %262 = ptrtoint ptr %inquiry_len.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %inquiry_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %263)
  %cmp94.i = icmp ugt i8 %263, 56
  br i1 %cmp94.i, label %land.lhs.true96.i, label %lor.lhs.false91.i.if.end105.i_crit_edge

lor.lhs.false91.i.if.end105.i_crit_edge:          ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i

land.lhs.true96.i:                                ; preds = %lor.lhs.false91.i
  %arrayidx97.i = getelementptr i8, ptr %call7.i, i32 56
  %264 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx97.i, align 8
  %266 = and i8 %265, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool100.not.i = icmp eq i8 %266, 0
  br i1 %tobool100.not.i, label %land.lhs.true96.i.if.end105.i_crit_edge, label %land.lhs.true96.i.if.then101.i_crit_edge

land.lhs.true96.i.if.then101.i_crit_edge:         ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then101.i

land.lhs.true96.i.if.end105.i_crit_edge:          ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105.i

if.then101.i:                                     ; preds = %land.lhs.true96.i.if.then101.i_crit_edge, %land.end.thread.i.if.then101.i_crit_edge
  %bf.set104.i = or i64 %bf.set86.i, 9007199254740992
  %267 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_storeN_noabort(i32 %267, i32 8)
  store i64 %bf.set104.i, ptr %lun_in_cdb.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then101.i, %land.lhs.true96.i.if.end105.i_crit_edge, %lor.lhs.false91.i.if.end105.i_crit_edge
  %268 = ptrtoint ptr %arrayidx73.i241 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx73.i241, align 1
  %270 = and i8 %269, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool109.not.i = icmp eq i8 %270, 0
  br i1 %tobool109.not.i, label %if.end105.i.if.end114.i_crit_edge, label %if.then110.i

if.end105.i.if.end114.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114.i

if.then110.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  %271 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 8)
  %bf.load111.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set113.i = or i64 %bf.load111.i, 18014398509481984
  store i64 %bf.set113.i, ptr %lun_in_cdb.i, align 4
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then110.i, %if.end105.i.if.end114.i_crit_edge
  %272 = ptrtoint ptr %arrayidx73.i241 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx73.i241, align 1
  %274 = and i8 %273, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool118.not.i = icmp eq i8 %274, 0
  br i1 %tobool118.not.i, label %if.end114.i.if.end123.i_crit_edge, label %if.then119.i

if.end114.i.if.end123.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123.i

if.then119.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #15
  %275 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %275, i32 8)
  %bf.load120.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set122.i = or i64 %bf.load120.i, 36028797018963968
  store i64 %bf.set122.i, ptr %lun_in_cdb.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then119.i, %if.end114.i.if.end123.i_crit_edge
  %276 = ptrtoint ptr %type45.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %type45.i, align 4
  %conv125.i = zext i8 %277 to i32
  %call126.i = call ptr @scsi_device_type(i32 noundef %conv125.i) #13
  %278 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %vendor.i, align 4
  %280 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %model.i, align 8
  %282 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %rev.i, align 4
  %284 = ptrtoint ptr %inq_periph_qual.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %inq_periph_qual.i, align 2
  %conv131.i = zext i8 %285 to i32
  %286 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx142.i, align 2
  %288 = and i8 %287, 7
  %and134.i = zext i8 %288 to i32
  %arrayidx135.i = getelementptr i8, ptr %call7.i, i32 3
  %289 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx135.i, align 1
  %291 = and i8 %290, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %291)
  %cmp138.i = icmp eq i8 %291, 1
  %cond140.i = select i1 %cmp138.i, ptr @.str.48, ptr @.str.49
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.46, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef %call126.i, ptr noundef %279, ptr noundef %281, ptr noundef %283, i32 noundef %conv131.i, i32 noundef %and134.i, ptr noundef nonnull %cond140.i) #13
  %292 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %293)
  %cmp143.i = icmp ugt i8 %293, 2
  br i1 %cmp143.i, label %land.lhs.true145.i, label %if.end123.i.if.end160.i_crit_edge

if.end123.i.if.end160.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160.i

land.lhs.true145.i:                               ; preds = %if.end123.i
  %294 = ptrtoint ptr %arrayidx73.i241 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx73.i241, align 1
  %296 = and i8 %295, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool149.not.i = icmp ne i8 %296, 0
  %and151.i = and i64 %bflags.3, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and151.i)
  %tobool152.not.i = icmp eq i64 %and151.i, 0
  %or.cond281 = select i1 %tobool149.not.i, i1 %tobool152.not.i, i1 false
  br i1 %or.cond281, label %if.then153.i, label %land.lhs.true145.i.if.end160.i_crit_edge

land.lhs.true145.i.if.end160.i_crit_edge:         ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end160.i

if.then153.i:                                     ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #15
  %297 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %297, i32 8)
  %bf.load154.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set159.i = or i64 %bf.load154.i, 6755399441055744
  store i64 %bf.set159.i, ptr %lun_in_cdb.i, align 4
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then153.i, %land.lhs.true145.i.if.end160.i_crit_edge, %if.end123.i.if.end160.i_crit_edge
  %and161.i = and i64 %bflags.3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and161.i)
  %cmp162.i = icmp eq i64 %and161.i, 0
  br i1 %cmp162.i, label %if.then164.i, label %if.end160.i.if.end168.i_crit_edge

if.end160.i.if.end168.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end168.i

if.then164.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #15
  %298 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %298, i32 8)
  %bf.load165.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.clear166.i = and i64 %bf.load165.i, -288230376151711745
  store i64 %bf.clear166.i, ptr %lun_in_cdb.i, align 4
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then164.i, %if.end160.i.if.end168.i_crit_edge
  %and169.i = and i64 %bflags.3, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and169.i)
  %tobool170.not.i = icmp eq i64 %and169.i, 0
  br i1 %tobool170.not.i, label %if.end168.i.if.end175.i_crit_edge, label %if.then171.i

if.end168.i.if.end175.i_crit_edge:                ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end175.i

if.then171.i:                                     ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #15
  %299 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 8)
  %bf.load172.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set174.i = or i64 %bf.load172.i, 8589934592
  store i64 %bf.set174.i, ptr %lun_in_cdb.i, align 4
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then171.i, %if.end168.i.if.end175.i_crit_edge
  %and176.i = and i64 %bflags.3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and176.i)
  %tobool177.not.i = icmp eq i64 %and176.i, 0
  br i1 %tobool177.not.i, label %if.end175.i.if.end182.i_crit_edge, label %if.then178.i

if.end175.i.if.end182.i_crit_edge:                ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end182.i

if.then178.i:                                     ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %300, i32 8)
  %bf.load179.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set181.i = or i64 %bf.load179.i, 4294967296
  store i64 %bf.set181.i, ptr %lun_in_cdb.i, align 4
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then178.i, %if.end175.i.if.end182.i_crit_edge
  %and183.i = and i64 %bflags.3, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and183.i)
  %tobool184.not.i = icmp eq i64 %and183.i, 0
  br i1 %tobool184.not.i, label %if.else186.i, label %if.end182.i.if.end192.sink.split.i_crit_edge

if.end182.i.if.end192.sink.split.i_crit_edge:     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192.sink.split.i

if.else186.i:                                     ; preds = %if.end182.i
  %and187.i = and i64 %bflags.3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and187.i)
  %tobool188.not.i = icmp eq i64 %and187.i, 0
  br i1 %tobool188.not.i, label %if.else186.i.if.end192.i_crit_edge, label %if.else186.i.if.end192.sink.split.i_crit_edge

if.else186.i.if.end192.sink.split.i_crit_edge:    ; preds = %if.else186.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192.sink.split.i

if.else186.i.if.end192.i_crit_edge:               ; preds = %if.else186.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192.i

if.end192.sink.split.i:                           ; preds = %if.else186.i.if.end192.sink.split.i_crit_edge, %if.end182.i.if.end192.sink.split.i_crit_edge
  %.sink473.i = phi i32 [ 512, %if.end182.i.if.end192.sink.split.i_crit_edge ], [ 1024, %if.else186.i.if.end192.sink.split.i_crit_edge ]
  %request_queue190.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 1
  %301 = ptrtoint ptr %request_queue190.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %request_queue190.i, align 4
  call void @blk_queue_max_hw_sectors(ptr noundef %302, i32 noundef %.sink473.i) #13
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.end192.sink.split.i, %if.else186.i.if.end192.i_crit_edge
  %and193.i = and i64 %bflags.3, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and193.i)
  %tobool194.not.i = icmp eq i64 %and193.i, 0
  br i1 %tobool194.not.i, label %if.end192.i.if.end199.i_crit_edge, label %if.then195.i

if.end192.i.if.end199.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199.i

if.then195.i:                                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #15
  %303 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %303, i32 8)
  %bf.load196.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set198.i = or i64 %bf.load196.i, 137438953472
  store i64 %bf.set198.i, ptr %lun_in_cdb.i, align 4
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then195.i, %if.end192.i.if.end199.i_crit_edge
  %and200.i = and i64 %bflags.3, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and200.i)
  %tobool201.not.i = icmp eq i64 %and200.i, 0
  br i1 %tobool201.not.i, label %if.end199.i.if.end207.i_crit_edge, label %if.then202.i

if.end199.i.if.end207.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207.i

if.then202.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #15
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 55, i32 1
  %304 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %parent.i.i, align 8
  %single_lun.i = getelementptr i8, ptr %305, i32 940
  %306 = ptrtoint ptr %single_lun.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %bf.load204.i = load i8, ptr %single_lun.i, align 4
  %bf.set206.i = or i8 %bf.load204.i, 64
  store i8 %bf.set206.i, ptr %single_lun.i, align 4
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then202.i, %if.end199.i.if.end207.i_crit_edge
  %307 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %307, i32 8)
  %bf.load208.i = load i64, ptr %lun_in_cdb.i, align 4
  %and211.i = and i64 %bflags.3, 536870912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and211.i)
  %tobool212.not.i = icmp eq i64 %and211.i, 0
  %spec.select.v = select i1 %tobool212.not.i, i64 281474976710656, i64 316659348799488
  %spec.select = or i64 %bf.load208.i, %spec.select.v
  %308 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_storeN_noabort(i32 %308, i32 8)
  store i64 %spec.select, ptr %lun_in_cdb.i, align 4
  %state_mutex.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 68
  call void @mutex_lock_nested(ptr noundef %state_mutex.i, i32 noundef 0) #13
  %call218.i = call i32 @scsi_device_set_state(ptr noundef %sdev.0267, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218.i)
  %tobool219.not.i = icmp eq i32 %call218.i, 0
  br i1 %tobool219.not.i, label %if.end222.thread.i, label %if.end222.i

if.end222.thread.i:                               ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef %state_mutex.i) #13
  br label %if.end227.i

if.end222.i:                                      ; preds = %if.end207.i
  %call221.i = call i32 @scsi_device_set_state(ptr noundef %sdev.0267, i32 noundef 8) #13
  call void @mutex_unlock(ptr noundef %state_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221.i)
  %tobool224.not.i = icmp eq i32 %call221.i, 0
  br i1 %tobool224.not.i, label %if.end222.i.if.end227.i_crit_edge, label %if.then225.i

if.end222.i.if.end227.i_crit_edge:                ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end227.i

if.then225.i:                                     ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #15
  %sdev_state.i244 = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 69
  %309 = ptrtoint ptr %sdev_state.i244 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %sdev_state.i244, align 4
  %call226.i = call ptr @scsi_device_state_name(i32 noundef %310) #13
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.18, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef %call226.i) #13
  br label %out_free_sdev.thread278

if.end227.i:                                      ; preds = %if.end222.i.if.end227.i_crit_edge, %if.end222.thread.i
  %and228.i = and i64 %bflags.3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and228.i)
  %tobool229.not.i = icmp eq i64 %and228.i, 0
  br i1 %tobool229.not.i, label %if.end227.i.if.end235.i_crit_edge, label %if.then230.i

if.end227.i.if.end235.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end235.i

if.then230.i:                                     ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #15
  %311 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %311, i32 8)
  %bf.load232.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.clear233.i = and i64 %bf.load232.i, -1152921504606846977
  store i64 %bf.clear233.i, ptr %lun_in_cdb.i, align 4
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.then230.i, %if.end227.i.if.end235.i_crit_edge
  %and236.i = and i64 %bflags.3, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and236.i)
  %tobool237.not.i = icmp eq i64 %and236.i, 0
  br i1 %tobool237.not.i, label %if.end235.i.if.end242.i_crit_edge, label %if.then238.i

if.end235.i.if.end242.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242.i

if.then238.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #15
  %312 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 8)
  %bf.load239.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set241.i = or i64 %bf.load239.i, 536870912
  store i64 %bf.set241.i, ptr %lun_in_cdb.i, align 4
  br label %if.end242.i

if.end242.i:                                      ; preds = %if.then238.i, %if.end235.i.if.end242.i_crit_edge
  %and243.i = and i64 %bflags.3, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and243.i)
  %tobool244.not.i = icmp eq i64 %and243.i, 0
  br i1 %tobool244.not.i, label %if.end242.i.if.end249.i_crit_edge, label %if.then245.i

if.end242.i.if.end249.i_crit_edge:                ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.i

if.then245.i:                                     ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #15
  %313 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %313, i32 8)
  %bf.load246.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set248.i = or i64 %bf.load246.i, 2097152
  store i64 %bf.set248.i, ptr %lun_in_cdb.i, align 4
  br label %if.end249.i

if.end249.i:                                      ; preds = %if.then245.i, %if.end242.i.if.end249.i_crit_edge
  %and250.i = and i64 %bflags.3, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and250.i)
  %tobool251.not.i = icmp eq i64 %and250.i, 0
  br i1 %tobool251.not.i, label %if.end249.i.if.end256.i_crit_edge, label %if.then252.i

if.end249.i.if.end256.i_crit_edge:                ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end256.i

if.then252.i:                                     ; preds = %if.end249.i
  call void @__sanitizer_cov_trace_pc() #15
  %314 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %314, i32 8)
  %bf.load253.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set255.i = or i64 %bf.load253.i, 262144
  store i64 %bf.set255.i, ptr %lun_in_cdb.i, align 4
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.then252.i, %if.end249.i.if.end256.i_crit_edge
  %and257.i = and i64 %bflags.3, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and257.i)
  %tobool258.not.i = icmp eq i64 %and257.i, 0
  br i1 %tobool258.not.i, label %if.end256.i.if.end263.i_crit_edge, label %if.then259.i

if.end256.i.if.end263.i_crit_edge:                ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end263.i

if.then259.i:                                     ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #15
  %315 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %315, i32 8)
  %bf.load260.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set262.i = or i64 %bf.load260.i, 65536
  store i64 %bf.set262.i, ptr %lun_in_cdb.i, align 4
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.then259.i, %if.end256.i.if.end263.i_crit_edge
  %eh_timeout.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 40
  %316 = ptrtoint ptr %eh_timeout.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 1000, ptr %eh_timeout.i, align 8
  %and264.i = and i64 %bflags.3, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and264.i)
  %tobool265.not.i = icmp eq i64 %and264.i, 0
  br i1 %tobool265.not.i, label %if.else270.i, label %if.end263.i.if.end278.sink.split.i_crit_edge

if.end263.i.if.end278.sink.split.i_crit_edge:     ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end278.sink.split.i

if.else270.i:                                     ; preds = %if.end263.i
  %and271.i = and i64 %bflags.3, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and271.i)
  %tobool272.not.i = icmp eq i64 %and271.i, 0
  br i1 %tobool272.not.i, label %if.else270.i.if.end278.i_crit_edge, label %if.else270.i.if.end278.sink.split.i_crit_edge

if.else270.i.if.end278.sink.split.i_crit_edge:    ; preds = %if.else270.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end278.sink.split.i

if.else270.i.if.end278.i_crit_edge:               ; preds = %if.else270.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end278.i

if.end278.sink.split.i:                           ; preds = %if.else270.i.if.end278.sink.split.i_crit_edge, %if.end263.i.if.end278.sink.split.i_crit_edge
  %.sink.i = phi i64 [ 549755813888, %if.end263.i.if.end278.sink.split.i_crit_edge ], [ 1099511627776, %if.else270.i.if.end278.sink.split.i_crit_edge ]
  %317 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %317, i32 8)
  %bf.load274.i = load i64, ptr %lun_in_cdb.i, align 4
  %bf.set276.i = or i64 %bf.load274.i, %.sink.i
  store i64 %bf.set276.i, ptr %lun_in_cdb.i, align 4
  br label %if.end278.i

if.end278.i:                                      ; preds = %if.end278.sink.split.i, %if.else270.i.if.end278.i_crit_edge
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 55
  call void @transport_configure_device(ptr noundef %sdev_gendev.i) #13
  %318 = ptrtoint ptr %sdev.0267 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %sdev.0267, align 8
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %319, i32 0, i32 11
  %320 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %hostt.i, align 8
  %slave_configure.i = getelementptr inbounds %struct.scsi_host_template, ptr %321, i32 0, i32 15
  %322 = ptrtoint ptr %slave_configure.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %slave_configure.i, align 4
  %tobool279.not.i = icmp eq ptr %323, null
  br i1 %tobool279.not.i, label %if.end278.i.if.end294.i_crit_edge, label %if.then280.i

if.end278.i.if.end294.i_crit_edge:                ; preds = %if.end278.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end294.i

if.then280.i:                                     ; preds = %if.end278.i
  %call284.i = call i32 %323(ptr noundef %sdev.0267) #13
  %324 = zext i32 %call284.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %324, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call284.i, label %if.then289.i [
    i32 0, label %if.end291.i
    i32 -6, label %if.then280.i.out_free_sdev.thread278_crit_edge
  ]

if.then280.i.out_free_sdev.thread278_crit_edge:   ; preds = %if.then280.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_sdev.thread278

if.then289.i:                                     ; preds = %if.then280.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.18, ptr noundef %sdev.0267, ptr noundef null, ptr noundef nonnull @.str.51) #13
  br label %out_free_sdev.thread278

if.end291.i:                                      ; preds = %if.then280.i
  call void @__sanitizer_cov_trace_pc() #15
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 9
  %325 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %queue_depth.i, align 4
  %conv292.i = zext i16 %326 to i32
  %call293.i = call fastcc i32 @scsi_realloc_sdev_budget_map(ptr noundef %sdev.0267, i32 noundef %conv292.i) #13
  br label %if.end294.i

if.end294.i:                                      ; preds = %if.end291.i, %if.end278.i.if.end294.i_crit_edge
  %327 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %scsi_level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %328)
  %cmp297.i = icmp ugt i8 %328, 3
  br i1 %cmp297.i, label %if.then299.i, label %if.end294.i.if.end300.i_crit_edge

if.end294.i.if.end300.i_crit_edge:                ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end300.i

if.then299.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @scsi_attach_vpd(ptr noundef %sdev.0267) #13
  br label %if.end300.i

if.end300.i:                                      ; preds = %if.then299.i, %if.end294.i.if.end300.i_crit_edge
  %queue_depth301.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 9
  %329 = ptrtoint ptr %queue_depth301.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %queue_depth301.i, align 4
  %max_queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 10
  %331 = ptrtoint ptr %max_queue_depth.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %330, ptr %max_queue_depth.i, align 2
  %conv303.i = zext i16 %330 to i32
  %budget_map.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 4
  %332 = ptrtoint ptr %budget_map.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %budget_map.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %333, i32 %conv303.i)
  %cmp304.i = icmp ult i32 %333, %conv303.i
  br i1 %cmp304.i, label %land.rhs309.i, label %if.end300.i.if.end340.i_crit_edge

if.end300.i.if.end340.i_crit_edge:                ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end340.i

land.rhs309.i:                                    ; preds = %if.end300.i
  %.b470.i = load i1, ptr @scsi_add_lun.__already_done, align 1
  br i1 %.b470.i, label %land.rhs309.i.if.end340.i_crit_edge, label %if.then317.i, !prof !192

land.rhs309.i.if.end340.i_crit_edge:              ; preds = %land.rhs309.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end340.i

if.then317.i:                                     ; preds = %land.rhs309.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @scsi_add_lun.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1071, i32 noundef 9, ptr noundef null) #13
  br label %if.end340.i

if.end340.i:                                      ; preds = %if.then317.i, %land.rhs309.i.if.end340.i_crit_edge, %if.end300.i.if.end340.i_crit_edge
  %sdev_bflags.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0267, i32 0, i32 39
  %334 = ptrtoint ptr %sdev_bflags.i to i32
  call void @__asan_store8_noabort(i32 %334)
  store i64 %bflags.3, ptr %sdev_bflags.i, align 8
  %335 = and i16 %bf.load121, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %335)
  %tobool348.not.i = icmp eq i16 %335, 0
  br i1 %tobool348.not.i, label %land.lhs.true349.i, label %if.end340.i.if.then128_crit_edge

if.end340.i.if.then128_crit_edge:                 ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then128

land.lhs.true349.i:                               ; preds = %if.end340.i
  %call350.i = call i32 @scsi_sysfs_add_sdev(ptr noundef %sdev.0267) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350.i)
  %cmp351.not.i = icmp eq i32 %call350.i, 0
  br i1 %cmp351.not.i, label %land.lhs.true349.i.if.then128_crit_edge, label %land.lhs.true349.i.out_free_sdev.thread278_crit_edge

land.lhs.true349.i.out_free_sdev.thread278_crit_edge: ; preds = %land.lhs.true349.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_sdev.thread278

land.lhs.true349.i.if.then128_crit_edge:          ; preds = %land.lhs.true349.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then128

if.then128:                                       ; preds = %land.lhs.true349.i.if.then128_crit_edge, %if.end340.i.if.then128_crit_edge
  %and129 = and i64 %bflags.3, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and129)
  %tobool130.not = icmp eq i64 %and129, 0
  br i1 %tobool130.not, label %if.then128.if.then138_crit_edge, label %if.then131

if.then128.if.then138_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then138

if.then131:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  %336 = ptrtoint ptr %lun_in_cdb.i to i32
  call void @__asan_loadN_noabort(i32 %336, i32 8)
  %bf.load132 = load i64, ptr %lun_in_cdb.i, align 4
  %bf.clear133 = and i64 %bf.load132, -1152921504606846977
  store i64 %bf.clear133, ptr %lun_in_cdb.i, align 4
  call fastcc void @scsi_unlock_floptical(ptr noundef nonnull %sdev.0267, ptr noundef nonnull %call7.i)
  br label %if.then138

out_free_sdev.thread278:                          ; preds = %land.lhs.true349.i.out_free_sdev.thread278_crit_edge, %if.then289.i, %if.then280.i.out_free_sdev.thread278_crit_edge, %if.then225.i, %if.end120.out_free_sdev.thread278_crit_edge, %do.body114, %do.body102.out_free_sdev.thread278_crit_edge, %scsi_inq_str.exit226, %do.body63.out_free_sdev.thread278_crit_edge, %do.end59.out_free_sdev.thread278_crit_edge, %scsi_probe_lun.exit
  %res.0.ph = phi i32 [ 1, %do.body102.out_free_sdev.thread278_crit_edge ], [ 1, %do.body114 ], [ 1, %do.end59.out_free_sdev.thread278_crit_edge ], [ 1, %scsi_inq_str.exit226 ], [ 1, %do.body63.out_free_sdev.thread278_crit_edge ], [ 0, %scsi_probe_lun.exit ], [ 0, %if.then225.i ], [ 0, %if.end120.out_free_sdev.thread278_crit_edge ], [ 0, %if.then280.i.out_free_sdev.thread278_crit_edge ], [ 0, %if.then289.i ], [ 0, %land.lhs.true349.i.out_free_sdev.thread278_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %if.else148

if.then138:                                       ; preds = %if.then131, %if.then128.if.then138_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #13
  %tobool139.not = icmp eq ptr %sdevp, null
  br i1 %tobool139.not, label %if.then138.cleanup_crit_edge, label %if.then140

if.then138.cleanup_crit_edge:                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then140:                                       ; preds = %if.then138
  %call141 = call i32 @scsi_device_get(ptr noundef nonnull %sdev.0267) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #15
  %337 = ptrtoint ptr %sdevp to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %sdev.0267, ptr %sdevp, align 4
  br label %cleanup

if.else145:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #15
  call void @__scsi_remove_device(ptr noundef nonnull %sdev.0267) #13
  br label %cleanup

if.else148:                                       ; preds = %out_free_sdev.thread278, %if.end26.if.else148_crit_edge
  %res.1277 = phi i32 [ %res.0.ph, %out_free_sdev.thread278 ], [ 0, %if.end26.if.else148_crit_edge ]
  call void @__scsi_remove_device(ptr noundef nonnull %sdev.0267) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else148, %if.else145, %if.then144, %if.then138.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then17, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then17 ], [ 2, %if.end15.cleanup_crit_edge ], [ 2, %if.then144 ], [ 0, %if.else145 ], [ 2, %if.then138.cleanup_crit_edge ], [ %res.1277, %if.else148 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_add_device(ptr noundef %host, i32 noundef %channel, i32 noundef %target, i64 noundef %lun) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__scsi_add_device(ptr noundef %host, i32 noundef %channel, i32 noundef %target, i64 noundef %lun, ptr noundef null)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_device_put(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_rescan_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  tail call void @scsi_attach_vpd(ptr noundef %add.ptr) #13
  %handler = getelementptr i8, ptr %dev, i32 1944
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rescan = getelementptr inbounds %struct.scsi_device_handler, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rescan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rescan, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end20_crit_edge, label %land.lhs.true6

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true6:                                   ; preds = %if.end
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %7) #13
  br i1 %call, label %if.then8, label %land.lhs.true6.if.end20_crit_edge

land.lhs.true6.if.end20_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then8:                                         ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %rescan13 = getelementptr inbounds %struct.scsi_driver, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rescan13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rescan13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.then8.if.end17_crit_edge, label %if.then15

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %11(ptr noundef %dev) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then8.if.end17_crit_edge
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 4
  %owner19 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %owner19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner19, align 4
  tail call void @module_put(ptr noundef %15) #13
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %land.lhs.true6.if.end20_crit_edge, %if.end.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_attach_vpd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_scan_target(ptr noundef %parent, i32 noundef %channel, i32 noundef %id, i64 noundef %lun, i32 noundef %rescan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %parent, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rescan)
  %cmp2.not = icmp eq i32 %rescan, 2
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %bcmp25 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @scsi_scan_type, ptr noundef nonnull dereferenceable(6) @.str.5, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp25)
  %cmp4 = icmp eq i32 %bcmp25, 0
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %scan_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #13
  %async_scan = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 36
  %2 = ptrtoint ptr %async_scan to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %async_scan, align 8
  %3 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then7, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @scsi_complete_async_scans()
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end6.if.end9_crit_edge
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 48
  %4 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shost_state.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %if.end9.if.end16_crit_edge [
    i32 5, label %if.end9.land.lhs.true12_crit_edge
    i32 2, label %if.end9.land.lhs.true12_crit_edge32
  ]

if.end9.land.lhs.true12_crit_edge32:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true12

if.end9.land.lhs.true12_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true12:                                  ; preds = %if.end9.land.lhs.true12_crit_edge, %if.end9.land.lhs.true12_crit_edge32
  %call13 = tail call i32 @scsi_autopm_get_host(ptr noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %land.lhs.true12.if.end16_crit_edge

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__scsi_scan_target(ptr noundef %parent, i32 noundef %channel, i32 noundef %id, i64 noundef %lun, i32 noundef %rescan)
  tail call void @scsi_autopm_put_host(ptr noundef %retval.0.i) #13
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true12.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %scan_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__scsi_scan_target(ptr noundef %parent, i32 noundef %channel, i32 noundef %id, i64 noundef %lun, i32 noundef %rescan) unnamed_addr #2 align 64 {
entry:
  %scsi_cmd.i = alloca [16 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  %bflags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %parent, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bflags) #13
  %2 = ptrtoint ptr %bflags to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %bflags, align 8
  %this_id = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 25
  %3 = ptrtoint ptr %this_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %id)
  %cmp = icmp eq i32 %4, %id
  br i1 %cmp, label %dev_to_shost.exit.cleanup_crit_edge, label %if.end

dev_to_shost.exit.cleanup_crit_edge:              ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %dev_to_shost.exit
  %call1 = tail call fastcc ptr @scsi_alloc_target(ptr noundef %parent, i32 noundef %channel, i32 noundef %id)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @scsi_autopm_get_target(ptr noundef nonnull %call1) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lun)
  %cmp4.not = icmp eq i64 %lun, -1
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %call1, i64 noundef %lun, ptr noundef null, ptr noundef null, i32 noundef %rescan, ptr noundef null)
  br label %out_reap

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %call1, i64 noundef 0, ptr noundef nonnull %bflags, ptr noundef null, i32 noundef %rescan, ptr noundef null)
  %call8.off = add i32 %call8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.off)
  %switch = icmp ult i32 %call8.off, 2
  br i1 %switch, label %if.then11, label %if.end7.out_reap_crit_edge

if.end7.out_reap_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_reap

if.then11:                                        ; preds = %if.end7
  %5 = ptrtoint ptr %bflags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %bflags, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  %7 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 1
  %8 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 6
  %9 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %scsi_cmd.i, i32 0, i32 11
  %11 = call ptr @memset(ptr %scsi_cmd.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #13
  %12 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.scsi_target, ptr %call1, i32 0, i32 3
  %13 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %sshdr.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then11
  %dev.addr.0.i.i = phi ptr [ %dev.i, %if.then11 ], [ %15, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.dev_to_shost.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

while.body.i.i.dev_to_shost.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %dev_to_shost.exit.i

dev_to_shost.exit.i:                              ; preds = %while.end.i.i, %while.body.i.i.dev_to_shost.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.dev_to_shost.exit.i_crit_edge ]
  %and.i = and i64 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i36 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i36, label %if.end.i, label %dev_to_shost.exit.i.scsi_report_lun_scan.exit.thread_crit_edge

dev_to_shost.exit.i.scsi_report_lun_scan.exit.thread_crit_edge: ; preds = %dev_to_shost.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread

if.end.i:                                         ; preds = %dev_to_shost.exit.i
  %scsi_level.i = getelementptr inbounds %struct.scsi_target, ptr %call1, i32 0, i32 12
  %16 = ptrtoint ptr %scsi_level.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scsi_level.i, align 8
  %18 = add i8 %17, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %18)
  %19 = icmp ult i8 %18, -2
  br i1 %19, label %if.end7.i, label %if.end.i.scsi_report_lun_scan.exit.thread_crit_edge

if.end.i.scsi_report_lun_scan.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp10.i = icmp ult i8 %17, 4
  br i1 %cmp10.i, label %land.lhs.true12.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %if.end7.i
  %and13.i = and i64 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.scsi_report_lun_scan.exit.thread_crit_edge, label %lor.lhs.false.i

land.lhs.true12.i.scsi_report_lun_scan.exit.thread_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread

lor.lhs.false.i:                                  ; preds = %land.lhs.true12.i
  %max_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 22
  %20 = ptrtoint ptr %max_lun.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %max_lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %21)
  %cmp15.i = icmp ult i64 %21, 9
  br i1 %cmp15.i, label %lor.lhs.false.i.scsi_report_lun_scan.exit.thread_crit_edge, label %lor.lhs.false.i.if.end18.i_crit_edge

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

lor.lhs.false.i.scsi_report_lun_scan.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread

if.end18.i:                                       ; preds = %lor.lhs.false.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %and19.i = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19.i)
  %tobool20.not.i = icmp eq i64 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.scsi_report_lun_scan.exit.thread59_crit_edge

if.end18.i.scsi_report_lun_scan.exit.thread59_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread59

if.end22.i:                                       ; preds = %if.end18.i
  %no_report_luns.i = getelementptr inbounds %struct.scsi_target, ptr %call1, i32 0, i32 7
  %22 = ptrtoint ptr %no_report_luns.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %no_report_luns.i, align 4
  %23 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not.i = icmp eq i8 %23, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end22.i.scsi_report_lun_scan.exit.thread_crit_edge

if.end22.i.scsi_report_lun_scan.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread

if.end25.i:                                       ; preds = %if.end22.i
  %call26.i = call ptr @scsi_device_lookup_by_target(ptr noundef nonnull %call1, i64 noundef 0) #13
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end25.i.if.end37.i_crit_edge

if.end25.i.if.end37.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.end25.i
  %call29.i = call fastcc ptr @scsi_alloc_sdev(ptr noundef nonnull %call1, i64 noundef 0, ptr noundef null) #13
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.then28.i.scsi_report_lun_scan.exit.thread59_crit_edge, label %if.end32.i

if.then28.i.scsi_report_lun_scan.exit.thread59_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit.thread59

if.end32.i:                                       ; preds = %if.then28.i
  %call33.i = call i32 @scsi_device_get(ptr noundef nonnull %call29.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end37.i_crit_edge, label %if.then35.i

if.end32.i.if.end37.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__scsi_remove_device(ptr noundef nonnull %call29.i) #13
  br label %scsi_report_lun_scan.exit.thread59

if.end37.i:                                       ; preds = %if.end32.i.if.end37.i_crit_edge, %if.end25.i.if.end37.i_crit_edge
  %sdev.0.i = phi ptr [ %call26.i, %if.end25.i.if.end37.i_crit_edge ], [ %call29.i, %if.end32.i.if.end37.i_crit_edge ]
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then101.i, %if.end37.i
  %length.0.i = phi i32 [ 4096, %if.end37.i ], [ %add.i, %if.then101.i ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %length.0.i, i32 noundef 3264) #19
  %tobool39.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool39.not.i, label %do.end.i, label %if.end42.i

do.end.i:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.53) #18
  br label %out.i

if.end42.i:                                       ; preds = %if.end8.i.i
  %24 = ptrtoint ptr %scsi_cmd.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -96, ptr %scsi_cmd.i, align 1
  %25 = call ptr @memset(ptr %7, i32 0, i32 5)
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %length.0.i, ptr %8, align 1
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %9, align 1
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %10, align 1
  br label %do.body49.i

do.body49.i:                                      ; preds = %do.body49.backedge.i, %if.end42.i
  %retries.0229.i = phi i32 [ 0, %if.end42.i ], [ %retries.0229.be.i, %do.body49.backedge.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %29 = load i32, ptr @scsi_logging_level, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp51.not.i = icmp eq i32 %30, 0
  br i1 %cmp51.not.i, label %do.body49.i.do.end61.i_crit_edge, label %do.body56.i, !prof !192

do.body49.i.do.end61.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end61.i

do.body56.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %sdev.0.i, ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef %retries.0229.i) #13
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.body56.i, %do.body49.i.do.end61.i_crit_edge
  %call.i209.i = call i32 @__scsi_execute(ptr noundef %sdev.0.i, ptr noundef nonnull %scsi_cmd.i, i32 noundef 2, ptr noundef nonnull %call9.i.i, i32 noundef %length.0.i, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %31 = load i32, ptr @scsi_logging_level, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp66.not.i = icmp eq i32 %32, 0
  br i1 %cmp66.not.i, label %do.end61.i.do.end81.i_crit_edge, label %do.body75.i, !prof !192

do.end61.i.do.end81.i_crit_edge:                  ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end81.i

do.body75.i:                                      ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i)
  %tobool76.not.i = icmp eq i32 %call.i209.i, 0
  %cond.i = select i1 %tobool76.not.i, ptr @.str.39, ptr @.str.38
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %sdev.0.i, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond.i, i32 noundef %retries.0229.i, i32 noundef %call.i209.i) #13
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.body75.i, %do.end61.i.do.end81.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i)
  %cmp82.i = icmp eq i32 %call.i209.i, 0
  br i1 %cmp82.i, label %if.end96.i, label %if.else.i

if.else.i:                                        ; preds = %do.end81.i
  %33 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sshdr.i, align 8
  %35 = and i8 %34, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %35)
  %cmp.i210.i = icmp eq i8 %35, 112
  br i1 %cmp.i210.i, label %if.then86.i, label %for.inc.i

if.then86.i:                                      ; preds = %if.else.i
  %36 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %37)
  %cmp88.not.i = icmp eq i8 %37, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retries.0229.i)
  %cmp47.i = icmp ult i32 %retries.0229.i, 2
  %or.cond.i = select i1 %cmp88.not.i, i1 %cmp47.i, i1 false
  br i1 %or.cond.i, label %if.then86.i.do.body49.backedge.i_crit_edge, label %if.then86.i.out_err.i_crit_edge

if.then86.i.out_err.i_crit_edge:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

if.then86.i.do.body49.backedge.i_crit_edge:       ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49.backedge.i

for.inc.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retries.0229.i)
  %cmp47.old.i = icmp ult i32 %retries.0229.i, 2
  br i1 %cmp47.old.i, label %for.inc.i.do.body49.backedge.i_crit_edge, label %for.inc.i.out_err.i_crit_edge

for.inc.i.out_err.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

for.inc.i.do.body49.backedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49.backedge.i

do.body49.backedge.i:                             ; preds = %for.inc.i.do.body49.backedge.i_crit_edge, %if.then86.i.do.body49.backedge.i_crit_edge
  %retries.0229.be.i = add nuw nsw i32 %retries.0229.i, 1
  br label %do.body49.i

if.end96.i:                                       ; preds = %do.end81.i
  %38 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call9.i.i, align 128
  %add.i = add i32 %39, 8
  %cmp99.i = icmp ugt i32 %add.i, %length.0.i
  br i1 %cmp99.i, label %if.then101.i, label %if.end106.i

if.then101.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %if.end8.i.i

if.end106.i:                                      ; preds = %if.end96.i
  %div208.i = lshr i32 %39, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %40 = load i32, ptr @scsi_logging_level, align 4
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp113.not.i = icmp eq i32 %41, 0
  br i1 %cmp113.not.i, label %if.end106.i.do.end127.i_crit_edge, label %do.body122.i, !prof !192

if.end106.i.do.end127.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end127.i

do.body122.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %sdev.0.i, ptr noundef null, ptr noundef nonnull @.str.56) #13
  br label %do.end127.i

do.end127.i:                                      ; preds = %do.body122.i, %if.end106.i.do.end127.i_crit_edge
  %arrayidx130.i = getelementptr %struct.scsi_lun, ptr %call9.i.i, i32 %div208.i
  %lunp.0232.i = getelementptr %struct.scsi_lun, ptr %call9.i.i, i32 1
  %cmp131.not233.i = icmp ugt ptr %lunp.0232.i, %arrayidx130.i
  br i1 %cmp131.not233.i, label %do.end127.i.out_err.i_crit_edge, label %do.end127.i.for.body133.i_crit_edge

do.end127.i.for.body133.i_crit_edge:              ; preds = %do.end127.i
  br label %for.body133.i

do.end127.i.out_err.i_crit_edge:                  ; preds = %do.end127.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

for.body133.i:                                    ; preds = %for.inc146.i.for.body133.i_crit_edge, %do.end127.i.for.body133.i_crit_edge
  %lunp.0234.i = phi ptr [ %lunp.0.i, %for.inc146.i.for.body133.i_crit_edge ], [ %lunp.0232.i, %do.end127.i.for.body133.i_crit_edge ]
  %call134.i = call i64 @scsilun_to_int(ptr noundef %lunp.0234.i) #13
  %42 = ptrtoint ptr %sdev.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdev.0.i, align 8
  %max_lun135.i = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %max_lun135.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %max_lun135.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call134.i, i64 %45)
  %cmp136.i = icmp ugt i64 %call134.i, %45
  br i1 %cmp136.i, label %if.then138.i, label %if.else139.i

if.then138.i:                                     ; preds = %for.body133.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.44, ptr noundef %sdev.0.i, ptr noundef null, ptr noundef nonnull @.str.57, i64 noundef %call134.i) #13
  br label %for.inc146.i

if.else139.i:                                     ; preds = %for.body133.i
  %call140.i = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %call1, i64 noundef %call134.i, ptr noundef null, ptr noundef null, i32 noundef %rescan, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %cmp141.i = icmp eq i32 %call140.i, 0
  br i1 %cmp141.i, label %cleanup.i, label %if.else139.i.for.inc146.i_crit_edge

if.else139.i.for.inc146.i_crit_edge:              ; preds = %if.else139.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc146.i

cleanup.i:                                        ; preds = %if.else139.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.18, ptr noundef %sdev.0.i, ptr noundef null, ptr noundef nonnull @.str.58, i64 noundef %call134.i) #13
  br label %out_err.i

for.inc146.i:                                     ; preds = %if.else139.i.for.inc146.i_crit_edge, %if.then138.i
  %lunp.0.i = getelementptr %struct.scsi_lun, ptr %lunp.0234.i, i32 1
  %cmp131.not.i = icmp ugt ptr %lunp.0.i, %arrayidx130.i
  br i1 %cmp131.not.i, label %for.inc146.i.out_err.i_crit_edge, label %for.inc146.i.for.body133.i_crit_edge

for.inc146.i.for.body133.i_crit_edge:             ; preds = %for.inc146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body133.i

for.inc146.i.out_err.i_crit_edge:                 ; preds = %for.inc146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err.i

out_err.i:                                        ; preds = %for.inc146.i.out_err.i_crit_edge, %cleanup.i, %do.end127.i.out_err.i_crit_edge, %for.inc.i.out_err.i_crit_edge, %if.then86.i.out_err.i_crit_edge
  %ret.0.i = phi i32 [ 0, %cleanup.i ], [ 0, %do.end127.i.out_err.i_crit_edge ], [ 0, %for.inc146.i.out_err.i_crit_edge ], [ 1, %if.then86.i.out_err.i_crit_edge ], [ 1, %for.inc.i.out_err.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %out.i

out.i:                                            ; preds = %out_err.i, %do.end.i
  %ret.1.i = phi i32 [ %ret.0.i, %out_err.i ], [ 0, %do.end.i ]
  %sdev_state.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0.i, i32 0, i32 69
  %46 = ptrtoint ptr %sdev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sdev_state.i.i, align 4
  %48 = and i32 %47, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %.not.i = icmp eq i32 %48, 1
  br i1 %.not.i, label %if.then150.i, label %out.i.scsi_report_lun_scan.exit_crit_edge

out.i.scsi_report_lun_scan.exit_crit_edge:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_report_lun_scan.exit

if.then150.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__scsi_remove_device(ptr noundef %sdev.0.i) #13
  br label %scsi_report_lun_scan.exit

scsi_report_lun_scan.exit.thread:                 ; preds = %if.end22.i.scsi_report_lun_scan.exit.thread_crit_edge, %lor.lhs.false.i.scsi_report_lun_scan.exit.thread_crit_edge, %land.lhs.true12.i.scsi_report_lun_scan.exit.thread_crit_edge, %if.end.i.scsi_report_lun_scan.exit.thread_crit_edge, %dev_to_shost.exit.i.scsi_report_lun_scan.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  br label %if.then14

scsi_report_lun_scan.exit.thread59:               ; preds = %if.then35.i, %if.then28.i.scsi_report_lun_scan.exit.thread59_crit_edge, %if.end18.i.scsi_report_lun_scan.exit.thread59_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  br label %out_reap

scsi_report_lun_scan.exit:                        ; preds = %if.then150.i, %out.i.scsi_report_lun_scan.exit_crit_edge
  call void @scsi_device_put(ptr noundef %sdev.0.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp13.not = icmp eq i32 %ret.1.i, 0
  br i1 %cmp13.not, label %scsi_report_lun_scan.exit.out_reap_crit_edge, label %scsi_report_lun_scan.exit.if.then14_crit_edge

scsi_report_lun_scan.exit.if.then14_crit_edge:    ; preds = %scsi_report_lun_scan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

scsi_report_lun_scan.exit.out_reap_crit_edge:     ; preds = %scsi_report_lun_scan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_reap

if.then14:                                        ; preds = %scsi_report_lun_scan.exit.if.then14_crit_edge, %scsi_report_lun_scan.exit.thread
  %49 = ptrtoint ptr %bflags to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bflags, align 8
  %scsi_level = getelementptr inbounds %struct.scsi_target, ptr %call1, i32 0, i32 12
  %51 = ptrtoint ptr %scsi_level to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %scsi_level, align 8
  %parent.i38 = getelementptr inbounds %struct.scsi_target, ptr %call1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %parent.i38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i38, align 8
  br label %while.cond.i.i42

while.cond.i.i42:                                 ; preds = %while.body.i.i45.while.cond.i.i42_crit_edge, %if.then14
  %dev.addr.0.i.i39 = phi ptr [ %54, %if.then14 ], [ %56, %while.body.i.i45.while.cond.i.i42_crit_edge ]
  %call.i.i40 = call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %while.body.i.i45, label %while.end.i.i47

while.body.i.i45:                                 ; preds = %while.cond.i.i42
  %parent.i.i43 = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i39, i32 0, i32 1
  %55 = ptrtoint ptr %parent.i.i43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parent.i.i43, align 8
  %tobool1.not.i.i44 = icmp eq ptr %56, null
  br i1 %tobool1.not.i.i44, label %while.body.i.i45.dev_to_shost.exit.i49_crit_edge, label %while.body.i.i45.while.cond.i.i42_crit_edge

while.body.i.i45.while.cond.i.i42_crit_edge:      ; preds = %while.body.i.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i42

while.body.i.i45.dev_to_shost.exit.i49_crit_edge: ; preds = %while.body.i.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit.i49

while.end.i.i47:                                  ; preds = %while.cond.i.i42
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i46 = getelementptr i8, ptr %dev.addr.0.i.i39, i32 -584
  br label %dev_to_shost.exit.i49

dev_to_shost.exit.i49:                            ; preds = %while.end.i.i47, %while.body.i.i45.dev_to_shost.exit.i49_crit_edge
  %retval.0.i.i48 = phi ptr [ %add.ptr.i.i46, %while.end.i.i47 ], [ null, %while.body.i.i45.dev_to_shost.exit.i49_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %57 = load i32, ptr @scsi_logging_level, align 4
  %58 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.not.i = icmp eq i32 %58, 0
  br i1 %cmp.not.i, label %dev_to_shost.exit.i49.do.end8.i_crit_edge, label %do.end.i51, !prof !192

dev_to_shost.exit.i49.do.end8.i_crit_edge:        ; preds = %dev_to_shost.exit.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8.i

do.end.i51:                                       ; preds = %dev_to_shost.exit.i49
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %dev.i, ptr noundef nonnull @.str.59) #18
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i51, %dev_to_shost.exit.i49.do.end8.i_crit_edge
  %59 = load i64, ptr @max_scsi_luns, align 8
  %max_lun.i52 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i48, i32 0, i32 22
  %60 = ptrtoint ptr %max_lun.i52 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %max_lun.i52, align 8
  %62 = call i64 @llvm.umin.i64(i64 %59, i64 %61) #13
  %and10.i = and i64 %50, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i)
  %tobool11.not.i = icmp ne i64 %and10.i, 0
  %63 = and i64 %50, 66
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %64 = icmp eq i64 %63, 0
  %max_dev_lun.1.v.i = select i1 %64, i64 %62, i64 %61
  %max_dev_lun.1.i = trunc i64 %max_dev_lun.1.v.i to i32
  %and22.i = and i64 %50, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22.i)
  %tobool23.not.i53 = icmp eq i64 %and22.i, 0
  %65 = call i32 @llvm.umin.i32(i32 %max_dev_lun.1.i, i32 5) #13
  %max_dev_lun.2.i = select i1 %tobool23.not.i53, i32 %max_dev_lun.1.i, i32 %65
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %52)
  %cmp33.i = icmp ult i8 %52, 4
  %and35.i = and i64 %50, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35.i)
  %tobool36.not.i = icmp eq i64 %and35.i, 0
  %or.cond.i54 = and i1 %cmp33.i, %tobool36.not.i
  %minmaxop.i = select i1 %or.cond.i54, i32 8, i32 256
  %max_dev_lun.3.i = call i32 @llvm.umin.i32(i32 %minmaxop.i, i32 %max_dev_lun.2.i) #13
  %conv54.i = zext i32 %max_dev_lun.3.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_dev_lun.3.i)
  %cmp5592.i = icmp ugt i32 %max_dev_lun.3.i, 1
  br i1 %cmp5592.i, label %do.end8.i.for.body.i_crit_edge, label %do.end8.i.out_reap_crit_edge

do.end8.i.out_reap_crit_edge:                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_reap

do.end8.i.for.body.i_crit_edge:                   ; preds = %do.end8.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end8.i.for.body.i_crit_edge
  %lun.093.i = phi i64 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %do.end8.i.for.body.i_crit_edge ]
  %call57.i = call fastcc i32 @scsi_probe_and_add_lun(ptr noundef nonnull %call1, i64 noundef %lun.093.i, ptr noundef null, ptr noundef null, i32 noundef %rescan, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call57.i)
  %cmp58.not.i = icmp eq i32 %call57.i, 2
  %brmerge.i = or i1 %tobool11.not.i, %cmp58.not.i
  %inc.i = add nuw nsw i64 %lun.093.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc.i, i64 %conv54.i)
  %cmp55.i = icmp ult i64 %inc.i, %conv54.i
  %or.cond96.i = select i1 %brmerge.i, i1 %cmp55.i, i1 false
  br i1 %or.cond96.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.out_reap_crit_edge

for.body.i.out_reap_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_reap

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

out_reap:                                         ; preds = %for.body.i.out_reap_crit_edge, %do.end8.i.out_reap_crit_edge, %scsi_report_lun_scan.exit.out_reap_crit_edge, %scsi_report_lun_scan.exit.thread59, %if.end7.out_reap_crit_edge, %if.then5
  call void @scsi_autopm_put_target(ptr noundef nonnull %call1) #13
  call void @scsi_target_reap(ptr noundef nonnull %call1)
  %dev = getelementptr inbounds %struct.scsi_target, ptr %call1, i32 0, i32 3
  call void @put_device(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %out_reap, %if.end.cleanup_crit_edge, %dev_to_shost.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bflags) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_scan_host_selected(ptr noundef %shost, i32 noundef %channel, i32 noundef %id, i64 noundef %lun, i32 noundef %rescan) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %0 = load i32, ptr @scsi_logging_level, align 4
  %1 = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end, !prof !192

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %shost_gendev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %channel, i32 noundef %id, i64 noundef %lun) #18
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %channel)
  %cmp6.not = icmp eq i32 %channel, -1
  br i1 %cmp6.not, label %do.end5.lor.lhs.false_crit_edge, label %land.lhs.true

do.end5.lor.lhs.false_crit_edge:                  ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end5
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 20
  %2 = ptrtoint ptr %max_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_channel, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channel)
  %cmp7 = icmp ult i32 %3, %channel
  br i1 %cmp7, label %land.lhs.true.return_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %do.end5.lor.lhs.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id)
  %cmp8.not = icmp eq i32 %id, -1
  br i1 %cmp8.not, label %lor.lhs.false.lor.lhs.false11_crit_edge, label %land.lhs.true9

lor.lhs.false.lor.lhs.false11_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false11

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 21
  %4 = ptrtoint ptr %max_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %id)
  %cmp10.not = icmp ugt i32 %5, %id
  br i1 %cmp10.not, label %land.lhs.true9.lor.lhs.false11_crit_edge, label %land.lhs.true9.return_crit_edge

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true9.lor.lhs.false11_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %land.lhs.true9.lor.lhs.false11_crit_edge, %lor.lhs.false.lor.lhs.false11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %lun)
  %cmp12.not = icmp eq i64 %lun, -1
  br i1 %cmp12.not, label %lor.lhs.false11.if.end16_crit_edge, label %land.lhs.true13

lor.lhs.false11.if.end16_crit_edge:               ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true13:                                  ; preds = %lor.lhs.false11
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 22
  %6 = ptrtoint ptr %max_lun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %max_lun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %lun)
  %cmp14.not = icmp ugt i64 %7, %lun
  br i1 %cmp14.not, label %land.lhs.true13.if.end16_crit_edge, label %land.lhs.true13.return_crit_edge

land.lhs.true13.return_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true13.if.end16_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true13.if.end16_crit_edge, %lor.lhs.false11.if.end16_crit_edge
  %scan_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #13
  %async_scan = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %8 = ptrtoint ptr %async_scan to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %async_scan, align 8
  %9 = and i16 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool17.not = icmp eq i16 %9, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @scsi_complete_async_scans()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 48
  %10 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shost_state.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %11, label %if.end19.if.end31_crit_edge [
    i32 5, label %if.end19.land.lhs.true22_crit_edge
    i32 2, label %if.end19.land.lhs.true22_crit_edge87
  ]

if.end19.land.lhs.true22_crit_edge87:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

if.end19.land.lhs.true22_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true22

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.end19.land.lhs.true22_crit_edge, %if.end19.land.lhs.true22_crit_edge87
  %call23 = tail call i32 @scsi_autopm_get_host(ptr noundef %shost) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %land.lhs.true22.if.end31_crit_edge

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then25:                                        ; preds = %land.lhs.true22
  br i1 %cmp6.not, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then25
  %max_channel28 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 20
  %shost_gendev6.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %max_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %scsi_scan_channel.exit.for.body_crit_edge, %for.cond.preheader
  %channel.addr.081 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %scsi_scan_channel.exit.for.body_crit_edge ]
  br i1 %cmp8.not, label %for.cond.preheader.i, label %if.else5.i

for.cond.preheader.i:                             ; preds = %for.body
  %13 = ptrtoint ptr %max_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp120.not.i = icmp eq i32 %14, 0
  br i1 %cmp120.not.i, label %for.cond.preheader.i.scsi_scan_channel.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.scsi_scan_channel.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_scan_channel.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %15 = phi i32 [ %20, %for.body.i.for.body.i_crit_edge ], [ %14, %for.cond.preheader.i.for.body.i_crit_edge ]
  %id.addr.021.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %async_scan to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %async_scan, align 8
  %17 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  %18 = xor i32 %id.addr.021.i, -1
  %sub4.i = add i32 %15, %18
  %order_id.0.i = select i1 %tobool.not.i, i32 %id.addr.021.i, i32 %sub4.i
  tail call fastcc void @__scsi_scan_target(ptr noundef %shost_gendev6.i, i32 noundef %channel.addr.081, i32 noundef %order_id.0.i, i64 noundef %lun, i32 noundef %rescan) #13
  %inc.i = add nuw i32 %id.addr.021.i, 1
  %19 = ptrtoint ptr %max_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_id.i, align 4
  %cmp1.i = icmp ugt i32 %20, %inc.i
  br i1 %cmp1.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.scsi_scan_channel.exit_crit_edge

for.body.i.scsi_scan_channel.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_scan_channel.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.else5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @__scsi_scan_target(ptr noundef %shost_gendev6.i, i32 noundef %channel.addr.081, i32 noundef %id, i64 noundef %lun, i32 noundef %rescan) #13
  br label %scsi_scan_channel.exit

scsi_scan_channel.exit:                           ; preds = %if.else5.i, %for.body.i.scsi_scan_channel.exit_crit_edge, %for.cond.preheader.i.scsi_scan_channel.exit_crit_edge
  %inc = add i32 %channel.addr.081, 1
  %21 = ptrtoint ptr %max_channel28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_channel28, align 8
  %cmp29.not = icmp ugt i32 %inc, %22
  br i1 %cmp29.not, label %scsi_scan_channel.exit.if.end30_crit_edge, label %scsi_scan_channel.exit.for.body_crit_edge

scsi_scan_channel.exit.for.body_crit_edge:        ; preds = %scsi_scan_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

scsi_scan_channel.exit.if.end30_crit_edge:        ; preds = %scsi_scan_channel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.else:                                          ; preds = %if.then25
  br i1 %cmp8.not, label %for.cond.preheader.i65, label %if.else5.i78

for.cond.preheader.i65:                           ; preds = %if.else
  %max_id.i63 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 21
  %23 = ptrtoint ptr %max_id.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_id.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp120.not.i64 = icmp eq i32 %24, 0
  br i1 %cmp120.not.i64, label %for.cond.preheader.i65.if.end30_crit_edge, label %for.body.lr.ph.i68

for.cond.preheader.i65.if.end30_crit_edge:        ; preds = %for.cond.preheader.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

for.body.lr.ph.i68:                               ; preds = %for.cond.preheader.i65
  %shost_gendev.i67 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.body.i76.for.body.i76_crit_edge, %for.body.lr.ph.i68
  %25 = phi i32 [ %24, %for.body.lr.ph.i68 ], [ %30, %for.body.i76.for.body.i76_crit_edge ]
  %id.addr.021.i69 = phi i32 [ 0, %for.body.lr.ph.i68 ], [ %inc.i74, %for.body.i76.for.body.i76_crit_edge ]
  %26 = ptrtoint ptr %async_scan to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i70 = load i16, ptr %async_scan, align 8
  %27 = and i16 %bf.load.i70, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i71 = icmp eq i16 %27, 0
  %28 = xor i32 %id.addr.021.i69, -1
  %sub4.i72 = add i32 %25, %28
  %order_id.0.i73 = select i1 %tobool.not.i71, i32 %id.addr.021.i69, i32 %sub4.i72
  tail call fastcc void @__scsi_scan_target(ptr noundef %shost_gendev.i67, i32 noundef %channel, i32 noundef %order_id.0.i73, i64 noundef %lun, i32 noundef %rescan) #13
  %inc.i74 = add nuw i32 %id.addr.021.i69, 1
  %29 = ptrtoint ptr %max_id.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_id.i63, align 4
  %cmp1.i75 = icmp ugt i32 %30, %inc.i74
  br i1 %cmp1.i75, label %for.body.i76.for.body.i76_crit_edge, label %for.body.i76.if.end30_crit_edge

for.body.i76.if.end30_crit_edge:                  ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

for.body.i76.for.body.i76_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i76

if.else5.i78:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %shost_gendev6.i77 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call fastcc void @__scsi_scan_target(ptr noundef %shost_gendev6.i77, i32 noundef %channel, i32 noundef %id, i64 noundef %lun, i32 noundef %rescan) #13
  br label %if.end30

if.end30:                                         ; preds = %if.else5.i78, %for.body.i76.if.end30_crit_edge, %for.cond.preheader.i65.if.end30_crit_edge, %scsi_scan_channel.exit.if.end30_crit_edge
  tail call void @scsi_autopm_put_host(ptr noundef %shost) #13
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %land.lhs.true22.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %scan_mutex) #13
  br label %return

return:                                           ; preds = %if.end31, %land.lhs.true13.return_crit_edge, %land.lhs.true9.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %land.lhs.true13.return_crit_edge ], [ -22, %land.lhs.true9.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_scan_host(ptr noundef %shost) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bcmp15 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @scsi_scan_type, ptr noundef nonnull dereferenceable(6) @.str.5, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15)
  %cmp2 = icmp eq i32 %bcmp15, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @scsi_autopm_get_host(ptr noundef %shost) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @scsi_scan_type, ptr noundef nonnull dereferenceable(4) @.str.61, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end6.if.then8_crit_edge, label %if.end.i

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.end.i:                                         ; preds = %if.end6
  %scan_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex.i, i32 noundef 0) #13
  %async_scan.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 36
  %0 = ptrtoint ptr %async_scan.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %async_scan.i, align 8
  %1 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.end2.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.64, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #18
  br label %err.i

if.end2.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 68) #17
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.end2.i.err.i_crit_edge, label %if.end6.i

if.end2.i.err.i_crit_edge:                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.i

if.end6.i:                                        ; preds = %if.end2.i
  %call7.i = tail call ptr @scsi_host_get(ptr noundef %shost) #13
  %shost8.i = getelementptr inbounds %struct.async_scan_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %shost8.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %shost8.i, align 8
  %tobool10.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool10.not.i, label %if.end6.i.err.i_crit_edge, label %if.end12.i

if.end6.i.err.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err.i

if.end12.i:                                       ; preds = %if.end6.i
  %prev_finished.i = getelementptr inbounds %struct.async_scan_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %prev_finished.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %prev_finished.i, align 4
  %wait.i.i = getelementptr inbounds %struct.async_scan_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #13
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %5 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_lock.i, align 4
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %7 = ptrtoint ptr %async_scan.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load23.i = load i16, ptr %async_scan.i, align 8
  %bf.set.i = or i16 %bf.load23.i, 1024
  store i16 %bf.set.i, ptr %async_scan.i, align 8
  %8 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call17.i) #13
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #13
  %10 = load volatile ptr, ptr @scanning_hosts, align 4
  %cmp.i.not.i = icmp eq ptr %10, @scanning_hosts
  br i1 %cmp.i.not.i, label %if.then29.i, label %if.end12.i.if.end31.i_crit_edge

if.end12.i.if.end31.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef %prev_finished.i) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end12.i.if.end31.i_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef nonnull @scanning_hosts) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end31.i.if.end9_crit_edge

if.end31.i.if.end9_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end.i.i.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @scanning_hosts, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @scanning_hosts, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %if.end9

err.i:                                            ; preds = %if.end6.i.err.i_crit_edge, %if.end2.i.err.i_crit_edge, %do.end.i
  %data.0.i = phi ptr [ null, %do.end.i ], [ %call7.i.i, %if.end6.i.err.i_crit_edge ], [ null, %if.end2.i.err.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i) #13
  tail call void @kfree(ptr noundef %data.0.i) #13
  br label %if.then8

if.then8:                                         ; preds = %err.i, %if.end6.if.then8_crit_edge
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 11
  %15 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hostt.i, align 8
  %scan_finished.i = getelementptr inbounds %struct.scsi_host_template, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %scan_finished.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %scan_finished.i, align 4
  %tobool.not.i16 = icmp eq ptr %18, null
  br i1 %tobool.not.i16, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %scan_start.i = getelementptr inbounds %struct.scsi_host_template, ptr %16, i32 0, i32 20
  %20 = ptrtoint ptr %scan_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scan_start.i, align 8
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i17_crit_edge, label %if.then3.i

if.then.i.if.end.i17_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i17

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %21(ptr noundef %shost) #13
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then3.i, %if.then.i.if.end.i17_crit_edge
  %22 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hostt.i, align 8
  %scan_finished717.i = getelementptr inbounds %struct.scsi_host_template, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %scan_finished717.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scan_finished717.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub18.i = sub i32 %26, %19
  %call19.i = tail call i32 %25(ptr noundef %shost, i32 noundef %sub18.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool8.not20.i = icmp eq i32 %call19.i, 0
  br i1 %tobool8.not20.i, label %if.end.i17.while.body.i_crit_edge, label %if.end.i17.do_scsi_scan_host.exit_crit_edge

if.end.i17.do_scsi_scan_host.exit_crit_edge:      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_scsi_scan_host.exit

if.end.i17.while.body.i_crit_edge:                ; preds = %if.end.i17
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i17.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #13
  %27 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hostt.i, align 8
  %scan_finished7.i = getelementptr inbounds %struct.scsi_host_template, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %scan_finished7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scan_finished7.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %31, %19
  %call.i = tail call i32 %30(ptr noundef %shost, i32 noundef %sub.i) #13
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.do_scsi_scan_host.exit_crit_edge

while.body.i.do_scsi_scan_host.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_scsi_scan_host.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 @scsi_scan_host_selected(ptr noundef %shost, i32 noundef -1, i32 noundef -1, i64 noundef -1, i32 noundef 0) #13
  br label %do_scsi_scan_host.exit

do_scsi_scan_host.exit:                           ; preds = %if.else.i, %while.body.i.do_scsi_scan_host.exit_crit_edge, %if.end.i17.do_scsi_scan_host.exit_crit_edge
  tail call void @scsi_autopm_put_host(ptr noundef %shost) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i.i, %if.end31.i.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @async_scan_lock) #13
  %call.i18 = tail call i64 @async_schedule_node(ptr noundef nonnull @do_scan_async, ptr noundef nonnull %call7.i.i, i32 noundef -1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do_scsi_scan_host.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_scan_async(ptr noundef %_data, i64 noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.async_scan_data, ptr %_data, i32 0, i32 1
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 4
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt.i, align 8
  %scan_finished.i = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %scan_finished.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_finished.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %scan_start.i = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %scan_start.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scan_start.i, align 8
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %8(ptr noundef %1) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostt.i, align 8
  %scan_finished717.i = getelementptr inbounds %struct.scsi_host_template, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %scan_finished717.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scan_finished717.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub18.i = sub i32 %13, %6
  %call19.i = tail call i32 %12(ptr noundef %1, i32 noundef %sub18.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool8.not20.i = icmp eq i32 %call19.i, 0
  br i1 %tobool8.not20.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do_scsi_scan_host.exit_crit_edge

if.end.i.do_scsi_scan_host.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_scsi_scan_host.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #13
  %14 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hostt.i, align 8
  %scan_finished7.i = getelementptr inbounds %struct.scsi_host_template, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %scan_finished7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scan_finished7.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %18, %6
  %call.i = tail call i32 %17(ptr noundef %1, i32 noundef %sub.i) #13
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.do_scsi_scan_host.exit_crit_edge

while.body.i.do_scsi_scan_host.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_scsi_scan_host.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 @scsi_scan_host_selected(ptr noundef %1, i32 noundef -1, i32 noundef -1, i64 noundef -1, i32 noundef 0) #13
  br label %do_scsi_scan_host.exit

do_scsi_scan_host.exit:                           ; preds = %if.else.i, %while.body.i.do_scsi_scan_host.exit_crit_edge, %if.end.i.do_scsi_scan_host.exit_crit_edge
  %tobool.not.i3 = icmp eq ptr %_data, null
  br i1 %tobool.not.i3, label %do_scsi_scan_host.exit.scsi_finish_async_scan.exit_crit_edge, label %if.end.i5

do_scsi_scan_host.exit.scsi_finish_async_scan.exit_crit_edge: ; preds = %do_scsi_scan_host.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_finish_async_scan.exit

if.end.i5:                                        ; preds = %do_scsi_scan_host.exit
  %19 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shost1, align 4
  %scan_mutex.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex.i, i32 noundef 0) #13
  %async_scan.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 36
  %21 = ptrtoint ptr %async_scan.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.i = load i16, ptr %async_scan.i, align 8
  %22 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool2.not.i4 = icmp eq i16 %22, 0
  br i1 %tobool2.not.i4, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #15
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.8, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.65) #18
  tail call void @dump_stack() #18
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i) #13
  br label %scsi_finish_async_scan.exit

if.end5.i:                                        ; preds = %if.end.i5
  %prev_finished.i = getelementptr inbounds %struct.async_scan_data, ptr %_data, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %prev_finished.i) #13
  %call.i.i = tail call ptr @__scsi_iterate_devices(ptr noundef %20, ptr noundef null) #13
  %tobool.not18.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not18.i.i, label %if.end5.i.scsi_sysfs_add_devices.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end5.i.scsi_sysfs_add_devices.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_sysfs_add_devices.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end5.i
  %shost_state.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 48
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sdev.019.i.i = phi ptr [ %call.i.i, %for.body.lr.ph.i.i ], [ %call10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sdev_state.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.019.i.i, i32 0, i32 69
  %23 = ptrtoint ptr %sdev_state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sdev_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 4
  br i1 %cmp.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %is_visible.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.019.i.i, i32 0, i32 41
  %25 = ptrtoint ptr %is_visible.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i.i = load i64, ptr %is_visible.i.i, align 4
  %26 = and i64 %bf.load.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool1.not.i.i = icmp eq i64 %26, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %27 = ptrtoint ptr %shost_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %shost_state.i.i.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %28, label %if.end3.i.i.if.then8.i.i_crit_edge [
    i32 5, label %if.end3.i.i.lor.lhs.false.i.i_crit_edge
    i32 2, label %if.end3.i.i.lor.lhs.false.i.i_crit_edge6
  ]

if.end3.i.i.lor.lhs.false.i.i_crit_edge6:         ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

if.end3.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

if.end3.i.i.if.then8.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i.i.lor.lhs.false.i.i_crit_edge, %if.end3.i.i.lor.lhs.false.i.i_crit_edge6
  %call6.i.i = tail call i32 @scsi_sysfs_add_sdev(ptr noundef nonnull %sdev.019.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %cmp7.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i.if.then8.i.i_crit_edge

lor.lhs.false.i.i.if.then8.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then8.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then8.i.i_crit_edge, %if.end3.i.i.if.then8.i.i_crit_edge
  tail call void @__scsi_remove_device(ptr noundef nonnull %sdev.019.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %call10.i.i = tail call ptr @__scsi_iterate_devices(ptr noundef %20, ptr noundef nonnull %sdev.019.i.i) #13
  %tobool.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.scsi_sysfs_add_devices.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.scsi_sysfs_add_devices.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %scsi_sysfs_add_devices.exit.i

scsi_sysfs_add_devices.exit.i:                    ; preds = %for.inc.i.i.scsi_sysfs_add_devices.exit.i_crit_edge, %if.end5.i.scsi_sysfs_add_devices.exit.i_crit_edge
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %20, i32 0, i32 4
  %30 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host_lock.i, align 4
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #13
  %32 = ptrtoint ptr %async_scan.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load14.i = load i16, ptr %async_scan.i, align 8
  %bf.clear15.i = and i16 %bf.load14.i, -1025
  store i16 %bf.clear15.i, ptr %async_scan.i, align 8
  %33 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %call8.i) #13
  tail call void @mutex_unlock(ptr noundef %scan_mutex.i) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @async_scan_lock) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %_data) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %scsi_sysfs_add_devices.exit.i.list_del.exit.i_crit_edge

scsi_sysfs_add_devices.exit.i.list_del.exit.i_crit_edge: ; preds = %scsi_sysfs_add_devices.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %scsi_sysfs_add_devices.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %_data, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_data, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %scsi_sysfs_add_devices.exit.i.list_del.exit.i_crit_edge
  %41 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %_data, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %_data, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %43 = load volatile ptr, ptr @scanning_hosts, align 4
  %cmp.i39.not.i = icmp eq ptr %43, @scanning_hosts
  br i1 %cmp.i39.not.i, label %list_del.exit.i.if.end23.i_crit_edge, label %if.then20.i

list_del.exit.i.if.end23.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

if.then20.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev_finished22.i = getelementptr inbounds %struct.async_scan_data, ptr %43, i32 0, i32 2
  tail call void @complete(ptr noundef %prev_finished22.i) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %list_del.exit.i.if.end23.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @async_scan_lock) #13
  tail call void @scsi_autopm_put_host(ptr noundef %20) #13
  tail call void @scsi_host_put(ptr noundef %20) #13
  tail call void @kfree(ptr noundef nonnull %_data) #13
  br label %scsi_finish_async_scan.exit

scsi_finish_async_scan.exit:                      ; preds = %if.end23.i, %do.end.i, %do_scsi_scan_host.exit.scsi_finish_async_scan.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_forget_host(ptr noundef readonly %shost) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  br label %restart

restart:                                          ; preds = %if.end, %entry
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart
  %.pn.in = phi ptr [ %shost, %restart ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp7.not = icmp eq ptr %.pn, %shost
  br i1 %cmp7.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %sdev_state = getelementptr i8, ptr %.pn, i32 2468
  %3 = ptrtoint ptr %sdev_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sdev_state, align 4
  %cmp9 = icmp eq i32 %4, 4
  br i1 %cmp9, label %for.body.for.cond_crit_edge, label %if.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %sdev.0.le = getelementptr i8, ptr %.pn, i32 -8
  %5 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %call2) #13
  tail call void @__scsi_remove_device(ptr noundef %sdev.0.le) #13
  br label %restart

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scsi_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scsi_target_dev_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  tail call void @kfree(ptr noundef %add.ptr) #13
  tail call void @put_device(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_target_destroy(ptr noundef %starget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %state = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 13
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %do.body3, label %do.end8, !prof !188

do.body3:                                         ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/scsi_scan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #13, !srcloc !196
  unreachable

do.end8:                                          ; preds = %dev_to_shost.exit
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %state, align 4
  tail call void @transport_destroy_device(ptr noundef %dev1) #13
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock, align 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #13
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 11
  %9 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostt, align 8
  %target_destroy = getelementptr inbounds %struct.scsi_host_template, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %target_destroy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target_destroy, align 8
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %do.end8.if.end23_crit_edge, label %if.then20

do.end8.if.end23_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %12(ptr noundef %starget) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.end8.if.end23_crit_edge
  %siblings = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %siblings) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end23.list_del_init.exit_crit_edge

if.end23.list_del_init.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %siblings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %siblings, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end23.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %siblings, ptr %siblings, align 4
  %prev.i3.i = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %siblings, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call14) #13
  tail call void @put_device(ptr noundef %dev1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_setup_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup_by_target(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsi_get_device_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scsi_alloc_sdev(ptr noundef %starget, i64 noundef %lun, ptr noundef %hostdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  %parent = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.if.end8.i.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.body.i.if.end8.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %while.end.i, %while.body.i.if.end8.i.i_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.if.end8.i.i_crit_edge ]
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 12
  %4 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transportt, align 4
  %device_size = getelementptr inbounds %struct.scsi_transport_template, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %device_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device_size, align 4
  %add = add i32 %7, 2488
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.do.end110_crit_edge, label %if.end

if.end8.i.i.do.end110_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end110

if.end:                                           ; preds = %if.end8.i.i
  %vendor = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 30
  %8 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.35, ptr %vendor, align 4
  %model = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 31
  %9 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.35, ptr %model, align 8
  %rev = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 32
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.35, ptr %rev, align 4
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %call9.i.i, align 128
  %queue_ramp_up_period = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 14
  %12 = ptrtoint ptr %queue_ramp_up_period to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12000, ptr %queue_ramp_up_period, align 8
  %id = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 6
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 8
  %id2 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %id2, align 128
  %lun3 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %lun3 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %lun, ptr %lun3, align 8
  %channel = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 5
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %channel4 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 17
  %19 = ptrtoint ptr %channel4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %channel4, align 4
  %state_mutex = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 68
  tail call void @__mutex_init(ptr noundef %state_mutex, ptr noundef nonnull @.str.24, ptr noundef nonnull @scsi_alloc_sdev.__key) #13
  %sdev_state = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 69
  %20 = ptrtoint ptr %sdev_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %sdev_state, align 4
  %siblings = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %siblings to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %siblings, ptr %siblings, align 8
  %prev.i = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %siblings, ptr %prev.i, align 4
  %same_target_siblings = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %same_target_siblings to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %same_target_siblings, ptr %same_target_siblings, align 16
  %prev.i183 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i183 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %same_target_siblings, ptr %prev.i183, align 4
  %starved_entry = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %starved_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %starved_entry, ptr %starved_entry, align 4
  %prev.i184 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev.i184 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %starved_entry, ptr %prev.i184, align 8
  %event_list = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 48
  %27 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %event_list, ptr %event_list, align 16
  %prev.i185 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 48, i32 1
  %28 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %event_list, ptr %prev.i185, align 4
  %list_lock = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @scsi_alloc_sdev.__key.25, i16 noundef signext 3) #13
  %inquiry_mutex = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %inquiry_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @scsi_alloc_sdev.__key.27) #13
  %event_work = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 49
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #13
  %29 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %event_work, align 8
  %lockdep_map = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 49, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.30, ptr noundef nonnull @scsi_alloc_sdev.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry16 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 49, i32 1
  %30 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i186 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 49, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i186 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry16, ptr %prev.i186, align 32
  %func = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 49, i32 2
  %32 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @scsi_evt_thread, ptr %func, align 4
  %requeue_work = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 58
  tail call void @__init_work(ptr noundef %requeue_work, i32 noundef 0) #13
  %33 = ptrtoint ptr %requeue_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %requeue_work, align 4
  %lockdep_map26 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 58, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map26, ptr noundef nonnull @.str.32, ptr noundef nonnull @scsi_alloc_sdev.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry28 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 58, i32 1
  %34 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry28, ptr %entry28, align 8
  %prev.i187 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 58, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry28, ptr %prev.i187, align 4
  %func30 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 58, i32 2
  %36 = ptrtoint ptr %func30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @scsi_requeue_run_queue, ptr %func30, align 16
  %call34 = tail call ptr @get_device(ptr noundef %dev) #13
  %parent35 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 55, i32 1
  %37 = ptrtoint ptr %parent35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call34, ptr %parent35, align 32
  %sdev_target = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 37
  %38 = ptrtoint ptr %sdev_target to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %starget, ptr %sdev_target, align 32
  %hostdata36 = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 21
  %39 = ptrtoint ptr %hostdata36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %hostdata, ptr %hostdata36, align 8
  %max_device_blocked = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 50
  %40 = ptrtoint ptr %max_device_blocked to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %max_device_blocked, align 4
  %type = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 22
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %type, align 4
  %borken = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 41
  %42 = ptrtoint ptr %borken to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %bf.load = load i64, ptr %borken, align 4
  %bf.set = or i64 %bf.load, 288230376151711744
  store i64 %bf.set, ptr %borken, align 4
  %sg_reserved_size = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 64
  %43 = ptrtoint ptr %sg_reserved_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2147483647, ptr %sg_reserved_size, align 4
  %44 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call9.i.i, align 128
  %tag_set = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 13
  %call38 = tail call ptr @blk_mq_init_queue(ptr noundef %tag_set) #13
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @put_device(ptr noundef %dev) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %do.end110

if.end42:                                         ; preds = %if.end
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %call9.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %request_queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call38, ptr %request_queue, align 4
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %call38, i32 0, i32 10
  %47 = ptrtoint ptr %queuedata to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i, ptr %queuedata, align 4
  %48 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call9.i.i, align 128
  tail call void @__scsi_init_queue(ptr noundef %49, ptr noundef %call38) #13
  %call44 = tail call zeroext i1 @blk_get_queue(ptr noundef %call38) #13
  br i1 %call44, label %if.end42.if.end78_crit_edge, label %land.rhs

if.end42.if.end78_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

land.rhs:                                         ; preds = %if.end42
  %.b182 = load i1, ptr @scsi_alloc_sdev.__already_done, align 1
  br i1 %.b182, label %land.rhs.if.end78_crit_edge, label %if.then53, !prof !192

land.rhs.if.end78_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then53:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @scsi_alloc_sdev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 341, i32 noundef 9, ptr noundef null) #13
  br label %if.end78

if.end78:                                         ; preds = %if.then53, %land.rhs.if.end78_crit_edge, %if.end42.if.end78_crit_edge
  %50 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call9.i.i, align 128
  %cmd_per_lun = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %cmd_per_lun to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cmd_per_lun, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool87.not = icmp eq i16 %53, 0
  %narrow = select i1 %tobool87.not, i16 1, i16 %53
  %conv. = sext i16 %narrow to i32
  %call88 = tail call fastcc i32 @scsi_realloc_sdev_budget_map(ptr noundef nonnull %call9.i.i, i32 noundef %conv.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @put_device(ptr noundef %dev) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %do.end110

if.end92:                                         ; preds = %if.end78
  %call93 = tail call i32 @scsi_change_queue_depth(ptr noundef nonnull %call9.i.i, i32 noundef %conv.) #13
  tail call void @scsi_sysfs_device_initialize(ptr noundef nonnull %call9.i.i) #13
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 11
  %54 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hostt, align 8
  %slave_alloc = getelementptr inbounds %struct.scsi_host_template, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %slave_alloc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slave_alloc, align 8
  %tobool94.not = icmp eq ptr %57, null
  br i1 %tobool94.not, label %if.end92.cleanup_crit_edge, label %if.then95

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then95:                                        ; preds = %if.end92
  %call98 = tail call i32 %57(ptr noundef nonnull %call9.i.i) #13
  %58 = zext i32 %call98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call98, label %out [
    i32 0, label %if.then95.cleanup_crit_edge
    i32 -6, label %out.thread193
  ]

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out.thread193:                                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__scsi_remove_device(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup

out:                                              ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__scsi_remove_device(ptr noundef nonnull %call9.i.i) #13
  br label %do.end110

do.end110:                                        ; preds = %out, %if.then90, %if.then40, %if.end8.i.i.do.end110_crit_edge
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %out.thread193, %if.then95.cleanup_crit_edge, %if.end92.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.then95.cleanup_crit_edge ], [ %call9.i.i, %if.end92.cleanup_crit_edge ], [ null, %do.end110 ], [ null, %out.thread193 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scsi_unlock_floptical(ptr noundef %sdev, ptr noundef %result) unnamed_addr #2 align 64 {
entry:
  %scsi_cmd = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scsi_cmd) #13
  %0 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %scsi_cmd, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %scsi_cmd, i32 6
  %6 = call ptr @memset(ptr %5, i32 255, i32 10)
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.46, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.52) #13
  %7 = ptrtoint ptr %scsi_cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 26, ptr %scsi_cmd, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 46, ptr %1, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 42, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %scsi_cmd, i32 noundef 2, ptr noundef %result, i32 noundef 42, ptr noundef null, ptr noundef null, i32 noundef 200, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scsi_cmd) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_evt_thread(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_requeue_run_queue(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scsi_init_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scsi_realloc_sdev_budget_map(ptr noundef %sdev, i32 noundef %depth) unnamed_addr #2 align 64 {
entry:
  %sb_backup.sroa.0 = alloca { i32, i32, i32, i8 }, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %depth)
  %cmp.i = icmp ugt i32 %depth, 3
  br i1 %cmp.i, label %entry.while.cond.i_crit_edge, label %entry.sbitmap_calculate_shift.exit_crit_edge

entry.sbitmap_calculate_shift.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sbitmap_calculate_shift.exit

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %shift.0.i = phi i32 [ %dec.i, %while.cond.i.while.cond.i_crit_edge ], [ 5, %entry.while.cond.i_crit_edge ]
  %shl.i = shl i32 4, %shift.0.i
  %cmp1.i = icmp ugt i32 %shl.i, %depth
  %dec.i = add i32 %shift.0.i, -1
  br i1 %cmp1.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.sbitmap_calculate_shift.exit_crit_edge

while.cond.i.sbitmap_calculate_shift.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sbitmap_calculate_shift.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

sbitmap_calculate_shift.exit:                     ; preds = %while.cond.i.sbitmap_calculate_shift.exit_crit_edge, %entry.sbitmap_calculate_shift.exit_crit_edge
  %shift.1.i = phi i32 [ 5, %entry.sbitmap_calculate_shift.exit_crit_edge ], [ %shift.0.i, %while.cond.i.sbitmap_calculate_shift.exit_crit_edge ]
  %budget_map = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4
  %map = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sb_backup.sroa.0)
  %2 = call ptr @memset(ptr %sb_backup.sroa.0, i32 255, i32 16)
  br i1 %tobool.not, label %sbitmap_calculate_shift.exit.if.end9_crit_edge, label %if.end

sbitmap_calculate_shift.exit.if.end9_crit_edge:   ; preds = %sbitmap_calculate_shift.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end:                                           ; preds = %sbitmap_calculate_shift.exit
  %shift = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1.i, i32 %4)
  %cmp.not.not = icmp eq i32 %shift.1.i, %4
  br i1 %cmp.not.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %5 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request_queue, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %6) #13
  %7 = call ptr @memcpy(ptr %sb_backup.sroa.0, ptr %budget_map, i32 16)
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %sb_backup.sroa.5.0.copyload39 = load ptr, ptr %map, align 8
  %sb_backup.sroa.7.0.budget_map.sroa_idx = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 5
  %9 = ptrtoint ptr %sb_backup.sroa.7.0.budget_map.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %sb_backup.sroa.7.0.copyload42 = load ptr, ptr %sb_backup.sroa.7.0.budget_map.sroa_idx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %sbitmap_calculate_shift.exit.if.end9_crit_edge
  %sb_backup.sroa.7.0 = phi ptr [ %sb_backup.sroa.7.0.copyload42, %if.then7 ], [ inttoptr (i32 -1 to ptr), %sbitmap_calculate_shift.exit.if.end9_crit_edge ]
  %sb_backup.sroa.5.0 = phi ptr [ %sb_backup.sroa.5.0.copyload39, %if.then7 ], [ inttoptr (i32 -1 to ptr), %sbitmap_calculate_shift.exit.if.end9_crit_edge ]
  %call11 = tail call i32 @scsi_device_max_queue_depth(ptr noundef %sdev) #13
  %request_queue12 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %10 = ptrtoint ptr %request_queue12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request_queue12, align 4
  %node = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node, align 8
  %call13 = tail call i32 @sbitmap_init_node(ptr noundef %budget_map, i32 noundef %call11, i32 noundef %shift.1.i, i32 noundef 3264, i32 noundef %13, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool16.not = icmp eq i32 %call13, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %14 = call ptr @memcpy(ptr %budget_map, ptr %sb_backup.sroa.0, i32 16)
  %15 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sb_backup.sroa.5.0, ptr %map, align 8
  %sb_backup.sroa.7.0.budget_map.sroa_idx43 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 4, i32 5
  %16 = ptrtoint ptr %sb_backup.sroa.7.0.budget_map.sroa_idx43 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sb_backup.sroa.7.0, ptr %sb_backup.sroa.7.0.budget_map.sroa_idx43, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @free_percpu(ptr noundef %sb_backup.sroa.7.0) #13
  tail call void @kfree(ptr noundef %sb_backup.sroa.5.0) #13
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  %17 = ptrtoint ptr %request_queue12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %request_queue12, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %18) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end19 ], [ %call13, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sb_backup.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_sysfs_device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_max_queue_depth(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_type(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_state_name(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_configure_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_sysfs_add_sdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62, !63, !65, !66, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109, !110, !111, !112, !114, !116, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !133, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !151, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !174, !175, !177, !178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @__param_max_luns, !1, !"__param_max_luns", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_scan.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_lunstype281, !1, !"__UNIQUE_ID_max_lunstype281", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_luns282, !4, !"__UNIQUE_ID_max_luns282", i1 false, i1 false}
!4 = !{!"../drivers/scsi/scsi_scan.c", i32 91, i32 1}
!5 = !{ptr @__param_scan, !6, !"__param_scan", i1 false, i1 false}
!6 = !{!"../drivers/scsi/scsi_scan.c", i32 102, i32 1}
!7 = !{ptr @__UNIQUE_ID_scantype283, !6, !"__UNIQUE_ID_scantype283", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_scan284, !9, !"__UNIQUE_ID_scan284", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_scan.c", i32 104, i32 1}
!10 = !{ptr @__param_inq_timeout, !11, !"__param_inq_timeout", i1 false, i1 false}
!11 = !{!"../drivers/scsi/scsi_scan.c", i32 110, i32 1}
!12 = !{ptr @__UNIQUE_ID_inq_timeouttype285, !11, !"__UNIQUE_ID_inq_timeouttype285", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_inq_timeout286, !14, !"__UNIQUE_ID_inq_timeout286", i1 false, i1 false}
!14 = !{!"../drivers/scsi/scsi_scan.c", i32 111, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/scsi_scan.c", i32 135, i32 30}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/scsi_scan.c", i32 175, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scsi_complete_async_scans._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @scsi_complete_async_scans._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_scsi_is_target_device, !24, !"__ksymtab_scsi_is_target_device", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_scan.c", i32 419, i32 1}
!25 = !{ptr @__ksymtab_scsi_sanitize_inquiry_string, !26, !"__ksymtab_scsi_sanitize_inquiry_string", i1 false, i1 false}
!26 = !{!"../drivers/scsi/scsi_scan.c", i32 622, i32 1}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/scsi_scan.c", i32 1554, i32 30}
!29 = !{ptr @__ksymtab___scsi_add_device, !30, !"__ksymtab___scsi_add_device", i1 false, i1 false}
!30 = !{!"../drivers/scsi/scsi_scan.c", i32 1581, i32 1}
!31 = !{ptr @__ksymtab_scsi_add_device, !32, !"__ksymtab_scsi_add_device", i1 false, i1 false}
!32 = !{!"../drivers/scsi/scsi_scan.c", i32 1594, i32 1}
!33 = !{ptr @__ksymtab_scsi_rescan_device, !34, !"__ksymtab_scsi_rescan_device", i1 false, i1 false}
!34 = !{!"../drivers/scsi/scsi_scan.c", i32 1616, i32 1}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/scsi_scan.c", i32 1698, i32 30}
!37 = !{ptr @__ksymtab_scsi_scan_target, !38, !"__ksymtab_scsi_scan_target", i1 false, i1 false}
!38 = !{!"../drivers/scsi/scsi_scan.c", i32 1711, i32 1}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/scsi_scan.c", i32 1749, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @scsi_scan_host_selected._entry, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @scsi_scan_host_selected._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_scsi_scan_host, !47, !"__ksymtab_scsi_scan_host", i1 false, i1 false}
!47 = !{!"../drivers/scsi/scsi_scan.c", i32 1947, i32 1}
!48 = !{ptr @__param_str_max_luns, !1, !"__param_str_max_luns", i1 false, i1 false}
!49 = !{ptr @max_scsi_luns, !50, !"max_scsi_luns", i1 false, i1 false}
!50 = !{!"../drivers/scsi/scsi_scan.c", i32 88, i32 12}
!51 = !{ptr @__param_str_scan, !6, !"__param_str_scan", i1 false, i1 false}
!52 = !{ptr @__param_string_scan, !6, !"__param_string_scan", i1 false, i1 false}
!53 = !{ptr @__param_str_inq_timeout, !11, !"__param_str_inq_timeout", i1 false, i1 false}
!54 = !{ptr @scsi_inq_timeout, !55, !"scsi_inq_timeout", i1 false, i1 false}
!55 = !{!"../drivers/scsi/scsi_scan.c", i32 108, i32 21}
!56 = !{ptr @scsi_scan_type, !57, !"scsi_scan_type", i1 false, i1 false}
!57 = !{!"../drivers/scsi/scsi_scan.c", i32 100, i32 13}
!58 = !{ptr @scanning_hosts, !59, !"scanning_hosts", i1 false, i1 false}
!59 = !{!"../drivers/scsi/scsi_scan.c", i32 117, i32 8}
!60 = !{ptr @init_completion.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/completion.h", i32 87, i32 2}
!62 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_scan.c", i32 116, i32 8}
!65 = !{ptr @async_scan_lock, !64, !"async_scan_lock", i1 false, i1 false}
!66 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/scsi_scan.c", i32 411, i32 11}
!68 = !{ptr @scsi_target_type, !69, !"scsi_target_type", i1 false, i1 false}
!69 = !{!"../drivers/scsi/scsi_scan.c", i32 410, i32 27}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/scsi_scan.c", i32 500, i32 3}
!72 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @scsi_alloc_target._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @scsi_alloc_target._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/scsi_scan.c", i32 507, i32 20}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/scsi_scan.c", i32 535, i32 5}
!79 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @scsi_alloc_target._entry.16, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @scsi_alloc_target._entry_ptr.19, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/scsi_scan.c", i32 1151, i32 4}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/scsi_scan.c", i32 1194, i32 3}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/scsi_scan.c", i32 1198, i32 4}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/scsi_scan.c", i32 1238, i32 3}
!90 = !{ptr @scsi_alloc_sdev.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/scsi/scsi_scan.c", i32 295, i32 2}
!92 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @scsi_alloc_sdev.__key.25, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/scsi/scsi_scan.c", i32 301, i32 2}
!95 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @scsi_alloc_sdev.__key.27, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/scsi/scsi_scan.c", i32 302, i32 2}
!98 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @scsi_alloc_sdev.__key.29, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/scsi/scsi_scan.c", i32 303, i32 2}
!101 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @scsi_alloc_sdev.__key.31, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/scsi/scsi_scan.c", i32 304, i32 2}
!104 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/scsi/scsi_scan.c", i32 341, i32 2}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/scsi_scan.c", i32 380, i32 3}
!109 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @scsi_alloc_sdev._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @scsi_alloc_sdev._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/scsi_scan.c", i32 84, i32 44}
!114 = distinct !{null, !115, !"scsi_null_device_strs", i1 false, i1 false}
!115 = !{!"../drivers/scsi/scsi_scan.c", i32 84, i32 20}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/scsi_scan.c", i32 657, i32 2}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/scsi_scan.c", i32 676, i32 3}
!120 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/scsi_scan.c", i32 745, i32 3}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/scsi_scan.c", i32 782, i32 4}
!126 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @scsi_probe_lun._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @scsi_probe_lun._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/scsi_scan.c", i32 877, i32 28}
!131 = !{ptr @.str.44, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/scsi_scan.c", i32 900, i32 4}
!133 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__func__.scsi_add_lun, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/scsi_scan.c", i32 945, i32 2}
!137 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/scsi_scan.c", i32 1015, i32 3}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/scsi_scan.c", i32 1053, i32 5}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../drivers/scsi/scsi_scan.c", i32 1071, i32 2}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/scsi_scan.c", i32 206, i32 2}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/scsi_scan.c", i32 1430, i32 3}
!150 = !{ptr @scsi_report_lun_scan._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @scsi_report_lun_scan._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/scsi_scan.c", i32 1460, i32 3}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/scsi_scan.c", i32 1468, i32 3}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/scsi_scan.c", i32 1503, i32 2}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/scsi_scan.c", i32 1514, i32 4}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/scsi_scan.c", i32 1526, i32 5}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/scsi_scan.c", i32 1293, i32 2}
!164 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @scsi_sequential_lun_scan._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @scsi_sequential_lun_scan._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/scsi_scan.c", i32 1808, i32 30}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/scsi_scan.c", i32 1813, i32 3}
!171 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @scsi_prep_async_scan._entry, !170, !"_entry", i1 false, i1 false}
!174 = !{ptr @scsi_prep_async_scan._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/scsi_scan.c", i32 1865, i32 3}
!177 = !{ptr @scsi_finish_async_scan._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @scsi_finish_async_scan._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2154678848, i64 2154679337, i64 2154678885, i64 2154678941, i64 2154678975, i64 2154678999, i64 2154679040, i64 2154679061, i64 2154679089, i64 2154679123}
!190 = !{i64 2148484198}
!191 = !{i64 2148398638, i64 2148398670, i64 2148398699, i64 2148398733, i64 2148398764, i64 2148398787}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{i64 2149360312}
!194 = !{i64 879176, i64 879200, i64 879221, i64 879238, i64 879255}
!195 = !{!"auto-init"}
!196 = !{i64 2154665593, i64 2154666082, i64 2154665630, i64 2154665686, i64 2154665720, i64 2154665744, i64 2154665785, i64 2154665806, i64 2154665834, i64 2154665868}
