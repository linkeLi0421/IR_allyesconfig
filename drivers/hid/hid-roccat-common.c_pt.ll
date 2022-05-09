; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-roccat-common.c_pt.bc'
source_filename = "../drivers/hid/hid-roccat-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+roccat_common2_receive\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_common2_receive\09\09\09\09"
module asm "\09.long\09__crc_roccat_common2_receive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_common2_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_common2_receive\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_common2_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_common2_send\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_common2_send\09\09\09\09"
module asm "\09.long\09__crc_roccat_common2_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_common2_send:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_common2_send\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_common2_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_common2_send_with_status\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_common2_send_with_status\09\09\09\09"
module asm "\09.long\09__crc_roccat_common2_send_with_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_common2_send_with_status:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_common2_send_with_status\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_common2_send_with_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_common2_device_init_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_common2_device_init_struct\09\09\09\09"
module asm "\09.long\09__crc_roccat_common2_device_init_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_common2_device_init_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_common2_device_init_struct\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_common2_device_init_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_common2_sysfs_read\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_common2_sysfs_read\09\09\09\09"
module asm "\09.long\09__crc_roccat_common2_sysfs_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_common2_sysfs_read:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_common2_sysfs_read\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_common2_sysfs_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+roccat_common2_sysfs_write\22, \22a\22\09"
module asm "\09.weak\09__crc_roccat_common2_sysfs_write\09\09\09\09"
module asm "\09.long\09__crc_roccat_common2_sysfs_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_roccat_common2_sysfs_write:\09\09\09\09\09"
module asm "\09.asciz \09\22roccat_common2_sysfs_write\22\09\09\09\09\09"
module asm "__kstrtabns_roccat_common2_sysfs_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.roccat_common2_device = type { i32, i32, %struct.mutex }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@__kstrtab_roccat_common2_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_common2_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_common2_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_common2_receive to i32), ptr @__kstrtab_roccat_common2_receive, ptr @__kstrtabns_roccat_common2_receive }, section "___ksymtab_gpl+roccat_common2_receive", align 4
@__kstrtab_roccat_common2_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_common2_send = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_common2_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_common2_send to i32), ptr @__kstrtab_roccat_common2_send, ptr @__kstrtabns_roccat_common2_send }, section "___ksymtab_gpl+roccat_common2_send", align 4
@__kstrtab_roccat_common2_send_with_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_common2_send_with_status = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_common2_send_with_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_common2_send_with_status to i32), ptr @__kstrtab_roccat_common2_send_with_status, ptr @__kstrtabns_roccat_common2_send_with_status }, section "___ksymtab_gpl+roccat_common2_send_with_status", align 4
@roccat_common2_device_init_struct.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_roccat_common2_device_init_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_common2_device_init_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_common2_device_init_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_common2_device_init_struct to i32), ptr @__kstrtab_roccat_common2_device_init_struct, ptr @__kstrtabns_roccat_common2_device_init_struct }, section "___ksymtab_gpl+roccat_common2_device_init_struct", align 4
@__kstrtab_roccat_common2_sysfs_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_common2_sysfs_read = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_common2_sysfs_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_common2_sysfs_read to i32), ptr @__kstrtab_roccat_common2_sysfs_read, ptr @__kstrtabns_roccat_common2_sysfs_read }, section "___ksymtab_gpl+roccat_common2_sysfs_read", align 4
@__kstrtab_roccat_common2_sysfs_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_roccat_common2_sysfs_write = external dso_local constant [0 x i8], align 1
@__ksymtab_roccat_common2_sysfs_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @roccat_common2_sysfs_write to i32), ptr @__kstrtab_roccat_common2_sysfs_write, ptr @__kstrtabns_roccat_common2_sysfs_write }, section "___ksymtab_gpl+roccat_common2_sysfs_write", align 4
@__UNIQUE_ID_author232 = internal constant [39 x i8] c"hid_roccat_common.author=Stefan Achatz\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [55 x i8] c"hid_roccat_common.description=USB Roccat common driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [53 x i8] c"hid_roccat_common.file=drivers/hid/hid-roccat-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [33 x i8] c"hid_roccat_common.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@roccat_common2_receive_control_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"roccat_common2_receive_control_status: unknown response value 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"roccat_common2_receive_control_status\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/hid/hid-roccat-common.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@roccat_common2_receive_control_status._entry_ptr = internal global ptr @roccat_common2_receive_control_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 125, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [35 x i8] c"../drivers/hid/hid-roccat-common.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 97, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__ksymtab_roccat_common2_device_init_struct, ptr @__ksymtab_roccat_common2_receive, ptr @__ksymtab_roccat_common2_send, ptr @__ksymtab_roccat_common2_send_with_status, ptr @__ksymtab_roccat_common2_sysfs_read, ptr @__ksymtab_roccat_common2_sysfs_write, ptr @roccat_common2_receive_control_status._entry, ptr @roccat_common2_receive_control_status._entry_ptr, ptr @roccat_common2_device_init_struct.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_common2_device_init_struct.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @roccat_common2_receive_control_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_common2_receive(ptr noundef %usb_dev, i32 noundef %report_id, ptr nocapture noundef writeonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #8
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_dev, align 8
  %shl.i = shl i32 %1, 8
  %or2 = or i32 %shl.i, -2147483520
  %2 = trunc i32 %report_id to i16
  %conv.i = and i16 %2, 255
  %or.i = or i16 %conv.i, 768
  %conv4 = trunc i32 %size to i16
  %call5 = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or2, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %or.i, i16 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv4, i32 noundef 5000) #5
  %3 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %size)
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %size)
  %cmp8.not = icmp eq i32 %call5, %size
  %cond = select i1 %cmp8.not, i32 0, i32 -5
  %cond10 = select i1 %cmp6, i32 %call5, i32 %cond
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond10, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_common2_send(ptr noundef %usb_dev, i32 noundef %report_id, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef %size, i32 noundef 3264) #5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_dev, align 8
  %shl.i = shl i32 %1, 8
  %or = or i32 %shl.i, -2147483648
  %2 = trunc i32 %report_id to i16
  %conv.i = and i16 %2, 255
  %or.i = or i16 %conv.i, 768
  %conv3 = trunc i32 %size to i16
  %call4 = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %or.i, i16 noundef zeroext 0, ptr noundef nonnull %call, i16 noundef zeroext %conv3, i32 noundef 5000) #5
  tail call void @kfree(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %size)
  %cmp7.not = icmp eq i32 %call4, %size
  %cond = select i1 %cmp7.not, i32 0, i32 -5
  %cond9 = select i1 %cmp5, i32 %call4, i32 %cond
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_common2_send_with_status(ptr noundef %usb_dev, i32 noundef %command, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %size, i32 noundef 3264) #5
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %roccat_common2_send.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

roccat_common2_send.exit:                         ; preds = %entry
  %0 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_dev, align 8
  %shl.i.i = shl i32 %1, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %2 = trunc i32 %command to i16
  %conv.i.i = and i16 %2, 255
  %or.i.i = or i16 %conv.i.i, 768
  %conv3.i = trunc i32 %size to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %or.i.i, i16 noundef zeroext 0, ptr noundef nonnull %call.i, i16 noundef zeroext %conv3.i, i32 noundef 5000) #5
  tail call void @kfree(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %size)
  %cmp7.not.i = icmp eq i32 %call4.i, %size
  %cond.i = select i1 %cmp7.not.i, i32 0, i32 -5
  %cond9.i = select i1 %cmp5.i, i32 %call4.i, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9.i)
  %tobool.not = icmp eq i32 %cond9.i, 0
  br i1 %tobool.not, label %if.end, label %roccat_common2_send.exit.cleanup_crit_edge

roccat_common2_send.exit.cleanup_crit_edge:       ; preds = %roccat_common2_send.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %roccat_common2_send.exit
  tail call void @msleep(i32 noundef 100) #5
  tail call void @msleep(i32 noundef 50) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i16.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 3) #9
  %cmp.i17.i = icmp eq ptr %call7.i.i16.i, null
  br i1 %cmp.i17.i, label %if.end.cleanup_crit_edge, label %if.end.roccat_common2_receive.exit.i_crit_edge

if.end.roccat_common2_receive.exit.i_crit_edge:   ; preds = %if.end
  br label %roccat_common2_receive.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

roccat_common2_receive.exit.i:                    ; preds = %sw.bb2.i.roccat_common2_receive.exit.i_crit_edge, %if.end.roccat_common2_receive.exit.i_crit_edge
  %call7.i.i18.i = phi ptr [ %call7.i.i.i, %sw.bb2.i.roccat_common2_receive.exit.i_crit_edge ], [ %call7.i.i16.i, %if.end.roccat_common2_receive.exit.i_crit_edge ]
  %4 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_dev, align 8
  %shl.i.i.i = shl i32 %5, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %usb_dev, i32 noundef %or2.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 772, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i18.i, i16 noundef zeroext 3, i32 noundef 5000) #5
  %control.sroa.4.0.call7.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i.i18.i, i32 1
  %6 = ptrtoint ptr %control.sroa.4.0.call7.i.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %control.sroa.4.0.copyload.i = load i8, ptr %control.sroa.4.0.call7.i.i.sroa_idx.i, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i18.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5.i.i)
  %cmp8.not.i.i = icmp eq i32 %call5.i.i, 3
  %cond.i.i = select i1 %cmp8.not.i.i, i32 0, i32 -5
  %cond10.i.i = select i1 %cmp6.i.i, i32 %call5.i.i, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond10.i.i)
  %tobool.not.i = icmp eq i32 %cond10.i.i, 0
  br i1 %tobool.not.i, label %if.end.i5, label %roccat_common2_receive.exit.i.cleanup_crit_edge

roccat_common2_receive.exit.i.cleanup_crit_edge:  ; preds = %roccat_common2_receive.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i5:                                        ; preds = %roccat_common2_receive.exit.i
  %7 = zext i8 %control.sroa.4.0.copyload.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %control.sroa.4.0.copyload.i, label %do.end.i [
    i8 1, label %if.end.i5.cleanup_crit_edge
    i8 3, label %sw.bb2.i
    i8 2, label %if.end.i5.cleanup.loopexit_crit_edge
    i8 0, label %if.end.i5.cleanup.loopexit_crit_edge23
    i8 4, label %if.end.i5.cleanup.loopexit_crit_edge24
  ]

if.end.i5.cleanup.loopexit_crit_edge24:           ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.loopexit

if.end.i5.cleanup.loopexit_crit_edge23:           ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.loopexit

if.end.i5.cleanup.loopexit_crit_edge:             ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.loopexit

if.end.i5.cleanup_crit_edge:                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end.i5
  tail call void @msleep(i32 noundef 500) #5
  tail call void @msleep(i32 noundef 50) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 3) #9
  %cmp.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.roccat_common2_receive.exit.i_crit_edge

sw.bb2.i.roccat_common2_receive.exit.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %roccat_common2_receive.exit.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %control.sroa.4.0.copyload.i to i32
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %usb_dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #10
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.end.i5.cleanup.loopexit_crit_edge, %if.end.i5.cleanup.loopexit_crit_edge23, %if.end.i5.cleanup.loopexit_crit_edge24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end.i, %sw.bb2.i.cleanup_crit_edge, %if.end.i5.cleanup_crit_edge, %roccat_common2_receive.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %roccat_common2_send.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond9.i, %roccat_common2_send.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -22, %cleanup.loopexit ], [ %cond10.i.i, %roccat_common2_receive.exit.i.cleanup_crit_edge ], [ 0, %if.end.i5.cleanup_crit_edge ], [ -12, %sw.bb2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_common2_device_init_struct(ptr nocapture readnone %usb_dev, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.roccat_common2_device, ptr %dev, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @roccat_common2_device_init_struct.__key) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_common2_sysfs_read(ptr nocapture readnone %fp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count, i32 noundef %real_size, i32 noundef %command) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %5, i32 0, i32 18, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr i8, ptr %3, i32 136
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 -128
  %conv = zext i32 %real_size to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp.not = icmp sgt i64 %conv, %off
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp7.not = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %count, i32 %real_size)
  %cmp9.not = icmp eq i32 %count, %real_size
  %or.cond = and i1 %cmp7.not, %cmp9.not
  br i1 %or.cond, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.roccat_common2_device, ptr %7, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %real_size, i32 noundef 3264) #8
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %roccat_common2_receive.exit.thread, label %roccat_common2_receive.exit

roccat_common2_receive.exit.thread:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

roccat_common2_receive.exit:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %11, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %12 = trunc i32 %command to i16
  %conv.i.i = and i16 %12, 255
  %or.i.i = or i16 %conv.i.i, 768
  %conv4.i = trunc i32 %real_size to i16
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %or.i.i, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv4.i, i32 noundef 5000) #5
  %13 = call ptr @memcpy(ptr %buf, ptr %call9.i.i, i32 %real_size)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %real_size)
  %cmp8.not.i = icmp eq i32 %call5.i, %real_size
  %cond.i = select i1 %cmp8.not.i, i32 0, i32 -5
  %cond10.i = select i1 %cmp6.i, i32 %call5.i, i32 %cond.i
  tail call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond10.i)
  %tobool.not = icmp eq i32 %cond10.i, 0
  %spec.select = select i1 %tobool.not, i32 %real_size, i32 %cond10.i
  br label %cleanup

cleanup:                                          ; preds = %roccat_common2_receive.exit, %roccat_common2_receive.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %roccat_common2_receive.exit.thread ], [ %spec.select, %roccat_common2_receive.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @roccat_common2_sysfs_write(ptr nocapture readnone %fp, ptr nocapture noundef readonly %kobj, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef %real_size, i32 noundef %command) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp.not = icmp eq i64 %off, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %count, i32 %real_size)
  %cmp6.not = icmp eq i32 %count, %real_size
  %or.cond = and i1 %cmp.not, %cmp6.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %parent.i = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %7, i32 0, i32 18, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.roccat_common2_device, ptr %9, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call7 = tail call i32 @roccat_common2_send_with_status(ptr noundef %add.ptr.i, i32 noundef %command, ptr noundef %buf, i32 noundef %count)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %real_size.call7 = select i1 %tobool.not, i32 %count, i32 %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %real_size.call7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_roccat_common2_receive, !1, !"__ksymtab_roccat_common2_receive", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-roccat-common.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_roccat_common2_send, !3, !"__ksymtab_roccat_common2_send", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-roccat-common.c", i32 62, i32 1}
!4 = !{ptr @__ksymtab_roccat_common2_send_with_status, !5, !"__ksymtab_roccat_common2_send_with_status", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-roccat-common.c", i32 120, i32 1}
!6 = !{ptr @roccat_common2_device_init_struct.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-roccat-common.c", i32 125, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_roccat_common2_device_init_struct, !10, !"__ksymtab_roccat_common2_device_init_struct", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-roccat-common.c", i32 128, i32 1}
!11 = !{ptr @__ksymtab_roccat_common2_sysfs_read, !12, !"__ksymtab_roccat_common2_sysfs_read", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-roccat-common.c", i32 151, i32 1}
!13 = !{ptr @__ksymtab_roccat_common2_sysfs_write, !14, !"__ksymtab_roccat_common2_sysfs_write", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-roccat-common.c", i32 171, i32 1}
!15 = !{ptr @__UNIQUE_ID_author232, !16, !"__UNIQUE_ID_author232", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-roccat-common.c", i32 173, i32 1}
!17 = !{ptr @__UNIQUE_ID_description233, !18, !"__UNIQUE_ID_description233", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-roccat-common.c", i32 174, i32 1}
!19 = !{ptr @__UNIQUE_ID_file234, !20, !"__UNIQUE_ID_file234", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-roccat-common.c", i32 175, i32 1}
!21 = !{ptr @__UNIQUE_ID_license235, !20, !"__UNIQUE_ID_license235", i1 false, i1 false}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-roccat-common.c", i32 97, i32 4}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @roccat_common2_receive_control_status._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @roccat_common2_receive_control_status._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
