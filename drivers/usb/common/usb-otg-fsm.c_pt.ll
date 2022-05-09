; ModuleID = '/llk/IR_all_yes/drivers/usb/common/usb-otg-fsm.c_pt.bc'
source_filename = "../drivers/usb/common/usb-otg-fsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+otg_statemachine\22, \22a\22\09"
module asm "\09.weak\09__crc_otg_statemachine\09\09\09\09"
module asm "\09.long\09__crc_otg_statemachine\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_otg_statemachine:\09\09\09\09\09"
module asm "\09.asciz \09\22otg_statemachine\22\09\09\09\09\09"
module asm "__kstrtabns_otg_statemachine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.otg_fsm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__kstrtab_otg_statemachine = external dso_local constant [0 x i8], align 1
@__kstrtabns_otg_statemachine = external dso_local constant [0 x i8], align 1
@__ksymtab_otg_statemachine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @otg_statemachine to i32), ptr @__kstrtab_otg_statemachine, ptr @__kstrtabns_otg_statemachine }, section "___ksymtab_gpl+otg_statemachine", align 4
@__UNIQUE_ID_file293 = internal constant [48 x i8] c"usb_otg_fsm.file=drivers/usb/common/usb-otg-fsm\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"usb_otg_fsm.license=GPL\00", section ".modinfo", align 1
@otg_start_hnp_polling.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&fsm->hnp_polling_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@otg_start_hnp_polling.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&fsm->hnp_polling_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@otg_hnp_polling_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"no usb dev connected, can't start HNP polling\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"otg_hnp_polling_work\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/common/usb-otg-fsm.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@otg_hnp_polling_work._entry_ptr = internal global ptr @otg_hnp_polling_work._entry, section ".printk_index", align 4
@otg_hnp_polling_work._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 151, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Get one byte OTG status failed\0A\00", [32 x i8] zeroinitializer }, align 32
@otg_hnp_polling_work._entry_ptr.10 = internal global ptr @otg_hnp_polling_work._entry.8, section ".printk_index", align 4
@otg_hnp_polling_work._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"host request flag %d is invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@otg_hnp_polling_work._entry_ptr.13 = internal global ptr @otg_hnp_polling_work._entry.11, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.14 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.15 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 197, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 134, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 151, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [36 x i8] c"../drivers/usb/common/usb-otg-fsm.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 162, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__ksymtab_otg_statemachine, ptr @otg_hnp_polling_work._entry, ptr @otg_hnp_polling_work._entry.11, ptr @otg_hnp_polling_work._entry.8, ptr @otg_hnp_polling_work._entry_ptr, ptr @otg_hnp_polling_work._entry_ptr.10, ptr @otg_hnp_polling_work._entry_ptr.13, ptr @otg_start_hnp_polling.__key, ptr @.str, ptr @otg_start_hnp_polling.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_start_hnp_polling.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_start_hnp_polling.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_hnp_polling_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_hnp_polling_work._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_hnp_polling_work._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @otg_statemachine(ptr noundef %fsm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #3
  %otg = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 41
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %state1 = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  %state_changed = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 47
  %4 = ptrtoint ptr %state_changed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %state_changed, align 1
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.end
    i32 1, label %sw.bb3
    i32 2, label %sw.bb28
    i32 3, label %sw.bb36
    i32 4, label %sw.bb57
    i32 5, label %sw.bb79
    i32 6, label %sw.bb99
    i32 7, label %sw.bb120
    i32 8, label %sw.bb136
    i32 9, label %sw.bb158
    i32 10, label %sw.bb194
    i32 11, label %sw.bb249
    i32 12, label %sw.bb271
    i32 13, label %sw.bb276
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not, i32 6, i32 1
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %8 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %if.else8

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else8:                                         ; preds = %sw.bb3
  %b_sess_vld = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 11
  %10 = ptrtoint ptr %b_sess_vld to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b_sess_vld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.else8.if.else14_crit_edge, label %land.lhs.true

if.else8.if.else14_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else14

land.lhs.true:                                    ; preds = %if.else8
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gadget, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %land.lhs.true.if.else14_crit_edge, label %land.lhs.true.sw.epilog.sink.split_crit_edge

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

land.lhs.true.if.else14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true.if.else14_crit_edge, %if.else8.if.else14_crit_edge
  %b_bus_req = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 15
  %14 = ptrtoint ptr %b_bus_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %b_bus_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.else14.land.lhs.true19_crit_edge

if.else14.land.lhs.true19_crit_edge:              ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true19

lor.lhs.false:                                    ; preds = %if.else14
  %adp_change = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 1
  %16 = ptrtoint ptr %adp_change to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adp_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false.land.lhs.true19_crit_edge

lor.lhs.false.land.lhs.true19_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true19

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %power_up = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 2
  %18 = ptrtoint ptr %power_up to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %lor.lhs.false17.sw.epilog_crit_edge, label %lor.lhs.false17.land.lhs.true19_crit_edge

lor.lhs.false17.land.lhs.true19_crit_edge:        ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true19

lor.lhs.false17.sw.epilog_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true19:                                  ; preds = %lor.lhs.false17.land.lhs.true19_crit_edge, %lor.lhs.false.land.lhs.true19_crit_edge, %if.else14.land.lhs.true19_crit_edge
  %b_ssend_srp = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 10
  %20 = ptrtoint ptr %b_ssend_srp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_ssend_srp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not = icmp eq i32 %21, 0
  br i1 %tobool20.not, label %land.lhs.true19.sw.epilog_crit_edge, label %land.lhs.true21

land.lhs.true19.sw.epilog_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %b_se0_srp = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 9
  %22 = ptrtoint ptr %b_se0_srp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_se0_srp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %land.lhs.true21.sw.epilog_crit_edge, label %land.lhs.true21.sw.epilog.sink.split_crit_edge

land.lhs.true21.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

land.lhs.true21.sw.epilog_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %24 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool30.not = icmp eq i32 %25, 0
  br i1 %tobool30.not, label %sw.bb28.sw.epilog.sink.split_crit_edge, label %lor.lhs.false31

sw.bb28.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false31:                                  ; preds = %sw.bb28
  %b_srp_done = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 26
  %26 = ptrtoint ptr %b_srp_done to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %b_srp_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool32.not = icmp eq i32 %27, 0
  br i1 %tobool32.not, label %lor.lhs.false31.sw.epilog_crit_edge, label %lor.lhs.false31.sw.epilog.sink.split_crit_edge

lor.lhs.false31.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false31.sw.epilog_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %28 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool38.not = icmp eq i32 %29, 0
  br i1 %tobool38.not, label %sw.bb36.sw.epilog.sink.split_crit_edge, label %lor.lhs.false39

sw.bb36.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false39:                                  ; preds = %sw.bb36
  %b_sess_vld40 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 11
  %30 = ptrtoint ptr %b_sess_vld40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %b_sess_vld40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool41.not = icmp eq i32 %31, 0
  br i1 %tobool41.not, label %lor.lhs.false39.sw.epilog.sink.split_crit_edge, label %if.else44

lor.lhs.false39.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else44:                                        ; preds = %lor.lhs.false39
  %b_bus_req45 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 15
  %32 = ptrtoint ptr %b_bus_req45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_bus_req45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %if.else44.sw.epilog_crit_edge, label %land.lhs.true47

if.else44.sw.epilog_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true47:                                  ; preds = %if.else44
  %gadget49 = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %gadget49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gadget49, align 4
  %b_hnp_enable = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load = load i32, ptr %b_hnp_enable, align 4
  %37 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool50.not = icmp eq i32 %37, 0
  br i1 %tobool50.not, label %land.lhs.true47.sw.epilog_crit_edge, label %land.lhs.true51

land.lhs.true47.sw.epilog_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true51:                                  ; preds = %land.lhs.true47
  %a_bus_suspend = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 7
  %38 = ptrtoint ptr %a_bus_suspend to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %a_bus_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool52.not = icmp eq i32 %39, 0
  br i1 %tobool52.not, label %land.lhs.true51.sw.epilog_crit_edge, label %land.lhs.true51.sw.epilog.sink.split_crit_edge

land.lhs.true51.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

land.lhs.true51.sw.epilog_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  %a_conn = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 8
  %40 = ptrtoint ptr %a_conn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %a_conn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool58.not = icmp eq i32 %41, 0
  br i1 %tobool58.not, label %if.else61, label %sw.bb57.sw.epilog.sink.split_crit_edge

sw.bb57.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else61:                                        ; preds = %sw.bb57
  %42 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool63.not = icmp eq i32 %43, 0
  br i1 %tobool63.not, label %if.else61.sw.epilog.sink.split_crit_edge, label %lor.lhs.false64

if.else61.sw.epilog.sink.split_crit_edge:         ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false64:                                  ; preds = %if.else61
  %b_sess_vld65 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 11
  %44 = ptrtoint ptr %b_sess_vld65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_sess_vld65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool66.not = icmp eq i32 %45, 0
  br i1 %tobool66.not, label %lor.lhs.false64.sw.epilog.sink.split_crit_edge, label %if.else69

lor.lhs.false64.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else69:                                        ; preds = %lor.lhs.false64
  %a_bus_resume = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 6
  %46 = ptrtoint ptr %a_bus_resume to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %a_bus_resume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool70.not = icmp eq i32 %47, 0
  br i1 %tobool70.not, label %lor.lhs.false71, label %if.else69.if.then73_crit_edge

if.else69.if.then73_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then73

lor.lhs.false71:                                  ; preds = %if.else69
  %b_ase0_brst_tmout = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 38
  %48 = ptrtoint ptr %b_ase0_brst_tmout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %b_ase0_brst_tmout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool72.not = icmp eq i32 %49, 0
  br i1 %tobool72.not, label %lor.lhs.false71.sw.epilog_crit_edge, label %lor.lhs.false71.if.then73_crit_edge

lor.lhs.false71.if.then73_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then73

lor.lhs.false71.sw.epilog_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then73:                                        ; preds = %lor.lhs.false71.if.then73_crit_edge, %if.else69.if.then73_crit_edge
  %b_ase0_brst_tmout74 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 38
  %50 = ptrtoint ptr %b_ase0_brst_tmout74 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %b_ase0_brst_tmout74, align 4
  br label %sw.epilog.sink.split

sw.bb79:                                          ; preds = %entry
  %51 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool81.not = icmp eq i32 %52, 0
  br i1 %tobool81.not, label %sw.bb79.sw.epilog.sink.split_crit_edge, label %lor.lhs.false82

sw.bb79.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false82:                                  ; preds = %sw.bb79
  %b_sess_vld83 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 11
  %53 = ptrtoint ptr %b_sess_vld83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %b_sess_vld83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool84.not = icmp eq i32 %54, 0
  br i1 %tobool84.not, label %lor.lhs.false82.sw.epilog.sink.split_crit_edge, label %if.else87

lor.lhs.false82.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else87:                                        ; preds = %lor.lhs.false82
  %b_bus_req88 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 15
  %55 = ptrtoint ptr %b_bus_req88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %b_bus_req88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool89.not = icmp eq i32 %56, 0
  br i1 %tobool89.not, label %if.else87.sw.epilog.sink.split_crit_edge, label %lor.lhs.false90

if.else87.sw.epilog.sink.split_crit_edge:         ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false90:                                  ; preds = %if.else87
  %a_conn91 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 8
  %57 = ptrtoint ptr %a_conn91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %a_conn91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool92.not = icmp eq i32 %58, 0
  br i1 %tobool92.not, label %lor.lhs.false90.sw.epilog.sink.split_crit_edge, label %lor.lhs.false93

lor.lhs.false90.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false93:                                  ; preds = %lor.lhs.false90
  %test_device = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 12
  %59 = ptrtoint ptr %test_device to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %test_device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool94.not = icmp eq i32 %60, 0
  br i1 %tobool94.not, label %lor.lhs.false93.sw.epilog_crit_edge, label %lor.lhs.false93.sw.epilog.sink.split_crit_edge

lor.lhs.false93.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false93.sw.epilog_crit_edge:              ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb99:                                          ; preds = %entry
  %61 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool101.not = icmp eq i32 %62, 0
  br i1 %tobool101.not, label %if.else104, label %sw.bb99.sw.epilog.sink.split_crit_edge

sw.bb99.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else104:                                       ; preds = %sw.bb99
  %a_bus_drop = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %63 = ptrtoint ptr %a_bus_drop to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %a_bus_drop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool105.not = icmp eq i32 %64, 0
  br i1 %tobool105.not, label %land.lhs.true106, label %if.else104.sw.epilog_crit_edge

if.else104.sw.epilog_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

land.lhs.true106:                                 ; preds = %if.else104
  %a_bus_req = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 14
  %65 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %a_bus_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool107.not = icmp eq i32 %66, 0
  br i1 %tobool107.not, label %lor.lhs.false108, label %land.lhs.true106.sw.epilog.sink.split_crit_edge

land.lhs.true106.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false108:                                 ; preds = %land.lhs.true106
  %a_srp_det = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 3
  %67 = ptrtoint ptr %a_srp_det to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %a_srp_det, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool109.not = icmp eq i32 %68, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %lor.lhs.false108.sw.epilog.sink.split_crit_edge

lor.lhs.false108.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false110:                                 ; preds = %lor.lhs.false108
  %adp_change111 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 1
  %69 = ptrtoint ptr %adp_change111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %adp_change111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool112.not = icmp eq i32 %70, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %lor.lhs.false110.sw.epilog.sink.split_crit_edge

lor.lhs.false110.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %power_up114 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 2
  %71 = ptrtoint ptr %power_up114 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %power_up114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool115.not = icmp eq i32 %72, 0
  br i1 %tobool115.not, label %lor.lhs.false113.sw.epilog_crit_edge, label %lor.lhs.false113.sw.epilog.sink.split_crit_edge

lor.lhs.false113.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false113.sw.epilog_crit_edge:             ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb120:                                         ; preds = %entry
  %a_vbus_vld = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 4
  %73 = ptrtoint ptr %a_vbus_vld to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %a_vbus_vld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool121.not = icmp eq i32 %74, 0
  br i1 %tobool121.not, label %if.else124, label %sw.bb120.sw.epilog.sink.split_crit_edge

sw.bb120.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else124:                                       ; preds = %sw.bb120
  %75 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool126.not = icmp eq i32 %76, 0
  br i1 %tobool126.not, label %lor.lhs.false127, label %if.else124.sw.epilog.sink.split_crit_edge

if.else124.sw.epilog.sink.split_crit_edge:        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false127:                                 ; preds = %if.else124
  %a_bus_drop128 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %77 = ptrtoint ptr %a_bus_drop128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %a_bus_drop128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool129.not = icmp eq i32 %78, 0
  br i1 %tobool129.not, label %lor.lhs.false130, label %lor.lhs.false127.sw.epilog.sink.split_crit_edge

lor.lhs.false127.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false130:                                 ; preds = %lor.lhs.false127
  %a_wait_vrise_tmout = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 34
  %79 = ptrtoint ptr %a_wait_vrise_tmout to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %a_wait_vrise_tmout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool131.not = icmp eq i32 %80, 0
  br i1 %tobool131.not, label %lor.lhs.false130.sw.epilog_crit_edge, label %lor.lhs.false130.sw.epilog.sink.split_crit_edge

lor.lhs.false130.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false130.sw.epilog_crit_edge:             ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb136:                                         ; preds = %entry
  %a_vbus_vld137 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 4
  %81 = ptrtoint ptr %a_vbus_vld137 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %a_vbus_vld137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool138.not = icmp eq i32 %82, 0
  br i1 %tobool138.not, label %sw.bb136.sw.epilog.sink.split_crit_edge, label %if.else141

sw.bb136.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else141:                                       ; preds = %sw.bb136
  %b_conn = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 5
  %83 = ptrtoint ptr %b_conn to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %b_conn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool142.not = icmp eq i32 %84, 0
  br i1 %tobool142.not, label %if.else145, label %if.else141.sw.epilog.sink.split_crit_edge

if.else141.sw.epilog.sink.split_crit_edge:        ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else145:                                       ; preds = %if.else141
  %85 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool147.not = icmp eq i32 %86, 0
  br i1 %tobool147.not, label %lor.lhs.false148, label %if.else145.sw.epilog.sink.split_crit_edge

if.else145.sw.epilog.sink.split_crit_edge:        ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false148:                                 ; preds = %if.else145
  %a_bus_drop149 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %87 = ptrtoint ptr %a_bus_drop149 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %a_bus_drop149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool150.not = icmp eq i32 %88, 0
  br i1 %tobool150.not, label %lor.lhs.false151, label %lor.lhs.false148.sw.epilog.sink.split_crit_edge

lor.lhs.false148.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false151:                                 ; preds = %lor.lhs.false148
  %a_wait_bcon_tmout = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 36
  %89 = ptrtoint ptr %a_wait_bcon_tmout to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %a_wait_bcon_tmout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool152.not = icmp eq i32 %90, 0
  br i1 %tobool152.not, label %lor.lhs.false151.sw.epilog_crit_edge, label %lor.lhs.false151.sw.epilog.sink.split_crit_edge

lor.lhs.false151.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false151.sw.epilog_crit_edge:             ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb158:                                         ; preds = %entry
  %91 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool160.not = icmp eq i32 %92, 0
  br i1 %tobool160.not, label %lor.lhs.false161, label %sw.bb158.sw.epilog.sink.split_crit_edge

sw.bb158.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false161:                                 ; preds = %sw.bb158
  %a_bus_drop162 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %93 = ptrtoint ptr %a_bus_drop162 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %a_bus_drop162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool163.not = icmp eq i32 %94, 0
  br i1 %tobool163.not, label %if.else166, label %lor.lhs.false161.sw.epilog.sink.split_crit_edge

lor.lhs.false161.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else166:                                       ; preds = %lor.lhs.false161
  %a_bus_req167 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 14
  %95 = ptrtoint ptr %a_bus_req167 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %a_bus_req167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool168.not = icmp eq i32 %96, 0
  br i1 %tobool168.not, label %if.else166.land.lhs.true171_crit_edge, label %lor.lhs.false169

if.else166.land.lhs.true171_crit_edge:            ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true171

lor.lhs.false169:                                 ; preds = %if.else166
  %a_suspend_req_inf = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 33
  %97 = ptrtoint ptr %a_suspend_req_inf to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %a_suspend_req_inf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool170.not = icmp eq i32 %98, 0
  br i1 %tobool170.not, label %lor.lhs.false169.if.else180_crit_edge, label %lor.lhs.false169.land.lhs.true171_crit_edge

lor.lhs.false169.land.lhs.true171_crit_edge:      ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true171

lor.lhs.false169.if.else180_crit_edge:            ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else180

land.lhs.true171:                                 ; preds = %lor.lhs.false169.land.lhs.true171_crit_edge, %if.else166.land.lhs.true171_crit_edge
  %host = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 3
  %99 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %host, align 4
  %b_hnp_enable173 = getelementptr inbounds %struct.usb_bus, ptr %100, i32 0, i32 6
  %101 = ptrtoint ptr %b_hnp_enable173 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load174 = load i8, ptr %b_hnp_enable173, align 2
  %102 = and i8 %bf.load174, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool177.not = icmp eq i8 %102, 0
  br i1 %tobool177.not, label %land.lhs.true171.if.else180_crit_edge, label %land.lhs.true171.sw.epilog.sink.split_crit_edge

land.lhs.true171.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

land.lhs.true171.if.else180_crit_edge:            ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else180

if.else180:                                       ; preds = %land.lhs.true171.if.else180_crit_edge, %lor.lhs.false169.if.else180_crit_edge
  %b_conn181 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 5
  %103 = ptrtoint ptr %b_conn181 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %b_conn181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool182.not = icmp eq i32 %104, 0
  br i1 %tobool182.not, label %if.else180.sw.epilog.sink.split_crit_edge, label %if.else185

if.else180.sw.epilog.sink.split_crit_edge:        ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else185:                                       ; preds = %if.else180
  %a_vbus_vld186 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 4
  %105 = ptrtoint ptr %a_vbus_vld186 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %a_vbus_vld186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool187.not = icmp eq i32 %106, 0
  br i1 %tobool187.not, label %if.else185.sw.epilog.sink.split_crit_edge, label %if.else185.sw.epilog_crit_edge

if.else185.sw.epilog_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.else185.sw.epilog.sink.split_crit_edge:        ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb194:                                         ; preds = %entry
  %b_conn195 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 5
  %107 = ptrtoint ptr %b_conn195 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %b_conn195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool196.not = icmp eq i32 %108, 0
  br i1 %tobool196.not, label %land.lhs.true197, label %sw.bb194.if.else222_crit_edge

sw.bb194.if.else222_crit_edge:                    ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else222

land.lhs.true197:                                 ; preds = %sw.bb194
  %host199 = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %host199 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %host199, align 4
  %b_hnp_enable200 = getelementptr inbounds %struct.usb_bus, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %b_hnp_enable200 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load201 = load i8, ptr %b_hnp_enable200, align 2
  %112 = and i8 %bf.load201, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool205.not = icmp eq i8 %112, 0
  br i1 %tobool205.not, label %land.lhs.true211, label %land.lhs.true197.sw.epilog.sink.split_crit_edge

land.lhs.true197.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true197
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

land.lhs.true211:                                 ; preds = %land.lhs.true197
  %113 = ptrtoint ptr %host199 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host199, align 4
  %b_hnp_enable214 = getelementptr inbounds %struct.usb_bus, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %b_hnp_enable214 to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load215 = load i8, ptr %b_hnp_enable214, align 2
  %116 = and i8 %bf.load215, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool219.not = icmp eq i8 %116, 0
  br i1 %tobool219.not, label %land.lhs.true211.sw.epilog.sink.split_crit_edge, label %land.lhs.true211.if.else222_crit_edge

land.lhs.true211.if.else222_crit_edge:            ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else222

land.lhs.true211.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else222:                                       ; preds = %land.lhs.true211.if.else222_crit_edge, %sw.bb194.if.else222_crit_edge
  %a_bus_req223 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 14
  %117 = ptrtoint ptr %a_bus_req223 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %a_bus_req223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool224.not = icmp eq i32 %118, 0
  br i1 %tobool224.not, label %lor.lhs.false225, label %if.else222.sw.epilog.sink.split_crit_edge

if.else222.sw.epilog.sink.split_crit_edge:        ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false225:                                 ; preds = %if.else222
  %b_bus_resume = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 17
  %119 = ptrtoint ptr %b_bus_resume to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %b_bus_resume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool226.not = icmp eq i32 %120, 0
  br i1 %tobool226.not, label %if.else229, label %lor.lhs.false225.sw.epilog.sink.split_crit_edge

lor.lhs.false225.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false225
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else229:                                       ; preds = %lor.lhs.false225
  %121 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool231.not = icmp eq i32 %122, 0
  br i1 %tobool231.not, label %lor.lhs.false232, label %if.else229.sw.epilog.sink.split_crit_edge

if.else229.sw.epilog.sink.split_crit_edge:        ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false232:                                 ; preds = %if.else229
  %a_bus_drop233 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %123 = ptrtoint ptr %a_bus_drop233 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %a_bus_drop233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool234.not = icmp eq i32 %124, 0
  br i1 %tobool234.not, label %lor.lhs.false235, label %lor.lhs.false232.sw.epilog.sink.split_crit_edge

lor.lhs.false232.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false232
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false235:                                 ; preds = %lor.lhs.false232
  %a_aidl_bdis_tmout = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 37
  %125 = ptrtoint ptr %a_aidl_bdis_tmout to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %a_aidl_bdis_tmout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool236.not = icmp eq i32 %126, 0
  br i1 %tobool236.not, label %if.else239, label %lor.lhs.false235.sw.epilog.sink.split_crit_edge

lor.lhs.false235.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else239:                                       ; preds = %lor.lhs.false235
  %a_vbus_vld240 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 4
  %127 = ptrtoint ptr %a_vbus_vld240 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %a_vbus_vld240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool241.not = icmp eq i32 %128, 0
  br i1 %tobool241.not, label %if.else239.sw.epilog.sink.split_crit_edge, label %if.else239.sw.epilog_crit_edge

if.else239.sw.epilog_crit_edge:                   ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.else239.sw.epilog.sink.split_crit_edge:        ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb249:                                         ; preds = %entry
  %129 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool251.not = icmp eq i32 %130, 0
  br i1 %tobool251.not, label %lor.lhs.false252, label %sw.bb249.sw.epilog.sink.split_crit_edge

sw.bb249.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb249
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false252:                                 ; preds = %sw.bb249
  %a_bus_drop253 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %131 = ptrtoint ptr %a_bus_drop253 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %a_bus_drop253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool254.not = icmp eq i32 %132, 0
  br i1 %tobool254.not, label %if.else257, label %lor.lhs.false252.sw.epilog.sink.split_crit_edge

lor.lhs.false252.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false252
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else257:                                       ; preds = %lor.lhs.false252
  %a_bidl_adis_tmout = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 39
  %133 = ptrtoint ptr %a_bidl_adis_tmout to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %a_bidl_adis_tmout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool258.not = icmp eq i32 %134, 0
  br i1 %tobool258.not, label %lor.lhs.false259, label %if.else257.sw.epilog.sink.split_crit_edge

if.else257.sw.epilog.sink.split_crit_edge:        ; preds = %if.else257
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false259:                                 ; preds = %if.else257
  %b_bus_suspend = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 18
  %135 = ptrtoint ptr %b_bus_suspend to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %b_bus_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool260.not = icmp eq i32 %136, 0
  br i1 %tobool260.not, label %if.else263, label %lor.lhs.false259.sw.epilog.sink.split_crit_edge

lor.lhs.false259.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false259
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

if.else263:                                       ; preds = %lor.lhs.false259
  %a_vbus_vld264 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 4
  %137 = ptrtoint ptr %a_vbus_vld264 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %a_vbus_vld264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool265.not = icmp eq i32 %138, 0
  br i1 %tobool265.not, label %if.else263.sw.epilog.sink.split_crit_edge, label %if.else263.sw.epilog_crit_edge

if.else263.sw.epilog_crit_edge:                   ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.else263.sw.epilog.sink.split_crit_edge:        ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb271:                                         ; preds = %entry
  %a_wait_vfall_tmout = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 35
  %139 = ptrtoint ptr %a_wait_vfall_tmout to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %a_wait_vfall_tmout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool272.not = icmp eq i32 %140, 0
  br i1 %tobool272.not, label %sw.bb271.sw.epilog_crit_edge, label %sw.bb271.sw.epilog.sink.split_crit_edge

sw.bb271.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.bb271.sw.epilog_crit_edge:                     ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb276:                                         ; preds = %entry
  %141 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %fsm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool278.not = icmp eq i32 %142, 0
  br i1 %tobool278.not, label %lor.lhs.false279, label %sw.bb276.sw.epilog.sink.split_crit_edge

sw.bb276.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb276
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false279:                                 ; preds = %sw.bb276
  %a_bus_drop280 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 13
  %143 = ptrtoint ptr %a_bus_drop280 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %a_bus_drop280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool281.not = icmp eq i32 %144, 0
  br i1 %tobool281.not, label %lor.lhs.false282, label %lor.lhs.false279.sw.epilog.sink.split_crit_edge

lor.lhs.false279.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false279
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false282:                                 ; preds = %lor.lhs.false279
  %a_clr_err = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 28
  %145 = ptrtoint ptr %a_clr_err to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %a_clr_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool283.not = icmp eq i32 %146, 0
  br i1 %tobool283.not, label %lor.lhs.false282.sw.epilog_crit_edge, label %lor.lhs.false282.sw.epilog.sink.split_crit_edge

lor.lhs.false282.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

lor.lhs.false282.sw.epilog_crit_edge:             ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %lor.lhs.false282.sw.epilog.sink.split_crit_edge, %lor.lhs.false279.sw.epilog.sink.split_crit_edge, %sw.bb276.sw.epilog.sink.split_crit_edge, %sw.bb271.sw.epilog.sink.split_crit_edge, %if.else263.sw.epilog.sink.split_crit_edge, %lor.lhs.false259.sw.epilog.sink.split_crit_edge, %if.else257.sw.epilog.sink.split_crit_edge, %lor.lhs.false252.sw.epilog.sink.split_crit_edge, %sw.bb249.sw.epilog.sink.split_crit_edge, %if.else239.sw.epilog.sink.split_crit_edge, %lor.lhs.false235.sw.epilog.sink.split_crit_edge, %lor.lhs.false232.sw.epilog.sink.split_crit_edge, %if.else229.sw.epilog.sink.split_crit_edge, %lor.lhs.false225.sw.epilog.sink.split_crit_edge, %if.else222.sw.epilog.sink.split_crit_edge, %land.lhs.true211.sw.epilog.sink.split_crit_edge, %land.lhs.true197.sw.epilog.sink.split_crit_edge, %if.else185.sw.epilog.sink.split_crit_edge, %if.else180.sw.epilog.sink.split_crit_edge, %land.lhs.true171.sw.epilog.sink.split_crit_edge, %lor.lhs.false161.sw.epilog.sink.split_crit_edge, %sw.bb158.sw.epilog.sink.split_crit_edge, %lor.lhs.false151.sw.epilog.sink.split_crit_edge, %lor.lhs.false148.sw.epilog.sink.split_crit_edge, %if.else145.sw.epilog.sink.split_crit_edge, %if.else141.sw.epilog.sink.split_crit_edge, %sw.bb136.sw.epilog.sink.split_crit_edge, %lor.lhs.false130.sw.epilog.sink.split_crit_edge, %lor.lhs.false127.sw.epilog.sink.split_crit_edge, %if.else124.sw.epilog.sink.split_crit_edge, %sw.bb120.sw.epilog.sink.split_crit_edge, %lor.lhs.false113.sw.epilog.sink.split_crit_edge, %lor.lhs.false110.sw.epilog.sink.split_crit_edge, %lor.lhs.false108.sw.epilog.sink.split_crit_edge, %land.lhs.true106.sw.epilog.sink.split_crit_edge, %sw.bb99.sw.epilog.sink.split_crit_edge, %lor.lhs.false93.sw.epilog.sink.split_crit_edge, %lor.lhs.false90.sw.epilog.sink.split_crit_edge, %if.else87.sw.epilog.sink.split_crit_edge, %lor.lhs.false82.sw.epilog.sink.split_crit_edge, %sw.bb79.sw.epilog.sink.split_crit_edge, %if.then73, %lor.lhs.false64.sw.epilog.sink.split_crit_edge, %if.else61.sw.epilog.sink.split_crit_edge, %sw.bb57.sw.epilog.sink.split_crit_edge, %land.lhs.true51.sw.epilog.sink.split_crit_edge, %lor.lhs.false39.sw.epilog.sink.split_crit_edge, %sw.bb36.sw.epilog.sink.split_crit_edge, %lor.lhs.false31.sw.epilog.sink.split_crit_edge, %sw.bb28.sw.epilog.sink.split_crit_edge, %land.lhs.true21.sw.epilog.sink.split_crit_edge, %land.lhs.true.sw.epilog.sink.split_crit_edge, %sw.bb3.sw.epilog.sink.split_crit_edge, %do.end
  %.sink = phi i32 [ 3, %if.then73 ], [ %., %do.end ], [ 6, %sw.bb3.sw.epilog.sink.split_crit_edge ], [ 3, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ 2, %land.lhs.true21.sw.epilog.sink.split_crit_edge ], [ 1, %lor.lhs.false31.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb28.sw.epilog.sink.split_crit_edge ], [ 1, %lor.lhs.false39.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb36.sw.epilog.sink.split_crit_edge ], [ 4, %land.lhs.true51.sw.epilog.sink.split_crit_edge ], [ 5, %sw.bb57.sw.epilog.sink.split_crit_edge ], [ 1, %lor.lhs.false64.sw.epilog.sink.split_crit_edge ], [ 1, %if.else61.sw.epilog.sink.split_crit_edge ], [ 1, %lor.lhs.false82.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb79.sw.epilog.sink.split_crit_edge ], [ 3, %lor.lhs.false93.sw.epilog.sink.split_crit_edge ], [ 3, %lor.lhs.false90.sw.epilog.sink.split_crit_edge ], [ 3, %if.else87.sw.epilog.sink.split_crit_edge ], [ 1, %sw.bb99.sw.epilog.sink.split_crit_edge ], [ 7, %lor.lhs.false113.sw.epilog.sink.split_crit_edge ], [ 7, %lor.lhs.false110.sw.epilog.sink.split_crit_edge ], [ 7, %lor.lhs.false108.sw.epilog.sink.split_crit_edge ], [ 7, %land.lhs.true106.sw.epilog.sink.split_crit_edge ], [ 8, %sw.bb120.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false130.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false127.sw.epilog.sink.split_crit_edge ], [ 12, %if.else124.sw.epilog.sink.split_crit_edge ], [ 13, %sw.bb136.sw.epilog.sink.split_crit_edge ], [ 9, %if.else141.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false151.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false148.sw.epilog.sink.split_crit_edge ], [ 12, %if.else145.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false161.sw.epilog.sink.split_crit_edge ], [ 12, %sw.bb158.sw.epilog.sink.split_crit_edge ], [ 10, %land.lhs.true171.sw.epilog.sink.split_crit_edge ], [ 8, %if.else180.sw.epilog.sink.split_crit_edge ], [ 13, %if.else185.sw.epilog.sink.split_crit_edge ], [ 11, %land.lhs.true197.sw.epilog.sink.split_crit_edge ], [ 8, %land.lhs.true211.sw.epilog.sink.split_crit_edge ], [ 9, %lor.lhs.false225.sw.epilog.sink.split_crit_edge ], [ 9, %if.else222.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false235.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false232.sw.epilog.sink.split_crit_edge ], [ 12, %if.else229.sw.epilog.sink.split_crit_edge ], [ 13, %if.else239.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false252.sw.epilog.sink.split_crit_edge ], [ 12, %sw.bb249.sw.epilog.sink.split_crit_edge ], [ 8, %lor.lhs.false259.sw.epilog.sink.split_crit_edge ], [ 8, %if.else257.sw.epilog.sink.split_crit_edge ], [ 13, %if.else263.sw.epilog.sink.split_crit_edge ], [ 6, %sw.bb271.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false282.sw.epilog.sink.split_crit_edge ], [ 12, %lor.lhs.false279.sw.epilog.sink.split_crit_edge ], [ 12, %sw.bb276.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @otg_set_state(ptr noundef %fsm, i32 noundef %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.lhs.false282.sw.epilog_crit_edge, %sw.bb271.sw.epilog_crit_edge, %if.else263.sw.epilog_crit_edge, %if.else239.sw.epilog_crit_edge, %if.else185.sw.epilog_crit_edge, %lor.lhs.false151.sw.epilog_crit_edge, %lor.lhs.false130.sw.epilog_crit_edge, %lor.lhs.false113.sw.epilog_crit_edge, %if.else104.sw.epilog_crit_edge, %lor.lhs.false93.sw.epilog_crit_edge, %lor.lhs.false71.sw.epilog_crit_edge, %land.lhs.true51.sw.epilog_crit_edge, %land.lhs.true47.sw.epilog_crit_edge, %if.else44.sw.epilog_crit_edge, %lor.lhs.false31.sw.epilog_crit_edge, %land.lhs.true21.sw.epilog_crit_edge, %land.lhs.true19.sw.epilog_crit_edge, %lor.lhs.false17.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #3
  %147 = ptrtoint ptr %state_changed to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %state_changed, align 1, !range !35
  %149 = zext i8 %148 to i32
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @otg_set_state(ptr noundef %fsm, i32 noundef %new_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %otg = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 41
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_state)
  %cmp = icmp eq i32 %3, %new_state
  br i1 %cmp, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end:                                           ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %3, label %do.end.otg_leave_state.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb5.i
    i32 12, label %sw.bb30.i
    i32 6, label %sw.bb7.i
    i32 7, label %sw.bb9.i
    i32 8, label %sw.bb11.i
    i32 9, label %sw.bb13.i
    i32 10, label %sw.bb15.i
    i32 11, label %sw.bb17.i
  ]

do.end.otg_leave_state.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_leave_state.exit

sw.bb.i:                                          ; preds = %do.end
  %ops.i.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %del_timer.i.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %del_timer.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del_timer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %sw.bb.i.otg_del_timer.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.otg_del_timer.exit.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %8(ptr noundef %fsm, i32 noundef 7) #3
  br label %otg_del_timer.exit.i

otg_del_timer.exit.i:                             ; preds = %if.end.i.i, %sw.bb.i.otg_del_timer.exit.i_crit_edge
  %b_se0_srp.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 9
  %9 = ptrtoint ptr %b_se0_srp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %b_se0_srp.i, align 4
  %adp_sns.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 23
  %10 = ptrtoint ptr %adp_sns.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %adp_sns.i, align 4
  %adp_prb.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 22
  %11 = ptrtoint ptr %adp_prb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %adp_prb.i, align 4
  br label %otg_leave_state.exit

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %data_pulse.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 24
  %12 = ptrtoint ptr %data_pulse.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %data_pulse.i, align 4
  %b_srp_done.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 26
  %13 = ptrtoint ptr %b_srp_done.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %b_srp_done.i, align 4
  br label %otg_leave_state.exit

sw.bb2.i:                                         ; preds = %do.end
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %sw.bb2.i.otg_leave_state.exit_crit_edge, label %if.then.i

sw.bb2.i.otg_leave_state.exit_crit_edge:          ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_leave_state.exit

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  %host_request_flag.i = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %host_request_flag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %host_request_flag.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -16777217
  store i32 %bf.clear.i, ptr %host_request_flag.i, align 4
  br label %otg_leave_state.exit

sw.bb5.i:                                         ; preds = %do.end
  %ops.i59.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %17 = ptrtoint ptr %ops.i59.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i59.i, align 4
  %del_timer.i60.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %del_timer.i60.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %del_timer.i60.i, align 4
  %tobool.not.i61.i = icmp eq ptr %20, null
  br i1 %tobool.not.i61.i, label %sw.bb5.i.otg_del_timer.exit63.i_crit_edge, label %if.end.i62.i

sw.bb5.i.otg_del_timer.exit63.i_crit_edge:        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit63.i

if.end.i62.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %20(ptr noundef %fsm, i32 noundef 4) #3
  br label %otg_del_timer.exit63.i

otg_del_timer.exit63.i:                           ; preds = %if.end.i62.i, %sw.bb5.i.otg_del_timer.exit63.i_crit_edge
  %b_ase0_brst_tmout.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 38
  %21 = ptrtoint ptr %b_ase0_brst_tmout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %b_ase0_brst_tmout.i, align 4
  br label %otg_leave_state.exit

sw.bb7.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %adp_prb8.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 22
  %22 = ptrtoint ptr %adp_prb8.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %adp_prb8.i, align 4
  br label %otg_leave_state.exit

sw.bb9.i:                                         ; preds = %do.end
  %ops.i64.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %23 = ptrtoint ptr %ops.i64.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i64.i, align 4
  %del_timer.i65.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %del_timer.i65.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %del_timer.i65.i, align 4
  %tobool.not.i66.i = icmp eq ptr %26, null
  br i1 %tobool.not.i66.i, label %sw.bb9.i.otg_del_timer.exit68.i_crit_edge, label %if.end.i67.i

sw.bb9.i.otg_del_timer.exit68.i_crit_edge:        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit68.i

if.end.i67.i:                                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %26(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_del_timer.exit68.i

otg_del_timer.exit68.i:                           ; preds = %if.end.i67.i, %sw.bb9.i.otg_del_timer.exit68.i_crit_edge
  %a_wait_vrise_tmout.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 34
  %27 = ptrtoint ptr %a_wait_vrise_tmout.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %a_wait_vrise_tmout.i, align 4
  br label %otg_leave_state.exit

sw.bb11.i:                                        ; preds = %do.end
  %ops.i69.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %28 = ptrtoint ptr %ops.i69.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i69.i, align 4
  %del_timer.i70.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %del_timer.i70.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %del_timer.i70.i, align 4
  %tobool.not.i71.i = icmp eq ptr %31, null
  br i1 %tobool.not.i71.i, label %sw.bb11.i.otg_del_timer.exit73.i_crit_edge, label %if.end.i72.i

sw.bb11.i.otg_del_timer.exit73.i_crit_edge:       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit73.i

if.end.i72.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %31(ptr noundef %fsm, i32 noundef 2) #3
  br label %otg_del_timer.exit73.i

otg_del_timer.exit73.i:                           ; preds = %if.end.i72.i, %sw.bb11.i.otg_del_timer.exit73.i_crit_edge
  %a_wait_bcon_tmout.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 36
  %32 = ptrtoint ptr %a_wait_bcon_tmout.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %a_wait_bcon_tmout.i, align 4
  br label %otg_leave_state.exit

sw.bb13.i:                                        ; preds = %do.end
  %ops.i74.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %33 = ptrtoint ptr %ops.i74.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i74.i, align 4
  %del_timer.i75.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %del_timer.i75.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %del_timer.i75.i, align 4
  %tobool.not.i76.i = icmp eq ptr %36, null
  br i1 %tobool.not.i76.i, label %sw.bb13.i.otg_leave_state.exit_crit_edge, label %if.end.i77.i

sw.bb13.i.otg_leave_state.exit_crit_edge:         ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_leave_state.exit

if.end.i77.i:                                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %36(ptr noundef %fsm, i32 noundef 9) #3
  br label %otg_leave_state.exit

sw.bb15.i:                                        ; preds = %do.end
  %ops.i79.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %37 = ptrtoint ptr %ops.i79.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i79.i, align 4
  %del_timer.i80.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %del_timer.i80.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %del_timer.i80.i, align 4
  %tobool.not.i81.i = icmp eq ptr %40, null
  br i1 %tobool.not.i81.i, label %sw.bb15.i.otg_del_timer.exit83.i_crit_edge, label %if.end.i82.i

sw.bb15.i.otg_del_timer.exit83.i_crit_edge:       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit83.i

if.end.i82.i:                                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %40(ptr noundef %fsm, i32 noundef 3) #3
  br label %otg_del_timer.exit83.i

otg_del_timer.exit83.i:                           ; preds = %if.end.i82.i, %sw.bb15.i.otg_del_timer.exit83.i_crit_edge
  %a_aidl_bdis_tmout.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 37
  %41 = ptrtoint ptr %a_aidl_bdis_tmout.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %a_aidl_bdis_tmout.i, align 4
  %a_suspend_req_inf.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 33
  %42 = ptrtoint ptr %a_suspend_req_inf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %a_suspend_req_inf.i, align 4
  br label %otg_leave_state.exit

sw.bb17.i:                                        ; preds = %do.end
  %ops.i84.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %43 = ptrtoint ptr %ops.i84.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i84.i, align 4
  %del_timer.i85.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %del_timer.i85.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %del_timer.i85.i, align 4
  %tobool.not.i86.i = icmp eq ptr %46, null
  br i1 %tobool.not.i86.i, label %sw.bb17.i.otg_del_timer.exit88.i_crit_edge, label %if.end.i87.i

sw.bb17.i.otg_del_timer.exit88.i_crit_edge:       ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit88.i

if.end.i87.i:                                     ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %46(ptr noundef %fsm, i32 noundef 5) #3
  br label %otg_del_timer.exit88.i

otg_del_timer.exit88.i:                           ; preds = %if.end.i87.i, %sw.bb17.i.otg_del_timer.exit88.i_crit_edge
  %a_bidl_adis_tmout.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 39
  %47 = ptrtoint ptr %a_bidl_adis_tmout.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %a_bidl_adis_tmout.i, align 4
  %48 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %otg, align 4
  %gadget20.i = getelementptr inbounds %struct.usb_otg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %gadget20.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gadget20.i, align 4
  %tobool21.not.i = icmp eq ptr %51, null
  br i1 %tobool21.not.i, label %otg_del_timer.exit88.i.otg_leave_state.exit_crit_edge, label %if.then22.i

otg_del_timer.exit88.i.otg_leave_state.exit_crit_edge: ; preds = %otg_del_timer.exit88.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_leave_state.exit

if.then22.i:                                      ; preds = %otg_del_timer.exit88.i
  call void @__sanitizer_cov_trace_pc() #5
  %host_request_flag25.i = getelementptr inbounds %struct.usb_gadget, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %host_request_flag25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load26.i = load i32, ptr %host_request_flag25.i, align 4
  %bf.clear27.i = and i32 %bf.load26.i, -16777217
  store i32 %bf.clear27.i, ptr %host_request_flag25.i, align 4
  br label %otg_leave_state.exit

sw.bb30.i:                                        ; preds = %do.end
  %ops.i89.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %53 = ptrtoint ptr %ops.i89.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i89.i, align 4
  %del_timer.i90.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %del_timer.i90.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %del_timer.i90.i, align 4
  %tobool.not.i91.i = icmp eq ptr %56, null
  br i1 %tobool.not.i91.i, label %sw.bb30.i.otg_del_timer.exit93.i_crit_edge, label %if.end.i92.i

sw.bb30.i.otg_del_timer.exit93.i_crit_edge:       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_del_timer.exit93.i

if.end.i92.i:                                     ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %56(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_del_timer.exit93.i

otg_del_timer.exit93.i:                           ; preds = %if.end.i92.i, %sw.bb30.i.otg_del_timer.exit93.i_crit_edge
  %a_wait_vfall_tmout.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 35
  %57 = ptrtoint ptr %a_wait_vfall_tmout.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %a_wait_vfall_tmout.i, align 4
  %58 = ptrtoint ptr %ops.i89.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i89.i, align 4
  %del_timer.i95.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %del_timer.i95.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %del_timer.i95.i, align 4
  %tobool.not.i96.i = icmp eq ptr %61, null
  br i1 %tobool.not.i96.i, label %otg_del_timer.exit93.i.otg_leave_state.exit_crit_edge, label %if.end.i97.i

otg_del_timer.exit93.i.otg_leave_state.exit_crit_edge: ; preds = %otg_del_timer.exit93.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_leave_state.exit

if.end.i97.i:                                     ; preds = %otg_del_timer.exit93.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %61(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_leave_state.exit

otg_leave_state.exit:                             ; preds = %if.end.i97.i, %otg_del_timer.exit93.i.otg_leave_state.exit_crit_edge, %if.then22.i, %otg_del_timer.exit88.i.otg_leave_state.exit_crit_edge, %otg_del_timer.exit83.i, %if.end.i77.i, %sw.bb13.i.otg_leave_state.exit_crit_edge, %otg_del_timer.exit73.i, %otg_del_timer.exit68.i, %sw.bb7.i, %otg_del_timer.exit63.i, %if.then.i, %sw.bb2.i.otg_leave_state.exit_crit_edge, %sw.bb1.i, %otg_del_timer.exit.i, %do.end.otg_leave_state.exit_crit_edge
  %62 = zext i32 %new_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %new_state, label %otg_leave_state.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 4, label %sw.bb19
    i32 5, label %sw.bb25
    i32 6, label %sw.bb34
    i32 7, label %sw.bb41
    i32 8, label %sw.bb47
    i32 9, label %sw.bb53
    i32 10, label %sw.bb62
    i32 11, label %sw.bb68
    i32 12, label %sw.bb74
    i32 13, label %sw.bb80
  ]

otg_leave_state.exit.sw.epilog_crit_edge:         ; preds = %otg_leave_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %otg_leave_state.exit
  %ops.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %drv_vbus.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %drv_vbus.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %drv_vbus.i, align 4
  %tobool.not.i1 = icmp eq ptr %66, null
  br i1 %tobool.not.i1, label %sw.bb.otg_drv_vbus.exit_crit_edge, label %if.end.i

sw.bb.otg_drv_vbus.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit

if.end.i:                                         ; preds = %sw.bb
  %drv_vbus1.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %67 = ptrtoint ptr %drv_vbus1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %drv_vbus1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i, label %if.end.i.otg_drv_vbus.exit_crit_edge, label %if.then2.i

if.end.i.otg_drv_vbus.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %drv_vbus1.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %drv_vbus1.i, align 4
  %70 = ptrtoint ptr %drv_vbus.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drv_vbus.i, align 4
  tail call void %71(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_drv_vbus.exit

otg_drv_vbus.exit:                                ; preds = %if.then2.i, %if.end.i.otg_drv_vbus.exit_crit_edge, %sw.bb.otg_drv_vbus.exit_crit_edge
  %72 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool.not.i3 = icmp eq ptr %75, null
  br i1 %tobool.not.i3, label %otg_drv_vbus.exit.otg_chrg_vbus.exit_crit_edge, label %if.end.i4

otg_drv_vbus.exit.otg_chrg_vbus.exit_crit_edge:   ; preds = %otg_drv_vbus.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_chrg_vbus.exit

if.end.i4:                                        ; preds = %otg_drv_vbus.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %75(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_chrg_vbus.exit

otg_chrg_vbus.exit:                               ; preds = %if.end.i4, %otg_drv_vbus.exit.otg_chrg_vbus.exit_crit_edge
  %76 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i, align 4
  %loc_conn.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %loc_conn.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %loc_conn.i, align 4
  %tobool.not.i6 = icmp eq ptr %79, null
  br i1 %tobool.not.i6, label %otg_chrg_vbus.exit.otg_loc_conn.exit_crit_edge, label %if.end.i8

otg_chrg_vbus.exit.otg_loc_conn.exit_crit_edge:   ; preds = %otg_chrg_vbus.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit

if.end.i8:                                        ; preds = %otg_chrg_vbus.exit
  %loc_conn1.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %80 = ptrtoint ptr %loc_conn1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %loc_conn1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.not.i7 = icmp eq i32 %81, 0
  br i1 %cmp.not.i7, label %if.end.i8.otg_loc_conn.exit_crit_edge, label %if.then2.i9

if.end.i8.otg_loc_conn.exit_crit_edge:            ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit

if.then2.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #5
  %82 = ptrtoint ptr %loc_conn1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %loc_conn1.i, align 4
  %83 = ptrtoint ptr %loc_conn.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %loc_conn.i, align 4
  tail call void %84(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit

otg_loc_conn.exit:                                ; preds = %if.then2.i9, %if.end.i8.otg_loc_conn.exit_crit_edge, %otg_chrg_vbus.exit.otg_loc_conn.exit_crit_edge
  %85 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i, align 4
  %loc_sof.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %loc_sof.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %loc_sof.i, align 4
  %tobool.not.i11 = icmp eq ptr %88, null
  br i1 %tobool.not.i11, label %otg_loc_conn.exit.otg_loc_sof.exit_crit_edge, label %if.end.i13

otg_loc_conn.exit.otg_loc_sof.exit_crit_edge:     ; preds = %otg_loc_conn.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit

if.end.i13:                                       ; preds = %otg_loc_conn.exit
  %loc_sof1.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %89 = ptrtoint ptr %loc_sof1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %loc_sof1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.not.i12 = icmp eq i32 %90, 0
  br i1 %cmp.not.i12, label %if.end.i13.otg_loc_sof.exit_crit_edge, label %if.then2.i14

if.end.i13.otg_loc_sof.exit_crit_edge:            ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit

if.then2.i14:                                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  %91 = ptrtoint ptr %loc_sof1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %loc_sof1.i, align 4
  %92 = ptrtoint ptr %loc_sof.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %loc_sof.i, align 4
  tail call void %93(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit

otg_loc_sof.exit:                                 ; preds = %if.then2.i14, %if.end.i13.otg_loc_sof.exit_crit_edge, %otg_loc_conn.exit.otg_loc_sof.exit_crit_edge
  %94 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i, align 4
  %start_adp_sns.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %start_adp_sns.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %start_adp_sns.i, align 4
  %tobool.not.i16 = icmp eq ptr %97, null
  br i1 %tobool.not.i16, label %otg_loc_sof.exit.otg_start_adp_sns.exit_crit_edge, label %if.end.i18

otg_loc_sof.exit.otg_start_adp_sns.exit_crit_edge: ; preds = %otg_loc_sof.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_start_adp_sns.exit

if.end.i18:                                       ; preds = %otg_loc_sof.exit
  %adp_sns.i17 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 23
  %98 = ptrtoint ptr %adp_sns.i17 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %adp_sns.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool1.not.i = icmp eq i32 %99, 0
  br i1 %tobool1.not.i, label %if.then2.i19, label %if.end.i18.otg_start_adp_sns.exit_crit_edge

if.end.i18.otg_start_adp_sns.exit_crit_edge:      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_start_adp_sns.exit

if.then2.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #5
  %100 = ptrtoint ptr %adp_sns.i17 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %adp_sns.i17, align 4
  %101 = ptrtoint ptr %start_adp_sns.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %start_adp_sns.i, align 4
  tail call void %102(ptr noundef %fsm) #3
  br label %otg_start_adp_sns.exit

otg_start_adp_sns.exit:                           ; preds = %if.then2.i19, %if.end.i18.otg_start_adp_sns.exit_crit_edge, %otg_loc_sof.exit.otg_start_adp_sns.exit_crit_edge
  %protocol1.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %103 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %protocol1.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %104, label %otg_start_adp_sns.exit.if.end11.i_crit_edge [
    i32 0, label %otg_start_adp_sns.exit.otg_set_protocol.exit_crit_edge
    i32 1, label %if.then4.i
    i32 2, label %if.then7.i
  ]

otg_start_adp_sns.exit.otg_set_protocol.exit_crit_edge: ; preds = %otg_start_adp_sns.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit

otg_start_adp_sns.exit.if.end11.i_crit_edge:      ; preds = %otg_start_adp_sns.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

if.then4.i:                                       ; preds = %otg_start_adp_sns.exit
  %106 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i, align 4
  %start_host.i.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %start_host.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %start_host.i.i, align 4
  %tobool.not.i.i22 = icmp eq ptr %109, null
  br i1 %tobool.not.i.i22, label %if.then4.i.otg_set_protocol.exit_crit_edge, label %if.then4.i.if.end9.i_crit_edge

if.then4.i.if.end9.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

if.then4.i.otg_set_protocol.exit_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit

if.then7.i:                                       ; preds = %otg_start_adp_sns.exit
  %110 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i, align 4
  %start_gadget.i.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %111, i32 0, i32 10
  %112 = ptrtoint ptr %start_gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %start_gadget.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %113, null
  br i1 %tobool.not.i2.i, label %if.then7.i.otg_set_protocol.exit_crit_edge, label %if.then7.i.if.end9.i_crit_edge

if.then7.i.if.end9.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

if.then7.i.otg_set_protocol.exit_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit

if.end9.i:                                        ; preds = %if.then7.i.if.end9.i_crit_edge, %if.then4.i.if.end9.i_crit_edge
  %.sink.i = phi ptr [ %109, %if.then4.i.if.end9.i_crit_edge ], [ %113, %if.then7.i.if.end9.i_crit_edge ]
  %call.i3.i = tail call i32 %.sink.i(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i23 = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i23, label %if.end9.i.if.end11.i_crit_edge, label %if.end9.i.otg_set_protocol.exit_crit_edge

if.end9.i.otg_set_protocol.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit

if.end9.i.if.end11.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end9.i.if.end11.i_crit_edge, %otg_start_adp_sns.exit.if.end11.i_crit_edge
  %114 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %protocol1.i, align 4
  br label %otg_set_protocol.exit

otg_set_protocol.exit:                            ; preds = %if.end11.i, %if.end9.i.otg_set_protocol.exit_crit_edge, %if.then7.i.otg_set_protocol.exit_crit_edge, %if.then4.i.otg_set_protocol.exit_crit_edge, %otg_start_adp_sns.exit.otg_set_protocol.exit_crit_edge
  %115 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i, align 4
  %add_timer.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %add_timer.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add_timer.i, align 4
  %tobool.not.i25 = icmp eq ptr %118, null
  br i1 %tobool.not.i25, label %otg_set_protocol.exit.sw.epilog_crit_edge, label %if.end.i26

otg_set_protocol.exit.sw.epilog_crit_edge:        ; preds = %otg_set_protocol.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i26:                                       ; preds = %otg_set_protocol.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %118(ptr noundef %fsm, i32 noundef 7) #3
  br label %sw.epilog

sw.bb9:                                           ; preds = %otg_leave_state.exit
  %ops.i27 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %119 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops.i27, align 4
  %start_pulse.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %start_pulse.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %start_pulse.i, align 4
  %tobool.not.i28 = icmp eq ptr %122, null
  br i1 %tobool.not.i28, label %sw.bb9.otg_start_pulse.exit_crit_edge, label %if.end.i31

sw.bb9.otg_start_pulse.exit_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_start_pulse.exit

if.end.i31:                                       ; preds = %sw.bb9
  %data_pulse.i29 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 24
  %123 = ptrtoint ptr %data_pulse.i29 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %data_pulse.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool1.not.i30 = icmp eq i32 %124, 0
  br i1 %tobool1.not.i30, label %if.then2.i32, label %if.end.i31.otg_start_pulse.exit_crit_edge

if.end.i31.otg_start_pulse.exit_crit_edge:        ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_start_pulse.exit

if.then2.i32:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %data_pulse.i29 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %data_pulse.i29, align 4
  %126 = ptrtoint ptr %start_pulse.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %start_pulse.i, align 4
  tail call void %127(ptr noundef %fsm) #3
  br label %otg_start_pulse.exit

otg_start_pulse.exit:                             ; preds = %if.then2.i32, %if.end.i31.otg_start_pulse.exit_crit_edge, %sw.bb9.otg_start_pulse.exit_crit_edge
  %128 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i27, align 4
  %loc_sof.i34 = getelementptr inbounds %struct.otg_fsm_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %loc_sof.i34 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %loc_sof.i34, align 4
  %tobool.not.i35 = icmp eq ptr %131, null
  br i1 %tobool.not.i35, label %otg_start_pulse.exit.otg_loc_sof.exit40_crit_edge, label %if.end.i38

otg_start_pulse.exit.otg_loc_sof.exit40_crit_edge: ; preds = %otg_start_pulse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit40

if.end.i38:                                       ; preds = %otg_start_pulse.exit
  %loc_sof1.i36 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %132 = ptrtoint ptr %loc_sof1.i36 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %loc_sof1.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.not.i37 = icmp eq i32 %133, 0
  br i1 %cmp.not.i37, label %if.end.i38.otg_loc_sof.exit40_crit_edge, label %if.then2.i39

if.end.i38.otg_loc_sof.exit40_crit_edge:          ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit40

if.then2.i39:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #5
  %134 = ptrtoint ptr %loc_sof1.i36 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %loc_sof1.i36, align 4
  %135 = ptrtoint ptr %loc_sof.i34 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %loc_sof.i34, align 4
  tail call void %136(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit40

otg_loc_sof.exit40:                               ; preds = %if.then2.i39, %if.end.i38.otg_loc_sof.exit40_crit_edge, %otg_start_pulse.exit.otg_loc_sof.exit40_crit_edge
  %protocol1.i41 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %137 = ptrtoint ptr %protocol1.i41 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %protocol1.i41, align 4
  %139 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %138, label %otg_loc_sof.exit40.if.end11.i56_crit_edge [
    i32 0, label %otg_loc_sof.exit40.otg_set_protocol.exit57_crit_edge
    i32 1, label %if.then4.i47
    i32 2, label %if.then7.i51
  ]

otg_loc_sof.exit40.otg_set_protocol.exit57_crit_edge: ; preds = %otg_loc_sof.exit40
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit57

otg_loc_sof.exit40.if.end11.i56_crit_edge:        ; preds = %otg_loc_sof.exit40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i56

if.then4.i47:                                     ; preds = %otg_loc_sof.exit40
  %140 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ops.i27, align 4
  %start_host.i.i45 = getelementptr inbounds %struct.otg_fsm_ops, ptr %141, i32 0, i32 9
  %142 = ptrtoint ptr %start_host.i.i45 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %start_host.i.i45, align 4
  %tobool.not.i.i46 = icmp eq ptr %143, null
  br i1 %tobool.not.i.i46, label %if.then4.i47.otg_set_protocol.exit57_crit_edge, label %if.then4.i47.if.end9.i55_crit_edge

if.then4.i47.if.end9.i55_crit_edge:               ; preds = %if.then4.i47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i55

if.then4.i47.otg_set_protocol.exit57_crit_edge:   ; preds = %if.then4.i47
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit57

if.then7.i51:                                     ; preds = %otg_loc_sof.exit40
  %144 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i27, align 4
  %start_gadget.i.i49 = getelementptr inbounds %struct.otg_fsm_ops, ptr %145, i32 0, i32 10
  %146 = ptrtoint ptr %start_gadget.i.i49 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %start_gadget.i.i49, align 4
  %tobool.not.i2.i50 = icmp eq ptr %147, null
  br i1 %tobool.not.i2.i50, label %if.then7.i51.otg_set_protocol.exit57_crit_edge, label %if.then7.i51.if.end9.i55_crit_edge

if.then7.i51.if.end9.i55_crit_edge:               ; preds = %if.then7.i51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i55

if.then7.i51.otg_set_protocol.exit57_crit_edge:   ; preds = %if.then7.i51
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit57

if.end9.i55:                                      ; preds = %if.then7.i51.if.end9.i55_crit_edge, %if.then4.i47.if.end9.i55_crit_edge
  %.sink.i52 = phi ptr [ %143, %if.then4.i47.if.end9.i55_crit_edge ], [ %147, %if.then7.i51.if.end9.i55_crit_edge ]
  %call.i3.i53 = tail call i32 %.sink.i52(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i53)
  %tobool.not.i54 = icmp eq i32 %call.i3.i53, 0
  br i1 %tobool.not.i54, label %if.end9.i55.if.end11.i56_crit_edge, label %if.end9.i55.otg_set_protocol.exit57_crit_edge

if.end9.i55.otg_set_protocol.exit57_crit_edge:    ; preds = %if.end9.i55
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit57

if.end9.i55.if.end11.i56_crit_edge:               ; preds = %if.end9.i55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i56

if.end11.i56:                                     ; preds = %if.end9.i55.if.end11.i56_crit_edge, %otg_loc_sof.exit40.if.end11.i56_crit_edge
  %148 = ptrtoint ptr %protocol1.i41 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %protocol1.i41, align 4
  br label %otg_set_protocol.exit57

otg_set_protocol.exit57:                          ; preds = %if.end11.i56, %if.end9.i55.otg_set_protocol.exit57_crit_edge, %if.then7.i51.otg_set_protocol.exit57_crit_edge, %if.then4.i47.otg_set_protocol.exit57_crit_edge, %otg_loc_sof.exit40.otg_set_protocol.exit57_crit_edge
  %149 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ops.i27, align 4
  %add_timer.i59 = getelementptr inbounds %struct.otg_fsm_ops, ptr %150, i32 0, i32 7
  %151 = ptrtoint ptr %add_timer.i59 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %add_timer.i59, align 4
  %tobool.not.i60 = icmp eq ptr %152, null
  br i1 %tobool.not.i60, label %otg_set_protocol.exit57.sw.epilog_crit_edge, label %if.end.i61

otg_set_protocol.exit57.sw.epilog_crit_edge:      ; preds = %otg_set_protocol.exit57
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i61:                                       ; preds = %otg_set_protocol.exit57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %152(ptr noundef %fsm, i32 noundef 8) #3
  br label %sw.epilog

sw.bb14:                                          ; preds = %otg_leave_state.exit
  %ops.i63 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %153 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i63, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %tobool.not.i64 = icmp eq ptr %156, null
  br i1 %tobool.not.i64, label %sw.bb14.otg_chrg_vbus.exit66_crit_edge, label %if.end.i65

sw.bb14.otg_chrg_vbus.exit66_crit_edge:           ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_chrg_vbus.exit66

if.end.i65:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %156(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_chrg_vbus.exit66

otg_chrg_vbus.exit66:                             ; preds = %if.end.i65, %sw.bb14.otg_chrg_vbus.exit66_crit_edge
  %157 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i63, align 4
  %loc_sof.i68 = getelementptr inbounds %struct.otg_fsm_ops, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %loc_sof.i68 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %loc_sof.i68, align 4
  %tobool.not.i69 = icmp eq ptr %160, null
  br i1 %tobool.not.i69, label %otg_chrg_vbus.exit66.otg_loc_sof.exit74_crit_edge, label %if.end.i72

otg_chrg_vbus.exit66.otg_loc_sof.exit74_crit_edge: ; preds = %otg_chrg_vbus.exit66
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit74

if.end.i72:                                       ; preds = %otg_chrg_vbus.exit66
  %loc_sof1.i70 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %161 = ptrtoint ptr %loc_sof1.i70 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %loc_sof1.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp.not.i71 = icmp eq i32 %162, 0
  br i1 %cmp.not.i71, label %if.end.i72.otg_loc_sof.exit74_crit_edge, label %if.then2.i73

if.end.i72.otg_loc_sof.exit74_crit_edge:          ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit74

if.then2.i73:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #5
  %163 = ptrtoint ptr %loc_sof1.i70 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %loc_sof1.i70, align 4
  %164 = ptrtoint ptr %loc_sof.i68 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %loc_sof.i68, align 4
  tail call void %165(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit74

otg_loc_sof.exit74:                               ; preds = %if.then2.i73, %if.end.i72.otg_loc_sof.exit74_crit_edge, %otg_chrg_vbus.exit66.otg_loc_sof.exit74_crit_edge
  %protocol1.i75 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %166 = ptrtoint ptr %protocol1.i75 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %protocol1.i75, align 4
  %168 = zext i32 %167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %167, label %otg_loc_sof.exit74.if.end11.i90_crit_edge [
    i32 2, label %otg_loc_sof.exit74.otg_set_protocol.exit92_crit_edge
    i32 1, label %if.then4.i81
  ]

otg_loc_sof.exit74.otg_set_protocol.exit92_crit_edge: ; preds = %otg_loc_sof.exit74
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit92

otg_loc_sof.exit74.if.end11.i90_crit_edge:        ; preds = %otg_loc_sof.exit74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i90

if.then4.i81:                                     ; preds = %otg_loc_sof.exit74
  %169 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops.i63, align 4
  %start_host.i.i79 = getelementptr inbounds %struct.otg_fsm_ops, ptr %170, i32 0, i32 9
  %171 = ptrtoint ptr %start_host.i.i79 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %start_host.i.i79, align 4
  %tobool.not.i.i80 = icmp eq ptr %172, null
  br i1 %tobool.not.i.i80, label %if.then4.i81.otg_set_protocol.exit92_crit_edge, label %if.end9.i89

if.then4.i81.otg_set_protocol.exit92_crit_edge:   ; preds = %if.then4.i81
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit92

if.end9.i89:                                      ; preds = %if.then4.i81
  %call.i3.i87 = tail call i32 %172(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i87)
  %tobool.not.i88 = icmp eq i32 %call.i3.i87, 0
  br i1 %tobool.not.i88, label %if.end9.i89.if.end11.i90_crit_edge, label %if.end9.i89.otg_set_protocol.exit92_crit_edge

if.end9.i89.otg_set_protocol.exit92_crit_edge:    ; preds = %if.end9.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit92

if.end9.i89.if.end11.i90_crit_edge:               ; preds = %if.end9.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i90

if.end11.i90:                                     ; preds = %if.end9.i89.if.end11.i90_crit_edge, %otg_loc_sof.exit74.if.end11.i90_crit_edge
  %173 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i63, align 4
  %start_gadget.i14.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %174, i32 0, i32 10
  %175 = ptrtoint ptr %start_gadget.i14.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %start_gadget.i14.i, align 4
  %tobool.not.i15.i = icmp eq ptr %176, null
  br i1 %tobool.not.i15.i, label %if.end11.i90.otg_set_protocol.exit92_crit_edge, label %if.end20.i

if.end11.i90.otg_set_protocol.exit92_crit_edge:   ; preds = %if.end11.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit92

if.end20.i:                                       ; preds = %if.end11.i90
  %call.i16.i = tail call i32 %176(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool21.not.i91 = icmp eq i32 %call.i16.i, 0
  br i1 %tobool21.not.i91, label %if.end23.i, label %if.end20.i.otg_set_protocol.exit92_crit_edge

if.end20.i.otg_set_protocol.exit92_crit_edge:     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit92

if.end23.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  %177 = ptrtoint ptr %protocol1.i75 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %protocol1.i75, align 4
  br label %otg_set_protocol.exit92

otg_set_protocol.exit92:                          ; preds = %if.end23.i, %if.end20.i.otg_set_protocol.exit92_crit_edge, %if.end11.i90.otg_set_protocol.exit92_crit_edge, %if.end9.i89.otg_set_protocol.exit92_crit_edge, %if.then4.i81.otg_set_protocol.exit92_crit_edge, %otg_loc_sof.exit74.otg_set_protocol.exit92_crit_edge
  %178 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops.i63, align 4
  %loc_conn.i94 = getelementptr inbounds %struct.otg_fsm_ops, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %loc_conn.i94 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %loc_conn.i94, align 4
  %tobool.not.i95 = icmp eq ptr %181, null
  br i1 %tobool.not.i95, label %otg_set_protocol.exit92.sw.epilog_crit_edge, label %if.end.i98

otg_set_protocol.exit92.sw.epilog_crit_edge:      ; preds = %otg_set_protocol.exit92
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i98:                                       ; preds = %otg_set_protocol.exit92
  %loc_conn1.i96 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %182 = ptrtoint ptr %loc_conn1.i96 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %loc_conn1.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %183)
  %cmp.not.i97 = icmp eq i32 %183, 1
  br i1 %cmp.not.i97, label %if.end.i98.sw.epilog_crit_edge, label %if.then2.i99

if.end.i98.sw.epilog_crit_edge:                   ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then2.i99:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #5
  %184 = ptrtoint ptr %loc_conn1.i96 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %loc_conn1.i96, align 4
  %185 = ptrtoint ptr %loc_conn.i94 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %loc_conn.i94, align 4
  tail call void %186(ptr noundef %fsm, i32 noundef 1) #3
  br label %sw.epilog

sw.bb19:                                          ; preds = %otg_leave_state.exit
  %ops.i101 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %187 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops.i101, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %tobool.not.i102 = icmp eq ptr %190, null
  br i1 %tobool.not.i102, label %sw.bb19.otg_chrg_vbus.exit104_crit_edge, label %if.end.i103

sw.bb19.otg_chrg_vbus.exit104_crit_edge:          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_chrg_vbus.exit104

if.end.i103:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %190(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_chrg_vbus.exit104

otg_chrg_vbus.exit104:                            ; preds = %if.end.i103, %sw.bb19.otg_chrg_vbus.exit104_crit_edge
  %191 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ops.i101, align 4
  %loc_conn.i106 = getelementptr inbounds %struct.otg_fsm_ops, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %loc_conn.i106 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %loc_conn.i106, align 4
  %tobool.not.i107 = icmp eq ptr %194, null
  br i1 %tobool.not.i107, label %otg_chrg_vbus.exit104.otg_loc_conn.exit112_crit_edge, label %if.end.i110

otg_chrg_vbus.exit104.otg_loc_conn.exit112_crit_edge: ; preds = %otg_chrg_vbus.exit104
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit112

if.end.i110:                                      ; preds = %otg_chrg_vbus.exit104
  %loc_conn1.i108 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %195 = ptrtoint ptr %loc_conn1.i108 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %loc_conn1.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp.not.i109 = icmp eq i32 %196, 0
  br i1 %cmp.not.i109, label %if.end.i110.otg_loc_conn.exit112_crit_edge, label %if.then2.i111

if.end.i110.otg_loc_conn.exit112_crit_edge:       ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit112

if.then2.i111:                                    ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #5
  %197 = ptrtoint ptr %loc_conn1.i108 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %loc_conn1.i108, align 4
  %198 = ptrtoint ptr %loc_conn.i106 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %loc_conn.i106, align 4
  tail call void %199(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit112

otg_loc_conn.exit112:                             ; preds = %if.then2.i111, %if.end.i110.otg_loc_conn.exit112_crit_edge, %otg_chrg_vbus.exit104.otg_loc_conn.exit112_crit_edge
  %200 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ops.i101, align 4
  %loc_sof.i114 = getelementptr inbounds %struct.otg_fsm_ops, ptr %201, i32 0, i32 3
  %202 = ptrtoint ptr %loc_sof.i114 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %loc_sof.i114, align 4
  %tobool.not.i115 = icmp eq ptr %203, null
  br i1 %tobool.not.i115, label %otg_loc_conn.exit112.otg_loc_sof.exit120_crit_edge, label %if.end.i118

otg_loc_conn.exit112.otg_loc_sof.exit120_crit_edge: ; preds = %otg_loc_conn.exit112
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit120

if.end.i118:                                      ; preds = %otg_loc_conn.exit112
  %loc_sof1.i116 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %204 = ptrtoint ptr %loc_sof1.i116 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %loc_sof1.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp.not.i117 = icmp eq i32 %205, 0
  br i1 %cmp.not.i117, label %if.end.i118.otg_loc_sof.exit120_crit_edge, label %if.then2.i119

if.end.i118.otg_loc_sof.exit120_crit_edge:        ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit120

if.then2.i119:                                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #5
  %206 = ptrtoint ptr %loc_sof1.i116 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %loc_sof1.i116, align 4
  %207 = ptrtoint ptr %loc_sof.i114 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %loc_sof.i114, align 4
  tail call void %208(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit120

otg_loc_sof.exit120:                              ; preds = %if.then2.i119, %if.end.i118.otg_loc_sof.exit120_crit_edge, %otg_loc_conn.exit112.otg_loc_sof.exit120_crit_edge
  %protocol1.i121 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %209 = ptrtoint ptr %protocol1.i121 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %protocol1.i121, align 4
  %211 = zext i32 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %210, label %otg_loc_sof.exit120.if.end11.i136_crit_edge [
    i32 1, label %otg_loc_sof.exit120.otg_set_protocol.exit141_crit_edge
    i32 2, label %if.then7.i131
  ]

otg_loc_sof.exit120.otg_set_protocol.exit141_crit_edge: ; preds = %otg_loc_sof.exit120
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit141

otg_loc_sof.exit120.if.end11.i136_crit_edge:      ; preds = %otg_loc_sof.exit120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i136

if.then7.i131:                                    ; preds = %otg_loc_sof.exit120
  %212 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops.i101, align 4
  %start_gadget.i.i129 = getelementptr inbounds %struct.otg_fsm_ops, ptr %213, i32 0, i32 10
  %214 = ptrtoint ptr %start_gadget.i.i129 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %start_gadget.i.i129, align 4
  %tobool.not.i2.i130 = icmp eq ptr %215, null
  br i1 %tobool.not.i2.i130, label %if.then7.i131.otg_set_protocol.exit141_crit_edge, label %if.end9.i135

if.then7.i131.otg_set_protocol.exit141_crit_edge: ; preds = %if.then7.i131
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit141

if.end9.i135:                                     ; preds = %if.then7.i131
  %call.i3.i133 = tail call i32 %215(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i133)
  %tobool.not.i134 = icmp eq i32 %call.i3.i133, 0
  br i1 %tobool.not.i134, label %if.end9.i135.if.end11.i136_crit_edge, label %if.end9.i135.otg_set_protocol.exit141_crit_edge

if.end9.i135.otg_set_protocol.exit141_crit_edge:  ; preds = %if.end9.i135
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit141

if.end9.i135.if.end11.i136_crit_edge:             ; preds = %if.end9.i135
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i136

if.end11.i136:                                    ; preds = %if.end9.i135.if.end11.i136_crit_edge, %otg_loc_sof.exit120.if.end11.i136_crit_edge
  %216 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ops.i101, align 4
  %start_host.i7.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %217, i32 0, i32 9
  %218 = ptrtoint ptr %start_host.i7.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %start_host.i7.i, align 4
  %tobool.not.i8.i = icmp eq ptr %219, null
  br i1 %tobool.not.i8.i, label %if.end11.i136.otg_set_protocol.exit141_crit_edge, label %if.end20.i139

if.end11.i136.otg_set_protocol.exit141_crit_edge: ; preds = %if.end11.i136
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit141

if.end20.i139:                                    ; preds = %if.end11.i136
  %call.i16.i137 = tail call i32 %219(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i137)
  %tobool21.not.i138 = icmp eq i32 %call.i16.i137, 0
  br i1 %tobool21.not.i138, label %if.end23.i140, label %if.end20.i139.otg_set_protocol.exit141_crit_edge

if.end20.i139.otg_set_protocol.exit141_crit_edge: ; preds = %if.end20.i139
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit141

if.end23.i140:                                    ; preds = %if.end20.i139
  call void @__sanitizer_cov_trace_pc() #5
  %220 = ptrtoint ptr %protocol1.i121 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 1, ptr %protocol1.i121, align 4
  br label %otg_set_protocol.exit141

otg_set_protocol.exit141:                         ; preds = %if.end23.i140, %if.end20.i139.otg_set_protocol.exit141_crit_edge, %if.end11.i136.otg_set_protocol.exit141_crit_edge, %if.end9.i135.otg_set_protocol.exit141_crit_edge, %if.then7.i131.otg_set_protocol.exit141_crit_edge, %otg_loc_sof.exit120.otg_set_protocol.exit141_crit_edge
  %221 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops.i101, align 4
  %add_timer.i143 = getelementptr inbounds %struct.otg_fsm_ops, ptr %222, i32 0, i32 7
  %223 = ptrtoint ptr %add_timer.i143 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %add_timer.i143, align 4
  %tobool.not.i144 = icmp eq ptr %224, null
  br i1 %tobool.not.i144, label %otg_set_protocol.exit141.otg_add_timer.exit146_crit_edge, label %if.end.i145

otg_set_protocol.exit141.otg_add_timer.exit146_crit_edge: ; preds = %otg_set_protocol.exit141
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_add_timer.exit146

if.end.i145:                                      ; preds = %otg_set_protocol.exit141
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %224(ptr noundef %fsm, i32 noundef 4) #3
  br label %otg_add_timer.exit146

otg_add_timer.exit146:                            ; preds = %if.end.i145, %otg_set_protocol.exit141.otg_add_timer.exit146_crit_edge
  %a_bus_suspend = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 7
  %225 = ptrtoint ptr %a_bus_suspend to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %a_bus_suspend, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %otg_leave_state.exit
  %ops.i147 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %226 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ops.i147, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %tobool.not.i148 = icmp eq ptr %229, null
  br i1 %tobool.not.i148, label %sw.bb25.otg_chrg_vbus.exit150_crit_edge, label %if.end.i149

sw.bb25.otg_chrg_vbus.exit150_crit_edge:          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_chrg_vbus.exit150

if.end.i149:                                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %229(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_chrg_vbus.exit150

otg_chrg_vbus.exit150:                            ; preds = %if.end.i149, %sw.bb25.otg_chrg_vbus.exit150_crit_edge
  %230 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops.i147, align 4
  %loc_conn.i152 = getelementptr inbounds %struct.otg_fsm_ops, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %loc_conn.i152 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %loc_conn.i152, align 4
  %tobool.not.i153 = icmp eq ptr %233, null
  br i1 %tobool.not.i153, label %otg_chrg_vbus.exit150.otg_loc_conn.exit158_crit_edge, label %if.end.i156

otg_chrg_vbus.exit150.otg_loc_conn.exit158_crit_edge: ; preds = %otg_chrg_vbus.exit150
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit158

if.end.i156:                                      ; preds = %otg_chrg_vbus.exit150
  %loc_conn1.i154 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %234 = ptrtoint ptr %loc_conn1.i154 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %loc_conn1.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp.not.i155 = icmp eq i32 %235, 0
  br i1 %cmp.not.i155, label %if.end.i156.otg_loc_conn.exit158_crit_edge, label %if.then2.i157

if.end.i156.otg_loc_conn.exit158_crit_edge:       ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit158

if.then2.i157:                                    ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #5
  %236 = ptrtoint ptr %loc_conn1.i154 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %loc_conn1.i154, align 4
  %237 = ptrtoint ptr %loc_conn.i152 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %loc_conn.i152, align 4
  tail call void %238(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit158

otg_loc_conn.exit158:                             ; preds = %if.then2.i157, %if.end.i156.otg_loc_conn.exit158_crit_edge, %otg_chrg_vbus.exit150.otg_loc_conn.exit158_crit_edge
  %239 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ops.i147, align 4
  %loc_sof.i160 = getelementptr inbounds %struct.otg_fsm_ops, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %loc_sof.i160 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %loc_sof.i160, align 4
  %tobool.not.i161 = icmp eq ptr %242, null
  br i1 %tobool.not.i161, label %otg_loc_conn.exit158.otg_loc_sof.exit166_crit_edge, label %if.end.i164

otg_loc_conn.exit158.otg_loc_sof.exit166_crit_edge: ; preds = %otg_loc_conn.exit158
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit166

if.end.i164:                                      ; preds = %otg_loc_conn.exit158
  %loc_sof1.i162 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %243 = ptrtoint ptr %loc_sof1.i162 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %loc_sof1.i162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %244)
  %cmp.not.i163 = icmp eq i32 %244, 1
  br i1 %cmp.not.i163, label %if.end.i164.otg_loc_sof.exit166_crit_edge, label %if.then2.i165

if.end.i164.otg_loc_sof.exit166_crit_edge:        ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit166

if.then2.i165:                                    ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #5
  %245 = ptrtoint ptr %loc_sof1.i162 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1, ptr %loc_sof1.i162, align 4
  %246 = ptrtoint ptr %loc_sof.i160 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %loc_sof.i160, align 4
  tail call void %247(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_loc_sof.exit166

otg_loc_sof.exit166:                              ; preds = %if.then2.i165, %if.end.i164.otg_loc_sof.exit166_crit_edge, %otg_loc_conn.exit158.otg_loc_sof.exit166_crit_edge
  %protocol1.i167 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %248 = ptrtoint ptr %protocol1.i167 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %protocol1.i167, align 4
  %250 = zext i32 %249 to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %249, label %otg_loc_sof.exit166.if.end11.i182_crit_edge [
    i32 1, label %otg_loc_sof.exit166.otg_set_protocol.exit190_crit_edge
    i32 2, label %if.then7.i177
  ]

otg_loc_sof.exit166.otg_set_protocol.exit190_crit_edge: ; preds = %otg_loc_sof.exit166
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit190

otg_loc_sof.exit166.if.end11.i182_crit_edge:      ; preds = %otg_loc_sof.exit166
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i182

if.then7.i177:                                    ; preds = %otg_loc_sof.exit166
  %251 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ops.i147, align 4
  %start_gadget.i.i175 = getelementptr inbounds %struct.otg_fsm_ops, ptr %252, i32 0, i32 10
  %253 = ptrtoint ptr %start_gadget.i.i175 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %start_gadget.i.i175, align 4
  %tobool.not.i2.i176 = icmp eq ptr %254, null
  br i1 %tobool.not.i2.i176, label %if.then7.i177.otg_set_protocol.exit190_crit_edge, label %if.end9.i181

if.then7.i177.otg_set_protocol.exit190_crit_edge: ; preds = %if.then7.i177
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit190

if.end9.i181:                                     ; preds = %if.then7.i177
  %call.i3.i179 = tail call i32 %254(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i179)
  %tobool.not.i180 = icmp eq i32 %call.i3.i179, 0
  br i1 %tobool.not.i180, label %if.end9.i181.if.end11.i182_crit_edge, label %if.end9.i181.otg_set_protocol.exit190_crit_edge

if.end9.i181.otg_set_protocol.exit190_crit_edge:  ; preds = %if.end9.i181
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit190

if.end9.i181.if.end11.i182_crit_edge:             ; preds = %if.end9.i181
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i182

if.end11.i182:                                    ; preds = %if.end9.i181.if.end11.i182_crit_edge, %otg_loc_sof.exit166.if.end11.i182_crit_edge
  %255 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ops.i147, align 4
  %start_host.i7.i184 = getelementptr inbounds %struct.otg_fsm_ops, ptr %256, i32 0, i32 9
  %257 = ptrtoint ptr %start_host.i7.i184 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %start_host.i7.i184, align 4
  %tobool.not.i8.i185 = icmp eq ptr %258, null
  br i1 %tobool.not.i8.i185, label %if.end11.i182.otg_set_protocol.exit190_crit_edge, label %if.end20.i188

if.end11.i182.otg_set_protocol.exit190_crit_edge: ; preds = %if.end11.i182
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit190

if.end20.i188:                                    ; preds = %if.end11.i182
  %call.i16.i186 = tail call i32 %258(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i186)
  %tobool21.not.i187 = icmp eq i32 %call.i16.i186, 0
  br i1 %tobool21.not.i187, label %if.end23.i189, label %if.end20.i188.otg_set_protocol.exit190_crit_edge

if.end20.i188.otg_set_protocol.exit190_crit_edge: ; preds = %if.end20.i188
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit190

if.end23.i189:                                    ; preds = %if.end20.i188
  call void @__sanitizer_cov_trace_pc() #5
  %259 = ptrtoint ptr %protocol1.i167 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 1, ptr %protocol1.i167, align 4
  br label %otg_set_protocol.exit190

otg_set_protocol.exit190:                         ; preds = %if.end23.i189, %if.end20.i188.otg_set_protocol.exit190_crit_edge, %if.end11.i182.otg_set_protocol.exit190_crit_edge, %if.end9.i181.otg_set_protocol.exit190_crit_edge, %if.then7.i177.otg_set_protocol.exit190_crit_edge, %otg_loc_sof.exit166.otg_set_protocol.exit190_crit_edge
  %260 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %otg, align 4
  %host = getelementptr inbounds %struct.usb_otg, ptr %261, i32 0, i32 3
  %262 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %host, align 4
  %otg_port = getelementptr inbounds %struct.usb_bus, ptr %263, i32 0, i32 5
  %264 = ptrtoint ptr %otg_port to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %otg_port, align 1
  %conv = zext i8 %265 to i32
  %call33 = tail call i32 @usb_bus_start_enum(ptr noundef %263, i32 noundef %conv) #3
  tail call fastcc void @otg_start_hnp_polling(ptr noundef %fsm)
  br label %sw.epilog

sw.bb34:                                          ; preds = %otg_leave_state.exit
  %ops.i191 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %266 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ops.i191, align 4
  %drv_vbus.i192 = getelementptr inbounds %struct.otg_fsm_ops, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %drv_vbus.i192 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %drv_vbus.i192, align 4
  %tobool.not.i193 = icmp eq ptr %269, null
  br i1 %tobool.not.i193, label %sw.bb34.otg_drv_vbus.exit198_crit_edge, label %if.end.i196

sw.bb34.otg_drv_vbus.exit198_crit_edge:           ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit198

if.end.i196:                                      ; preds = %sw.bb34
  %drv_vbus1.i194 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %270 = ptrtoint ptr %drv_vbus1.i194 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %drv_vbus1.i194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp.not.i195 = icmp eq i32 %271, 0
  br i1 %cmp.not.i195, label %if.end.i196.otg_drv_vbus.exit198_crit_edge, label %if.then2.i197

if.end.i196.otg_drv_vbus.exit198_crit_edge:       ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit198

if.then2.i197:                                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #5
  %272 = ptrtoint ptr %drv_vbus1.i194 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 0, ptr %drv_vbus1.i194, align 4
  %273 = ptrtoint ptr %drv_vbus.i192 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %drv_vbus.i192, align 4
  tail call void %274(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_drv_vbus.exit198

otg_drv_vbus.exit198:                             ; preds = %if.then2.i197, %if.end.i196.otg_drv_vbus.exit198_crit_edge, %sw.bb34.otg_drv_vbus.exit198_crit_edge
  %275 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ops.i191, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %tobool.not.i200 = icmp eq ptr %278, null
  br i1 %tobool.not.i200, label %otg_drv_vbus.exit198.otg_chrg_vbus.exit202_crit_edge, label %if.end.i201

otg_drv_vbus.exit198.otg_chrg_vbus.exit202_crit_edge: ; preds = %otg_drv_vbus.exit198
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_chrg_vbus.exit202

if.end.i201:                                      ; preds = %otg_drv_vbus.exit198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %278(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_chrg_vbus.exit202

otg_chrg_vbus.exit202:                            ; preds = %if.end.i201, %otg_drv_vbus.exit198.otg_chrg_vbus.exit202_crit_edge
  %279 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ops.i191, align 4
  %loc_conn.i204 = getelementptr inbounds %struct.otg_fsm_ops, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %loc_conn.i204 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %loc_conn.i204, align 4
  %tobool.not.i205 = icmp eq ptr %282, null
  br i1 %tobool.not.i205, label %otg_chrg_vbus.exit202.otg_loc_conn.exit210_crit_edge, label %if.end.i208

otg_chrg_vbus.exit202.otg_loc_conn.exit210_crit_edge: ; preds = %otg_chrg_vbus.exit202
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit210

if.end.i208:                                      ; preds = %otg_chrg_vbus.exit202
  %loc_conn1.i206 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %283 = ptrtoint ptr %loc_conn1.i206 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %loc_conn1.i206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp.not.i207 = icmp eq i32 %284, 0
  br i1 %cmp.not.i207, label %if.end.i208.otg_loc_conn.exit210_crit_edge, label %if.then2.i209

if.end.i208.otg_loc_conn.exit210_crit_edge:       ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit210

if.then2.i209:                                    ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #5
  %285 = ptrtoint ptr %loc_conn1.i206 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %loc_conn1.i206, align 4
  %286 = ptrtoint ptr %loc_conn.i204 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %loc_conn.i204, align 4
  tail call void %287(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit210

otg_loc_conn.exit210:                             ; preds = %if.then2.i209, %if.end.i208.otg_loc_conn.exit210_crit_edge, %otg_chrg_vbus.exit202.otg_loc_conn.exit210_crit_edge
  %288 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ops.i191, align 4
  %loc_sof.i212 = getelementptr inbounds %struct.otg_fsm_ops, ptr %289, i32 0, i32 3
  %290 = ptrtoint ptr %loc_sof.i212 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %loc_sof.i212, align 4
  %tobool.not.i213 = icmp eq ptr %291, null
  br i1 %tobool.not.i213, label %otg_loc_conn.exit210.otg_loc_sof.exit218_crit_edge, label %if.end.i216

otg_loc_conn.exit210.otg_loc_sof.exit218_crit_edge: ; preds = %otg_loc_conn.exit210
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit218

if.end.i216:                                      ; preds = %otg_loc_conn.exit210
  %loc_sof1.i214 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %292 = ptrtoint ptr %loc_sof1.i214 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %loc_sof1.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp.not.i215 = icmp eq i32 %293, 0
  br i1 %cmp.not.i215, label %if.end.i216.otg_loc_sof.exit218_crit_edge, label %if.then2.i217

if.end.i216.otg_loc_sof.exit218_crit_edge:        ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit218

if.then2.i217:                                    ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #5
  %294 = ptrtoint ptr %loc_sof1.i214 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 0, ptr %loc_sof1.i214, align 4
  %295 = ptrtoint ptr %loc_sof.i212 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %loc_sof.i212, align 4
  tail call void %296(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit218

otg_loc_sof.exit218:                              ; preds = %if.then2.i217, %if.end.i216.otg_loc_sof.exit218_crit_edge, %otg_loc_conn.exit210.otg_loc_sof.exit218_crit_edge
  %297 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ops.i191, align 4
  %start_adp_prb.i = getelementptr inbounds %struct.otg_fsm_ops, ptr %298, i32 0, i32 5
  %299 = ptrtoint ptr %start_adp_prb.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %start_adp_prb.i, align 4
  %tobool.not.i220 = icmp eq ptr %300, null
  br i1 %tobool.not.i220, label %otg_loc_sof.exit218.otg_start_adp_prb.exit_crit_edge, label %if.end.i223

otg_loc_sof.exit218.otg_start_adp_prb.exit_crit_edge: ; preds = %otg_loc_sof.exit218
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_start_adp_prb.exit

if.end.i223:                                      ; preds = %otg_loc_sof.exit218
  %adp_prb.i221 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 22
  %301 = ptrtoint ptr %adp_prb.i221 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %adp_prb.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool1.not.i222 = icmp eq i32 %302, 0
  br i1 %tobool1.not.i222, label %if.then2.i225, label %if.end.i223.otg_start_adp_prb.exit_crit_edge

if.end.i223.otg_start_adp_prb.exit_crit_edge:     ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_start_adp_prb.exit

if.then2.i225:                                    ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #5
  %adp_sns.i224 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 23
  %303 = ptrtoint ptr %adp_sns.i224 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %adp_sns.i224, align 4
  %304 = ptrtoint ptr %adp_prb.i221 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 1, ptr %adp_prb.i221, align 4
  %305 = ptrtoint ptr %start_adp_prb.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %start_adp_prb.i, align 4
  tail call void %306(ptr noundef %fsm) #3
  br label %otg_start_adp_prb.exit

otg_start_adp_prb.exit:                           ; preds = %if.then2.i225, %if.end.i223.otg_start_adp_prb.exit_crit_edge, %otg_loc_sof.exit218.otg_start_adp_prb.exit_crit_edge
  %protocol1.i226 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %307 = ptrtoint ptr %protocol1.i226 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %protocol1.i226, align 4
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %308, label %otg_start_adp_prb.exit.if.end11.i241_crit_edge [
    i32 1, label %otg_start_adp_prb.exit.sw.epilog_crit_edge
    i32 2, label %if.then7.i236
  ]

otg_start_adp_prb.exit.sw.epilog_crit_edge:       ; preds = %otg_start_adp_prb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

otg_start_adp_prb.exit.if.end11.i241_crit_edge:   ; preds = %otg_start_adp_prb.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i241

if.then7.i236:                                    ; preds = %otg_start_adp_prb.exit
  %310 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops.i191, align 4
  %start_gadget.i.i234 = getelementptr inbounds %struct.otg_fsm_ops, ptr %311, i32 0, i32 10
  %312 = ptrtoint ptr %start_gadget.i.i234 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %start_gadget.i.i234, align 4
  %tobool.not.i2.i235 = icmp eq ptr %313, null
  br i1 %tobool.not.i2.i235, label %if.then7.i236.sw.epilog_crit_edge, label %if.end9.i240

if.then7.i236.sw.epilog_crit_edge:                ; preds = %if.then7.i236
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end9.i240:                                     ; preds = %if.then7.i236
  %call.i3.i238 = tail call i32 %313(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i238)
  %tobool.not.i239 = icmp eq i32 %call.i3.i238, 0
  br i1 %tobool.not.i239, label %if.end9.i240.if.end11.i241_crit_edge, label %if.end9.i240.sw.epilog_crit_edge

if.end9.i240.sw.epilog_crit_edge:                 ; preds = %if.end9.i240
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end9.i240.if.end11.i241_crit_edge:             ; preds = %if.end9.i240
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i241

if.end11.i241:                                    ; preds = %if.end9.i240.if.end11.i241_crit_edge, %otg_start_adp_prb.exit.if.end11.i241_crit_edge
  %314 = ptrtoint ptr %ops.i191 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ops.i191, align 4
  %start_host.i7.i243 = getelementptr inbounds %struct.otg_fsm_ops, ptr %315, i32 0, i32 9
  %316 = ptrtoint ptr %start_host.i7.i243 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %start_host.i7.i243, align 4
  %tobool.not.i8.i244 = icmp eq ptr %317, null
  br i1 %tobool.not.i8.i244, label %if.end11.i241.sw.epilog_crit_edge, label %if.end20.i247

if.end11.i241.sw.epilog_crit_edge:                ; preds = %if.end11.i241
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end20.i247:                                    ; preds = %if.end11.i241
  %call.i16.i245 = tail call i32 %317(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i245)
  %tobool21.not.i246 = icmp eq i32 %call.i16.i245, 0
  br i1 %tobool21.not.i246, label %if.end23.i248, label %if.end20.i247.sw.epilog_crit_edge

if.end20.i247.sw.epilog_crit_edge:                ; preds = %if.end20.i247
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end23.i248:                                    ; preds = %if.end20.i247
  call void @__sanitizer_cov_trace_pc() #5
  %318 = ptrtoint ptr %protocol1.i226 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 1, ptr %protocol1.i226, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %otg_leave_state.exit
  %ops.i250 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %319 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %ops.i250, align 4
  %drv_vbus.i251 = getelementptr inbounds %struct.otg_fsm_ops, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %drv_vbus.i251 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %drv_vbus.i251, align 4
  %tobool.not.i252 = icmp eq ptr %322, null
  br i1 %tobool.not.i252, label %sw.bb41.otg_drv_vbus.exit257_crit_edge, label %if.end.i255

sw.bb41.otg_drv_vbus.exit257_crit_edge:           ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit257

if.end.i255:                                      ; preds = %sw.bb41
  %drv_vbus1.i253 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %323 = ptrtoint ptr %drv_vbus1.i253 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %drv_vbus1.i253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %324)
  %cmp.not.i254 = icmp eq i32 %324, 1
  br i1 %cmp.not.i254, label %if.end.i255.otg_drv_vbus.exit257_crit_edge, label %if.then2.i256

if.end.i255.otg_drv_vbus.exit257_crit_edge:       ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit257

if.then2.i256:                                    ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #5
  %325 = ptrtoint ptr %drv_vbus1.i253 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 1, ptr %drv_vbus1.i253, align 4
  %326 = ptrtoint ptr %drv_vbus.i251 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %drv_vbus.i251, align 4
  tail call void %327(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_drv_vbus.exit257

otg_drv_vbus.exit257:                             ; preds = %if.then2.i256, %if.end.i255.otg_drv_vbus.exit257_crit_edge, %sw.bb41.otg_drv_vbus.exit257_crit_edge
  %328 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ops.i250, align 4
  %loc_conn.i259 = getelementptr inbounds %struct.otg_fsm_ops, ptr %329, i32 0, i32 2
  %330 = ptrtoint ptr %loc_conn.i259 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %loc_conn.i259, align 4
  %tobool.not.i260 = icmp eq ptr %331, null
  br i1 %tobool.not.i260, label %otg_drv_vbus.exit257.otg_loc_conn.exit265_crit_edge, label %if.end.i263

otg_drv_vbus.exit257.otg_loc_conn.exit265_crit_edge: ; preds = %otg_drv_vbus.exit257
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit265

if.end.i263:                                      ; preds = %otg_drv_vbus.exit257
  %loc_conn1.i261 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %332 = ptrtoint ptr %loc_conn1.i261 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %loc_conn1.i261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp.not.i262 = icmp eq i32 %333, 0
  br i1 %cmp.not.i262, label %if.end.i263.otg_loc_conn.exit265_crit_edge, label %if.then2.i264

if.end.i263.otg_loc_conn.exit265_crit_edge:       ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit265

if.then2.i264:                                    ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #5
  %334 = ptrtoint ptr %loc_conn1.i261 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 0, ptr %loc_conn1.i261, align 4
  %335 = ptrtoint ptr %loc_conn.i259 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %loc_conn.i259, align 4
  tail call void %336(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit265

otg_loc_conn.exit265:                             ; preds = %if.then2.i264, %if.end.i263.otg_loc_conn.exit265_crit_edge, %otg_drv_vbus.exit257.otg_loc_conn.exit265_crit_edge
  %337 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ops.i250, align 4
  %loc_sof.i267 = getelementptr inbounds %struct.otg_fsm_ops, ptr %338, i32 0, i32 3
  %339 = ptrtoint ptr %loc_sof.i267 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %loc_sof.i267, align 4
  %tobool.not.i268 = icmp eq ptr %340, null
  br i1 %tobool.not.i268, label %otg_loc_conn.exit265.otg_loc_sof.exit273_crit_edge, label %if.end.i271

otg_loc_conn.exit265.otg_loc_sof.exit273_crit_edge: ; preds = %otg_loc_conn.exit265
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit273

if.end.i271:                                      ; preds = %otg_loc_conn.exit265
  %loc_sof1.i269 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %341 = ptrtoint ptr %loc_sof1.i269 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %loc_sof1.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %cmp.not.i270 = icmp eq i32 %342, 0
  br i1 %cmp.not.i270, label %if.end.i271.otg_loc_sof.exit273_crit_edge, label %if.then2.i272

if.end.i271.otg_loc_sof.exit273_crit_edge:        ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit273

if.then2.i272:                                    ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #5
  %343 = ptrtoint ptr %loc_sof1.i269 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %loc_sof1.i269, align 4
  %344 = ptrtoint ptr %loc_sof.i267 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %loc_sof.i267, align 4
  tail call void %345(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit273

otg_loc_sof.exit273:                              ; preds = %if.then2.i272, %if.end.i271.otg_loc_sof.exit273_crit_edge, %otg_loc_conn.exit265.otg_loc_sof.exit273_crit_edge
  %protocol1.i274 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %346 = ptrtoint ptr %protocol1.i274 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %protocol1.i274, align 4
  %348 = zext i32 %347 to i64
  call void @__sanitizer_cov_trace_switch(i64 %348, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %347, label %otg_loc_sof.exit273.if.end11.i289_crit_edge [
    i32 1, label %otg_loc_sof.exit273.otg_set_protocol.exit297_crit_edge
    i32 2, label %if.then7.i284
  ]

otg_loc_sof.exit273.otg_set_protocol.exit297_crit_edge: ; preds = %otg_loc_sof.exit273
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit297

otg_loc_sof.exit273.if.end11.i289_crit_edge:      ; preds = %otg_loc_sof.exit273
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i289

if.then7.i284:                                    ; preds = %otg_loc_sof.exit273
  %349 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %ops.i250, align 4
  %start_gadget.i.i282 = getelementptr inbounds %struct.otg_fsm_ops, ptr %350, i32 0, i32 10
  %351 = ptrtoint ptr %start_gadget.i.i282 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %start_gadget.i.i282, align 4
  %tobool.not.i2.i283 = icmp eq ptr %352, null
  br i1 %tobool.not.i2.i283, label %if.then7.i284.otg_set_protocol.exit297_crit_edge, label %if.end9.i288

if.then7.i284.otg_set_protocol.exit297_crit_edge: ; preds = %if.then7.i284
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit297

if.end9.i288:                                     ; preds = %if.then7.i284
  %call.i3.i286 = tail call i32 %352(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i286)
  %tobool.not.i287 = icmp eq i32 %call.i3.i286, 0
  br i1 %tobool.not.i287, label %if.end9.i288.if.end11.i289_crit_edge, label %if.end9.i288.otg_set_protocol.exit297_crit_edge

if.end9.i288.otg_set_protocol.exit297_crit_edge:  ; preds = %if.end9.i288
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit297

if.end9.i288.if.end11.i289_crit_edge:             ; preds = %if.end9.i288
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i289

if.end11.i289:                                    ; preds = %if.end9.i288.if.end11.i289_crit_edge, %otg_loc_sof.exit273.if.end11.i289_crit_edge
  %353 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %ops.i250, align 4
  %start_host.i7.i291 = getelementptr inbounds %struct.otg_fsm_ops, ptr %354, i32 0, i32 9
  %355 = ptrtoint ptr %start_host.i7.i291 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %start_host.i7.i291, align 4
  %tobool.not.i8.i292 = icmp eq ptr %356, null
  br i1 %tobool.not.i8.i292, label %if.end11.i289.otg_set_protocol.exit297_crit_edge, label %if.end20.i295

if.end11.i289.otg_set_protocol.exit297_crit_edge: ; preds = %if.end11.i289
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit297

if.end20.i295:                                    ; preds = %if.end11.i289
  %call.i16.i293 = tail call i32 %356(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i293)
  %tobool21.not.i294 = icmp eq i32 %call.i16.i293, 0
  br i1 %tobool21.not.i294, label %if.end23.i296, label %if.end20.i295.otg_set_protocol.exit297_crit_edge

if.end20.i295.otg_set_protocol.exit297_crit_edge: ; preds = %if.end20.i295
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit297

if.end23.i296:                                    ; preds = %if.end20.i295
  call void @__sanitizer_cov_trace_pc() #5
  %357 = ptrtoint ptr %protocol1.i274 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 1, ptr %protocol1.i274, align 4
  br label %otg_set_protocol.exit297

otg_set_protocol.exit297:                         ; preds = %if.end23.i296, %if.end20.i295.otg_set_protocol.exit297_crit_edge, %if.end11.i289.otg_set_protocol.exit297_crit_edge, %if.end9.i288.otg_set_protocol.exit297_crit_edge, %if.then7.i284.otg_set_protocol.exit297_crit_edge, %otg_loc_sof.exit273.otg_set_protocol.exit297_crit_edge
  %358 = ptrtoint ptr %ops.i250 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ops.i250, align 4
  %add_timer.i299 = getelementptr inbounds %struct.otg_fsm_ops, ptr %359, i32 0, i32 7
  %360 = ptrtoint ptr %add_timer.i299 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %add_timer.i299, align 4
  %tobool.not.i300 = icmp eq ptr %361, null
  br i1 %tobool.not.i300, label %otg_set_protocol.exit297.sw.epilog_crit_edge, label %if.end.i301

otg_set_protocol.exit297.sw.epilog_crit_edge:     ; preds = %otg_set_protocol.exit297
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i301:                                      ; preds = %otg_set_protocol.exit297
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %361(ptr noundef %fsm, i32 noundef 0) #3
  br label %sw.epilog

sw.bb47:                                          ; preds = %otg_leave_state.exit
  %ops.i303 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %362 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ops.i303, align 4
  %drv_vbus.i304 = getelementptr inbounds %struct.otg_fsm_ops, ptr %363, i32 0, i32 1
  %364 = ptrtoint ptr %drv_vbus.i304 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %drv_vbus.i304, align 4
  %tobool.not.i305 = icmp eq ptr %365, null
  br i1 %tobool.not.i305, label %sw.bb47.otg_drv_vbus.exit310_crit_edge, label %if.end.i308

sw.bb47.otg_drv_vbus.exit310_crit_edge:           ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit310

if.end.i308:                                      ; preds = %sw.bb47
  %drv_vbus1.i306 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %366 = ptrtoint ptr %drv_vbus1.i306 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %drv_vbus1.i306, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %367)
  %cmp.not.i307 = icmp eq i32 %367, 1
  br i1 %cmp.not.i307, label %if.end.i308.otg_drv_vbus.exit310_crit_edge, label %if.then2.i309

if.end.i308.otg_drv_vbus.exit310_crit_edge:       ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit310

if.then2.i309:                                    ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #5
  %368 = ptrtoint ptr %drv_vbus1.i306 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 1, ptr %drv_vbus1.i306, align 4
  %369 = ptrtoint ptr %drv_vbus.i304 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %drv_vbus.i304, align 4
  tail call void %370(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_drv_vbus.exit310

otg_drv_vbus.exit310:                             ; preds = %if.then2.i309, %if.end.i308.otg_drv_vbus.exit310_crit_edge, %sw.bb47.otg_drv_vbus.exit310_crit_edge
  %371 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %ops.i303, align 4
  %loc_conn.i312 = getelementptr inbounds %struct.otg_fsm_ops, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %loc_conn.i312 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %loc_conn.i312, align 4
  %tobool.not.i313 = icmp eq ptr %374, null
  br i1 %tobool.not.i313, label %otg_drv_vbus.exit310.otg_loc_conn.exit318_crit_edge, label %if.end.i316

otg_drv_vbus.exit310.otg_loc_conn.exit318_crit_edge: ; preds = %otg_drv_vbus.exit310
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit318

if.end.i316:                                      ; preds = %otg_drv_vbus.exit310
  %loc_conn1.i314 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %375 = ptrtoint ptr %loc_conn1.i314 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %loc_conn1.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %cmp.not.i315 = icmp eq i32 %376, 0
  br i1 %cmp.not.i315, label %if.end.i316.otg_loc_conn.exit318_crit_edge, label %if.then2.i317

if.end.i316.otg_loc_conn.exit318_crit_edge:       ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit318

if.then2.i317:                                    ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #5
  %377 = ptrtoint ptr %loc_conn1.i314 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %loc_conn1.i314, align 4
  %378 = ptrtoint ptr %loc_conn.i312 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %loc_conn.i312, align 4
  tail call void %379(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit318

otg_loc_conn.exit318:                             ; preds = %if.then2.i317, %if.end.i316.otg_loc_conn.exit318_crit_edge, %otg_drv_vbus.exit310.otg_loc_conn.exit318_crit_edge
  %380 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ops.i303, align 4
  %loc_sof.i320 = getelementptr inbounds %struct.otg_fsm_ops, ptr %381, i32 0, i32 3
  %382 = ptrtoint ptr %loc_sof.i320 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %loc_sof.i320, align 4
  %tobool.not.i321 = icmp eq ptr %383, null
  br i1 %tobool.not.i321, label %otg_loc_conn.exit318.otg_loc_sof.exit326_crit_edge, label %if.end.i324

otg_loc_conn.exit318.otg_loc_sof.exit326_crit_edge: ; preds = %otg_loc_conn.exit318
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit326

if.end.i324:                                      ; preds = %otg_loc_conn.exit318
  %loc_sof1.i322 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %384 = ptrtoint ptr %loc_sof1.i322 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %loc_sof1.i322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %cmp.not.i323 = icmp eq i32 %385, 0
  br i1 %cmp.not.i323, label %if.end.i324.otg_loc_sof.exit326_crit_edge, label %if.then2.i325

if.end.i324.otg_loc_sof.exit326_crit_edge:        ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit326

if.then2.i325:                                    ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #5
  %386 = ptrtoint ptr %loc_sof1.i322 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 0, ptr %loc_sof1.i322, align 4
  %387 = ptrtoint ptr %loc_sof.i320 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %loc_sof.i320, align 4
  tail call void %388(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit326

otg_loc_sof.exit326:                              ; preds = %if.then2.i325, %if.end.i324.otg_loc_sof.exit326_crit_edge, %otg_loc_conn.exit318.otg_loc_sof.exit326_crit_edge
  %protocol1.i327 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %389 = ptrtoint ptr %protocol1.i327 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %protocol1.i327, align 4
  %391 = zext i32 %390 to i64
  call void @__sanitizer_cov_trace_switch(i64 %391, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %390, label %otg_loc_sof.exit326.if.end11.i342_crit_edge [
    i32 1, label %otg_loc_sof.exit326.otg_set_protocol.exit350_crit_edge
    i32 2, label %if.then7.i337
  ]

otg_loc_sof.exit326.otg_set_protocol.exit350_crit_edge: ; preds = %otg_loc_sof.exit326
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit350

otg_loc_sof.exit326.if.end11.i342_crit_edge:      ; preds = %otg_loc_sof.exit326
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i342

if.then7.i337:                                    ; preds = %otg_loc_sof.exit326
  %392 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ops.i303, align 4
  %start_gadget.i.i335 = getelementptr inbounds %struct.otg_fsm_ops, ptr %393, i32 0, i32 10
  %394 = ptrtoint ptr %start_gadget.i.i335 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %start_gadget.i.i335, align 4
  %tobool.not.i2.i336 = icmp eq ptr %395, null
  br i1 %tobool.not.i2.i336, label %if.then7.i337.otg_set_protocol.exit350_crit_edge, label %if.end9.i341

if.then7.i337.otg_set_protocol.exit350_crit_edge: ; preds = %if.then7.i337
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit350

if.end9.i341:                                     ; preds = %if.then7.i337
  %call.i3.i339 = tail call i32 %395(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i339)
  %tobool.not.i340 = icmp eq i32 %call.i3.i339, 0
  br i1 %tobool.not.i340, label %if.end9.i341.if.end11.i342_crit_edge, label %if.end9.i341.otg_set_protocol.exit350_crit_edge

if.end9.i341.otg_set_protocol.exit350_crit_edge:  ; preds = %if.end9.i341
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit350

if.end9.i341.if.end11.i342_crit_edge:             ; preds = %if.end9.i341
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i342

if.end11.i342:                                    ; preds = %if.end9.i341.if.end11.i342_crit_edge, %otg_loc_sof.exit326.if.end11.i342_crit_edge
  %396 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %ops.i303, align 4
  %start_host.i7.i344 = getelementptr inbounds %struct.otg_fsm_ops, ptr %397, i32 0, i32 9
  %398 = ptrtoint ptr %start_host.i7.i344 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %start_host.i7.i344, align 4
  %tobool.not.i8.i345 = icmp eq ptr %399, null
  br i1 %tobool.not.i8.i345, label %if.end11.i342.otg_set_protocol.exit350_crit_edge, label %if.end20.i348

if.end11.i342.otg_set_protocol.exit350_crit_edge: ; preds = %if.end11.i342
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit350

if.end20.i348:                                    ; preds = %if.end11.i342
  %call.i16.i346 = tail call i32 %399(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i346)
  %tobool21.not.i347 = icmp eq i32 %call.i16.i346, 0
  br i1 %tobool21.not.i347, label %if.end23.i349, label %if.end20.i348.otg_set_protocol.exit350_crit_edge

if.end20.i348.otg_set_protocol.exit350_crit_edge: ; preds = %if.end20.i348
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit350

if.end23.i349:                                    ; preds = %if.end20.i348
  call void @__sanitizer_cov_trace_pc() #5
  %400 = ptrtoint ptr %protocol1.i327 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 1, ptr %protocol1.i327, align 4
  br label %otg_set_protocol.exit350

otg_set_protocol.exit350:                         ; preds = %if.end23.i349, %if.end20.i348.otg_set_protocol.exit350_crit_edge, %if.end11.i342.otg_set_protocol.exit350_crit_edge, %if.end9.i341.otg_set_protocol.exit350_crit_edge, %if.then7.i337.otg_set_protocol.exit350_crit_edge, %otg_loc_sof.exit326.otg_set_protocol.exit350_crit_edge
  %401 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ops.i303, align 4
  %add_timer.i352 = getelementptr inbounds %struct.otg_fsm_ops, ptr %402, i32 0, i32 7
  %403 = ptrtoint ptr %add_timer.i352 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %add_timer.i352, align 4
  %tobool.not.i353 = icmp eq ptr %404, null
  br i1 %tobool.not.i353, label %otg_set_protocol.exit350.sw.epilog_crit_edge, label %if.end.i354

otg_set_protocol.exit350.sw.epilog_crit_edge:     ; preds = %otg_set_protocol.exit350
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i354:                                      ; preds = %otg_set_protocol.exit350
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %404(ptr noundef %fsm, i32 noundef 2) #3
  br label %sw.epilog

sw.bb53:                                          ; preds = %otg_leave_state.exit
  %ops.i356 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %405 = ptrtoint ptr %ops.i356 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %ops.i356, align 4
  %drv_vbus.i357 = getelementptr inbounds %struct.otg_fsm_ops, ptr %406, i32 0, i32 1
  %407 = ptrtoint ptr %drv_vbus.i357 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %drv_vbus.i357, align 4
  %tobool.not.i358 = icmp eq ptr %408, null
  br i1 %tobool.not.i358, label %sw.bb53.otg_drv_vbus.exit363_crit_edge, label %if.end.i361

sw.bb53.otg_drv_vbus.exit363_crit_edge:           ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit363

if.end.i361:                                      ; preds = %sw.bb53
  %drv_vbus1.i359 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %409 = ptrtoint ptr %drv_vbus1.i359 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %drv_vbus1.i359, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %410)
  %cmp.not.i360 = icmp eq i32 %410, 1
  br i1 %cmp.not.i360, label %if.end.i361.otg_drv_vbus.exit363_crit_edge, label %if.then2.i362

if.end.i361.otg_drv_vbus.exit363_crit_edge:       ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit363

if.then2.i362:                                    ; preds = %if.end.i361
  call void @__sanitizer_cov_trace_pc() #5
  %411 = ptrtoint ptr %drv_vbus1.i359 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 1, ptr %drv_vbus1.i359, align 4
  %412 = ptrtoint ptr %drv_vbus.i357 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %drv_vbus.i357, align 4
  tail call void %413(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_drv_vbus.exit363

otg_drv_vbus.exit363:                             ; preds = %if.then2.i362, %if.end.i361.otg_drv_vbus.exit363_crit_edge, %sw.bb53.otg_drv_vbus.exit363_crit_edge
  %414 = ptrtoint ptr %ops.i356 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ops.i356, align 4
  %loc_conn.i365 = getelementptr inbounds %struct.otg_fsm_ops, ptr %415, i32 0, i32 2
  %416 = ptrtoint ptr %loc_conn.i365 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %loc_conn.i365, align 4
  %tobool.not.i366 = icmp eq ptr %417, null
  br i1 %tobool.not.i366, label %otg_drv_vbus.exit363.otg_loc_conn.exit371_crit_edge, label %if.end.i369

otg_drv_vbus.exit363.otg_loc_conn.exit371_crit_edge: ; preds = %otg_drv_vbus.exit363
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit371

if.end.i369:                                      ; preds = %otg_drv_vbus.exit363
  %loc_conn1.i367 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %418 = ptrtoint ptr %loc_conn1.i367 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %loc_conn1.i367, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %cmp.not.i368 = icmp eq i32 %419, 0
  br i1 %cmp.not.i368, label %if.end.i369.otg_loc_conn.exit371_crit_edge, label %if.then2.i370

if.end.i369.otg_loc_conn.exit371_crit_edge:       ; preds = %if.end.i369
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit371

if.then2.i370:                                    ; preds = %if.end.i369
  call void @__sanitizer_cov_trace_pc() #5
  %420 = ptrtoint ptr %loc_conn1.i367 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 0, ptr %loc_conn1.i367, align 4
  %421 = ptrtoint ptr %loc_conn.i365 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %loc_conn.i365, align 4
  tail call void %422(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit371

otg_loc_conn.exit371:                             ; preds = %if.then2.i370, %if.end.i369.otg_loc_conn.exit371_crit_edge, %otg_drv_vbus.exit363.otg_loc_conn.exit371_crit_edge
  %423 = ptrtoint ptr %ops.i356 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %ops.i356, align 4
  %loc_sof.i373 = getelementptr inbounds %struct.otg_fsm_ops, ptr %424, i32 0, i32 3
  %425 = ptrtoint ptr %loc_sof.i373 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %loc_sof.i373, align 4
  %tobool.not.i374 = icmp eq ptr %426, null
  br i1 %tobool.not.i374, label %otg_loc_conn.exit371.otg_loc_sof.exit379_crit_edge, label %if.end.i377

otg_loc_conn.exit371.otg_loc_sof.exit379_crit_edge: ; preds = %otg_loc_conn.exit371
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit379

if.end.i377:                                      ; preds = %otg_loc_conn.exit371
  %loc_sof1.i375 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %427 = ptrtoint ptr %loc_sof1.i375 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %loc_sof1.i375, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %428)
  %cmp.not.i376 = icmp eq i32 %428, 1
  br i1 %cmp.not.i376, label %if.end.i377.otg_loc_sof.exit379_crit_edge, label %if.then2.i378

if.end.i377.otg_loc_sof.exit379_crit_edge:        ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit379

if.then2.i378:                                    ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #5
  %429 = ptrtoint ptr %loc_sof1.i375 to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 1, ptr %loc_sof1.i375, align 4
  %430 = ptrtoint ptr %loc_sof.i373 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %loc_sof.i373, align 4
  tail call void %431(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_loc_sof.exit379

otg_loc_sof.exit379:                              ; preds = %if.then2.i378, %if.end.i377.otg_loc_sof.exit379_crit_edge, %otg_loc_conn.exit371.otg_loc_sof.exit379_crit_edge
  %protocol1.i380 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %432 = ptrtoint ptr %protocol1.i380 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %protocol1.i380, align 4
  %434 = zext i32 %433 to i64
  call void @__sanitizer_cov_trace_switch(i64 %434, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %433, label %otg_loc_sof.exit379.if.end11.i395_crit_edge [
    i32 1, label %otg_loc_sof.exit379.otg_set_protocol.exit403_crit_edge
    i32 2, label %if.then7.i390
  ]

otg_loc_sof.exit379.otg_set_protocol.exit403_crit_edge: ; preds = %otg_loc_sof.exit379
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit403

otg_loc_sof.exit379.if.end11.i395_crit_edge:      ; preds = %otg_loc_sof.exit379
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i395

if.then7.i390:                                    ; preds = %otg_loc_sof.exit379
  %435 = ptrtoint ptr %ops.i356 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops.i356, align 4
  %start_gadget.i.i388 = getelementptr inbounds %struct.otg_fsm_ops, ptr %436, i32 0, i32 10
  %437 = ptrtoint ptr %start_gadget.i.i388 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %start_gadget.i.i388, align 4
  %tobool.not.i2.i389 = icmp eq ptr %438, null
  br i1 %tobool.not.i2.i389, label %if.then7.i390.otg_set_protocol.exit403_crit_edge, label %if.end9.i394

if.then7.i390.otg_set_protocol.exit403_crit_edge: ; preds = %if.then7.i390
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit403

if.end9.i394:                                     ; preds = %if.then7.i390
  %call.i3.i392 = tail call i32 %438(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i392)
  %tobool.not.i393 = icmp eq i32 %call.i3.i392, 0
  br i1 %tobool.not.i393, label %if.end9.i394.if.end11.i395_crit_edge, label %if.end9.i394.otg_set_protocol.exit403_crit_edge

if.end9.i394.otg_set_protocol.exit403_crit_edge:  ; preds = %if.end9.i394
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit403

if.end9.i394.if.end11.i395_crit_edge:             ; preds = %if.end9.i394
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i395

if.end11.i395:                                    ; preds = %if.end9.i394.if.end11.i395_crit_edge, %otg_loc_sof.exit379.if.end11.i395_crit_edge
  %439 = ptrtoint ptr %ops.i356 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %ops.i356, align 4
  %start_host.i7.i397 = getelementptr inbounds %struct.otg_fsm_ops, ptr %440, i32 0, i32 9
  %441 = ptrtoint ptr %start_host.i7.i397 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %start_host.i7.i397, align 4
  %tobool.not.i8.i398 = icmp eq ptr %442, null
  br i1 %tobool.not.i8.i398, label %if.end11.i395.otg_set_protocol.exit403_crit_edge, label %if.end20.i401

if.end11.i395.otg_set_protocol.exit403_crit_edge: ; preds = %if.end11.i395
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit403

if.end20.i401:                                    ; preds = %if.end11.i395
  %call.i16.i399 = tail call i32 %442(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i399)
  %tobool21.not.i400 = icmp eq i32 %call.i16.i399, 0
  br i1 %tobool21.not.i400, label %if.end23.i402, label %if.end20.i401.otg_set_protocol.exit403_crit_edge

if.end20.i401.otg_set_protocol.exit403_crit_edge: ; preds = %if.end20.i401
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit403

if.end23.i402:                                    ; preds = %if.end20.i401
  call void @__sanitizer_cov_trace_pc() #5
  %443 = ptrtoint ptr %protocol1.i380 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 1, ptr %protocol1.i380, align 4
  br label %otg_set_protocol.exit403

otg_set_protocol.exit403:                         ; preds = %if.end23.i402, %if.end20.i401.otg_set_protocol.exit403_crit_edge, %if.end11.i395.otg_set_protocol.exit403_crit_edge, %if.end9.i394.otg_set_protocol.exit403_crit_edge, %if.then7.i390.otg_set_protocol.exit403_crit_edge, %otg_loc_sof.exit379.otg_set_protocol.exit403_crit_edge
  %a_bus_req = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 14
  %444 = ptrtoint ptr %a_bus_req to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %a_bus_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %tobool.not = icmp eq i32 %445, 0
  br i1 %tobool.not, label %otg_set_protocol.exit403.if.then59_crit_edge, label %lor.lhs.false

otg_set_protocol.exit403.if.then59_crit_edge:     ; preds = %otg_set_protocol.exit403
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then59

lor.lhs.false:                                    ; preds = %otg_set_protocol.exit403
  %a_suspend_req_inf = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 33
  %446 = ptrtoint ptr %a_suspend_req_inf to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %a_suspend_req_inf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %447)
  %tobool58.not = icmp eq i32 %447, 0
  br i1 %tobool58.not, label %lor.lhs.false.if.end61_crit_edge, label %lor.lhs.false.if.then59_crit_edge

lor.lhs.false.if.then59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then59

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then59:                                        ; preds = %lor.lhs.false.if.then59_crit_edge, %otg_set_protocol.exit403.if.then59_crit_edge
  %448 = ptrtoint ptr %ops.i356 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ops.i356, align 4
  %add_timer.i405 = getelementptr inbounds %struct.otg_fsm_ops, ptr %449, i32 0, i32 7
  %450 = ptrtoint ptr %add_timer.i405 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %add_timer.i405, align 4
  %tobool.not.i406 = icmp eq ptr %451, null
  br i1 %tobool.not.i406, label %if.then59.if.end61_crit_edge, label %if.end.i407

if.then59.if.end61_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.end.i407:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %451(ptr noundef %fsm, i32 noundef 9) #3
  br label %if.end61

if.end61:                                         ; preds = %if.end.i407, %if.then59.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge
  tail call fastcc void @otg_start_hnp_polling(ptr noundef %fsm)
  br label %sw.epilog

sw.bb62:                                          ; preds = %otg_leave_state.exit
  %ops.i409 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %452 = ptrtoint ptr %ops.i409 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %ops.i409, align 4
  %drv_vbus.i410 = getelementptr inbounds %struct.otg_fsm_ops, ptr %453, i32 0, i32 1
  %454 = ptrtoint ptr %drv_vbus.i410 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %drv_vbus.i410, align 4
  %tobool.not.i411 = icmp eq ptr %455, null
  br i1 %tobool.not.i411, label %sw.bb62.otg_drv_vbus.exit416_crit_edge, label %if.end.i414

sw.bb62.otg_drv_vbus.exit416_crit_edge:           ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit416

if.end.i414:                                      ; preds = %sw.bb62
  %drv_vbus1.i412 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %456 = ptrtoint ptr %drv_vbus1.i412 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %drv_vbus1.i412, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %457)
  %cmp.not.i413 = icmp eq i32 %457, 1
  br i1 %cmp.not.i413, label %if.end.i414.otg_drv_vbus.exit416_crit_edge, label %if.then2.i415

if.end.i414.otg_drv_vbus.exit416_crit_edge:       ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit416

if.then2.i415:                                    ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #5
  %458 = ptrtoint ptr %drv_vbus1.i412 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 1, ptr %drv_vbus1.i412, align 4
  %459 = ptrtoint ptr %drv_vbus.i410 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %drv_vbus.i410, align 4
  tail call void %460(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_drv_vbus.exit416

otg_drv_vbus.exit416:                             ; preds = %if.then2.i415, %if.end.i414.otg_drv_vbus.exit416_crit_edge, %sw.bb62.otg_drv_vbus.exit416_crit_edge
  %461 = ptrtoint ptr %ops.i409 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %ops.i409, align 4
  %loc_conn.i418 = getelementptr inbounds %struct.otg_fsm_ops, ptr %462, i32 0, i32 2
  %463 = ptrtoint ptr %loc_conn.i418 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %loc_conn.i418, align 4
  %tobool.not.i419 = icmp eq ptr %464, null
  br i1 %tobool.not.i419, label %otg_drv_vbus.exit416.otg_loc_conn.exit424_crit_edge, label %if.end.i422

otg_drv_vbus.exit416.otg_loc_conn.exit424_crit_edge: ; preds = %otg_drv_vbus.exit416
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit424

if.end.i422:                                      ; preds = %otg_drv_vbus.exit416
  %loc_conn1.i420 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %465 = ptrtoint ptr %loc_conn1.i420 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %loc_conn1.i420, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %cmp.not.i421 = icmp eq i32 %466, 0
  br i1 %cmp.not.i421, label %if.end.i422.otg_loc_conn.exit424_crit_edge, label %if.then2.i423

if.end.i422.otg_loc_conn.exit424_crit_edge:       ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit424

if.then2.i423:                                    ; preds = %if.end.i422
  call void @__sanitizer_cov_trace_pc() #5
  %467 = ptrtoint ptr %loc_conn1.i420 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 0, ptr %loc_conn1.i420, align 4
  %468 = ptrtoint ptr %loc_conn.i418 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %loc_conn.i418, align 4
  tail call void %469(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit424

otg_loc_conn.exit424:                             ; preds = %if.then2.i423, %if.end.i422.otg_loc_conn.exit424_crit_edge, %otg_drv_vbus.exit416.otg_loc_conn.exit424_crit_edge
  %470 = ptrtoint ptr %ops.i409 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %ops.i409, align 4
  %loc_sof.i426 = getelementptr inbounds %struct.otg_fsm_ops, ptr %471, i32 0, i32 3
  %472 = ptrtoint ptr %loc_sof.i426 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %loc_sof.i426, align 4
  %tobool.not.i427 = icmp eq ptr %473, null
  br i1 %tobool.not.i427, label %otg_loc_conn.exit424.otg_loc_sof.exit432_crit_edge, label %if.end.i430

otg_loc_conn.exit424.otg_loc_sof.exit432_crit_edge: ; preds = %otg_loc_conn.exit424
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit432

if.end.i430:                                      ; preds = %otg_loc_conn.exit424
  %loc_sof1.i428 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %474 = ptrtoint ptr %loc_sof1.i428 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %loc_sof1.i428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %475)
  %cmp.not.i429 = icmp eq i32 %475, 0
  br i1 %cmp.not.i429, label %if.end.i430.otg_loc_sof.exit432_crit_edge, label %if.then2.i431

if.end.i430.otg_loc_sof.exit432_crit_edge:        ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit432

if.then2.i431:                                    ; preds = %if.end.i430
  call void @__sanitizer_cov_trace_pc() #5
  %476 = ptrtoint ptr %loc_sof1.i428 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 0, ptr %loc_sof1.i428, align 4
  %477 = ptrtoint ptr %loc_sof.i426 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %loc_sof.i426, align 4
  tail call void %478(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit432

otg_loc_sof.exit432:                              ; preds = %if.then2.i431, %if.end.i430.otg_loc_sof.exit432_crit_edge, %otg_loc_conn.exit424.otg_loc_sof.exit432_crit_edge
  %protocol1.i433 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %479 = ptrtoint ptr %protocol1.i433 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %protocol1.i433, align 4
  %481 = zext i32 %480 to i64
  call void @__sanitizer_cov_trace_switch(i64 %481, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %480, label %otg_loc_sof.exit432.if.end11.i448_crit_edge [
    i32 1, label %otg_loc_sof.exit432.otg_set_protocol.exit456_crit_edge
    i32 2, label %if.then7.i443
  ]

otg_loc_sof.exit432.otg_set_protocol.exit456_crit_edge: ; preds = %otg_loc_sof.exit432
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit456

otg_loc_sof.exit432.if.end11.i448_crit_edge:      ; preds = %otg_loc_sof.exit432
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i448

if.then7.i443:                                    ; preds = %otg_loc_sof.exit432
  %482 = ptrtoint ptr %ops.i409 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %ops.i409, align 4
  %start_gadget.i.i441 = getelementptr inbounds %struct.otg_fsm_ops, ptr %483, i32 0, i32 10
  %484 = ptrtoint ptr %start_gadget.i.i441 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %start_gadget.i.i441, align 4
  %tobool.not.i2.i442 = icmp eq ptr %485, null
  br i1 %tobool.not.i2.i442, label %if.then7.i443.otg_set_protocol.exit456_crit_edge, label %if.end9.i447

if.then7.i443.otg_set_protocol.exit456_crit_edge: ; preds = %if.then7.i443
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit456

if.end9.i447:                                     ; preds = %if.then7.i443
  %call.i3.i445 = tail call i32 %485(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i445)
  %tobool.not.i446 = icmp eq i32 %call.i3.i445, 0
  br i1 %tobool.not.i446, label %if.end9.i447.if.end11.i448_crit_edge, label %if.end9.i447.otg_set_protocol.exit456_crit_edge

if.end9.i447.otg_set_protocol.exit456_crit_edge:  ; preds = %if.end9.i447
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit456

if.end9.i447.if.end11.i448_crit_edge:             ; preds = %if.end9.i447
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i448

if.end11.i448:                                    ; preds = %if.end9.i447.if.end11.i448_crit_edge, %otg_loc_sof.exit432.if.end11.i448_crit_edge
  %486 = ptrtoint ptr %ops.i409 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %ops.i409, align 4
  %start_host.i7.i450 = getelementptr inbounds %struct.otg_fsm_ops, ptr %487, i32 0, i32 9
  %488 = ptrtoint ptr %start_host.i7.i450 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %start_host.i7.i450, align 4
  %tobool.not.i8.i451 = icmp eq ptr %489, null
  br i1 %tobool.not.i8.i451, label %if.end11.i448.otg_set_protocol.exit456_crit_edge, label %if.end20.i454

if.end11.i448.otg_set_protocol.exit456_crit_edge: ; preds = %if.end11.i448
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit456

if.end20.i454:                                    ; preds = %if.end11.i448
  %call.i16.i452 = tail call i32 %489(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i452)
  %tobool21.not.i453 = icmp eq i32 %call.i16.i452, 0
  br i1 %tobool21.not.i453, label %if.end23.i455, label %if.end20.i454.otg_set_protocol.exit456_crit_edge

if.end20.i454.otg_set_protocol.exit456_crit_edge: ; preds = %if.end20.i454
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit456

if.end23.i455:                                    ; preds = %if.end20.i454
  call void @__sanitizer_cov_trace_pc() #5
  %490 = ptrtoint ptr %protocol1.i433 to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 1, ptr %protocol1.i433, align 4
  br label %otg_set_protocol.exit456

otg_set_protocol.exit456:                         ; preds = %if.end23.i455, %if.end20.i454.otg_set_protocol.exit456_crit_edge, %if.end11.i448.otg_set_protocol.exit456_crit_edge, %if.end9.i447.otg_set_protocol.exit456_crit_edge, %if.then7.i443.otg_set_protocol.exit456_crit_edge, %otg_loc_sof.exit432.otg_set_protocol.exit456_crit_edge
  %491 = ptrtoint ptr %ops.i409 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %ops.i409, align 4
  %add_timer.i458 = getelementptr inbounds %struct.otg_fsm_ops, ptr %492, i32 0, i32 7
  %493 = ptrtoint ptr %add_timer.i458 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %add_timer.i458, align 4
  %tobool.not.i459 = icmp eq ptr %494, null
  br i1 %tobool.not.i459, label %otg_set_protocol.exit456.sw.epilog_crit_edge, label %if.end.i460

otg_set_protocol.exit456.sw.epilog_crit_edge:     ; preds = %otg_set_protocol.exit456
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i460:                                      ; preds = %otg_set_protocol.exit456
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %494(ptr noundef %fsm, i32 noundef 3) #3
  br label %sw.epilog

sw.bb68:                                          ; preds = %otg_leave_state.exit
  %ops.i462 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %495 = ptrtoint ptr %ops.i462 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %ops.i462, align 4
  %loc_sof.i463 = getelementptr inbounds %struct.otg_fsm_ops, ptr %496, i32 0, i32 3
  %497 = ptrtoint ptr %loc_sof.i463 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %loc_sof.i463, align 4
  %tobool.not.i464 = icmp eq ptr %498, null
  br i1 %tobool.not.i464, label %sw.bb68.otg_loc_sof.exit469_crit_edge, label %if.end.i467

sw.bb68.otg_loc_sof.exit469_crit_edge:            ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit469

if.end.i467:                                      ; preds = %sw.bb68
  %loc_sof1.i465 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %499 = ptrtoint ptr %loc_sof1.i465 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %loc_sof1.i465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %500)
  %cmp.not.i466 = icmp eq i32 %500, 0
  br i1 %cmp.not.i466, label %if.end.i467.otg_loc_sof.exit469_crit_edge, label %if.then2.i468

if.end.i467.otg_loc_sof.exit469_crit_edge:        ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit469

if.then2.i468:                                    ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #5
  %501 = ptrtoint ptr %loc_sof1.i465 to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 0, ptr %loc_sof1.i465, align 4
  %502 = ptrtoint ptr %loc_sof.i463 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %loc_sof.i463, align 4
  tail call void %503(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit469

otg_loc_sof.exit469:                              ; preds = %if.then2.i468, %if.end.i467.otg_loc_sof.exit469_crit_edge, %sw.bb68.otg_loc_sof.exit469_crit_edge
  %protocol1.i470 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %504 = ptrtoint ptr %protocol1.i470 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %protocol1.i470, align 4
  %506 = zext i32 %505 to i64
  call void @__sanitizer_cov_trace_switch(i64 %506, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %505, label %otg_loc_sof.exit469.if.end11.i485_crit_edge [
    i32 2, label %otg_loc_sof.exit469.otg_set_protocol.exit493_crit_edge
    i32 1, label %if.then4.i476
  ]

otg_loc_sof.exit469.otg_set_protocol.exit493_crit_edge: ; preds = %otg_loc_sof.exit469
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit493

otg_loc_sof.exit469.if.end11.i485_crit_edge:      ; preds = %otg_loc_sof.exit469
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i485

if.then4.i476:                                    ; preds = %otg_loc_sof.exit469
  %507 = ptrtoint ptr %ops.i462 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %ops.i462, align 4
  %start_host.i.i474 = getelementptr inbounds %struct.otg_fsm_ops, ptr %508, i32 0, i32 9
  %509 = ptrtoint ptr %start_host.i.i474 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %start_host.i.i474, align 4
  %tobool.not.i.i475 = icmp eq ptr %510, null
  br i1 %tobool.not.i.i475, label %if.then4.i476.otg_set_protocol.exit493_crit_edge, label %if.end9.i484

if.then4.i476.otg_set_protocol.exit493_crit_edge: ; preds = %if.then4.i476
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit493

if.end9.i484:                                     ; preds = %if.then4.i476
  %call.i3.i482 = tail call i32 %510(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i482)
  %tobool.not.i483 = icmp eq i32 %call.i3.i482, 0
  br i1 %tobool.not.i483, label %if.end9.i484.if.end11.i485_crit_edge, label %if.end9.i484.otg_set_protocol.exit493_crit_edge

if.end9.i484.otg_set_protocol.exit493_crit_edge:  ; preds = %if.end9.i484
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit493

if.end9.i484.if.end11.i485_crit_edge:             ; preds = %if.end9.i484
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i485

if.end11.i485:                                    ; preds = %if.end9.i484.if.end11.i485_crit_edge, %otg_loc_sof.exit469.if.end11.i485_crit_edge
  %511 = ptrtoint ptr %ops.i462 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %ops.i462, align 4
  %start_gadget.i14.i487 = getelementptr inbounds %struct.otg_fsm_ops, ptr %512, i32 0, i32 10
  %513 = ptrtoint ptr %start_gadget.i14.i487 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %start_gadget.i14.i487, align 4
  %tobool.not.i15.i488 = icmp eq ptr %514, null
  br i1 %tobool.not.i15.i488, label %if.end11.i485.otg_set_protocol.exit493_crit_edge, label %if.end20.i491

if.end11.i485.otg_set_protocol.exit493_crit_edge: ; preds = %if.end11.i485
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit493

if.end20.i491:                                    ; preds = %if.end11.i485
  %call.i16.i489 = tail call i32 %514(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i489)
  %tobool21.not.i490 = icmp eq i32 %call.i16.i489, 0
  br i1 %tobool21.not.i490, label %if.end23.i492, label %if.end20.i491.otg_set_protocol.exit493_crit_edge

if.end20.i491.otg_set_protocol.exit493_crit_edge: ; preds = %if.end20.i491
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit493

if.end23.i492:                                    ; preds = %if.end20.i491
  call void @__sanitizer_cov_trace_pc() #5
  %515 = ptrtoint ptr %protocol1.i470 to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 2, ptr %protocol1.i470, align 4
  br label %otg_set_protocol.exit493

otg_set_protocol.exit493:                         ; preds = %if.end23.i492, %if.end20.i491.otg_set_protocol.exit493_crit_edge, %if.end11.i485.otg_set_protocol.exit493_crit_edge, %if.end9.i484.otg_set_protocol.exit493_crit_edge, %if.then4.i476.otg_set_protocol.exit493_crit_edge, %otg_loc_sof.exit469.otg_set_protocol.exit493_crit_edge
  %516 = ptrtoint ptr %ops.i462 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %ops.i462, align 4
  %drv_vbus.i495 = getelementptr inbounds %struct.otg_fsm_ops, ptr %517, i32 0, i32 1
  %518 = ptrtoint ptr %drv_vbus.i495 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %drv_vbus.i495, align 4
  %tobool.not.i496 = icmp eq ptr %519, null
  br i1 %tobool.not.i496, label %otg_set_protocol.exit493.otg_drv_vbus.exit501_crit_edge, label %if.end.i499

otg_set_protocol.exit493.otg_drv_vbus.exit501_crit_edge: ; preds = %otg_set_protocol.exit493
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit501

if.end.i499:                                      ; preds = %otg_set_protocol.exit493
  %drv_vbus1.i497 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %520 = ptrtoint ptr %drv_vbus1.i497 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %drv_vbus1.i497, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %521)
  %cmp.not.i498 = icmp eq i32 %521, 1
  br i1 %cmp.not.i498, label %if.end.i499.otg_drv_vbus.exit501_crit_edge, label %if.then2.i500

if.end.i499.otg_drv_vbus.exit501_crit_edge:       ; preds = %if.end.i499
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit501

if.then2.i500:                                    ; preds = %if.end.i499
  call void @__sanitizer_cov_trace_pc() #5
  %522 = ptrtoint ptr %drv_vbus1.i497 to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 1, ptr %drv_vbus1.i497, align 4
  %523 = ptrtoint ptr %drv_vbus.i495 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %drv_vbus.i495, align 4
  tail call void %524(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_drv_vbus.exit501

otg_drv_vbus.exit501:                             ; preds = %if.then2.i500, %if.end.i499.otg_drv_vbus.exit501_crit_edge, %otg_set_protocol.exit493.otg_drv_vbus.exit501_crit_edge
  %525 = ptrtoint ptr %ops.i462 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %ops.i462, align 4
  %loc_conn.i503 = getelementptr inbounds %struct.otg_fsm_ops, ptr %526, i32 0, i32 2
  %527 = ptrtoint ptr %loc_conn.i503 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %loc_conn.i503, align 4
  %tobool.not.i504 = icmp eq ptr %528, null
  br i1 %tobool.not.i504, label %otg_drv_vbus.exit501.otg_loc_conn.exit509_crit_edge, label %if.end.i507

otg_drv_vbus.exit501.otg_loc_conn.exit509_crit_edge: ; preds = %otg_drv_vbus.exit501
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit509

if.end.i507:                                      ; preds = %otg_drv_vbus.exit501
  %loc_conn1.i505 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %529 = ptrtoint ptr %loc_conn1.i505 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %loc_conn1.i505, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %530)
  %cmp.not.i506 = icmp eq i32 %530, 1
  br i1 %cmp.not.i506, label %if.end.i507.otg_loc_conn.exit509_crit_edge, label %if.then2.i508

if.end.i507.otg_loc_conn.exit509_crit_edge:       ; preds = %if.end.i507
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit509

if.then2.i508:                                    ; preds = %if.end.i507
  call void @__sanitizer_cov_trace_pc() #5
  %531 = ptrtoint ptr %loc_conn1.i505 to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 1, ptr %loc_conn1.i505, align 4
  %532 = ptrtoint ptr %loc_conn.i503 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %loc_conn.i503, align 4
  tail call void %533(ptr noundef %fsm, i32 noundef 1) #3
  br label %otg_loc_conn.exit509

otg_loc_conn.exit509:                             ; preds = %if.then2.i508, %if.end.i507.otg_loc_conn.exit509_crit_edge, %otg_drv_vbus.exit501.otg_loc_conn.exit509_crit_edge
  %534 = ptrtoint ptr %ops.i462 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %ops.i462, align 4
  %add_timer.i511 = getelementptr inbounds %struct.otg_fsm_ops, ptr %535, i32 0, i32 7
  %536 = ptrtoint ptr %add_timer.i511 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %add_timer.i511, align 4
  %tobool.not.i512 = icmp eq ptr %537, null
  br i1 %tobool.not.i512, label %otg_loc_conn.exit509.sw.epilog_crit_edge, label %if.end.i513

otg_loc_conn.exit509.sw.epilog_crit_edge:         ; preds = %otg_loc_conn.exit509
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i513:                                      ; preds = %otg_loc_conn.exit509
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %537(ptr noundef %fsm, i32 noundef 5) #3
  br label %sw.epilog

sw.bb74:                                          ; preds = %otg_leave_state.exit
  %ops.i515 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %538 = ptrtoint ptr %ops.i515 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %ops.i515, align 4
  %drv_vbus.i516 = getelementptr inbounds %struct.otg_fsm_ops, ptr %539, i32 0, i32 1
  %540 = ptrtoint ptr %drv_vbus.i516 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %drv_vbus.i516, align 4
  %tobool.not.i517 = icmp eq ptr %541, null
  br i1 %tobool.not.i517, label %sw.bb74.otg_drv_vbus.exit522_crit_edge, label %if.end.i520

sw.bb74.otg_drv_vbus.exit522_crit_edge:           ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit522

if.end.i520:                                      ; preds = %sw.bb74
  %drv_vbus1.i518 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %542 = ptrtoint ptr %drv_vbus1.i518 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %drv_vbus1.i518, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %543)
  %cmp.not.i519 = icmp eq i32 %543, 0
  br i1 %cmp.not.i519, label %if.end.i520.otg_drv_vbus.exit522_crit_edge, label %if.then2.i521

if.end.i520.otg_drv_vbus.exit522_crit_edge:       ; preds = %if.end.i520
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit522

if.then2.i521:                                    ; preds = %if.end.i520
  call void @__sanitizer_cov_trace_pc() #5
  %544 = ptrtoint ptr %drv_vbus1.i518 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 0, ptr %drv_vbus1.i518, align 4
  %545 = ptrtoint ptr %drv_vbus.i516 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %drv_vbus.i516, align 4
  tail call void %546(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_drv_vbus.exit522

otg_drv_vbus.exit522:                             ; preds = %if.then2.i521, %if.end.i520.otg_drv_vbus.exit522_crit_edge, %sw.bb74.otg_drv_vbus.exit522_crit_edge
  %547 = ptrtoint ptr %ops.i515 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %ops.i515, align 4
  %loc_conn.i524 = getelementptr inbounds %struct.otg_fsm_ops, ptr %548, i32 0, i32 2
  %549 = ptrtoint ptr %loc_conn.i524 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %loc_conn.i524, align 4
  %tobool.not.i525 = icmp eq ptr %550, null
  br i1 %tobool.not.i525, label %otg_drv_vbus.exit522.otg_loc_conn.exit530_crit_edge, label %if.end.i528

otg_drv_vbus.exit522.otg_loc_conn.exit530_crit_edge: ; preds = %otg_drv_vbus.exit522
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit530

if.end.i528:                                      ; preds = %otg_drv_vbus.exit522
  %loc_conn1.i526 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %551 = ptrtoint ptr %loc_conn1.i526 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %loc_conn1.i526, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %552)
  %cmp.not.i527 = icmp eq i32 %552, 0
  br i1 %cmp.not.i527, label %if.end.i528.otg_loc_conn.exit530_crit_edge, label %if.then2.i529

if.end.i528.otg_loc_conn.exit530_crit_edge:       ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit530

if.then2.i529:                                    ; preds = %if.end.i528
  call void @__sanitizer_cov_trace_pc() #5
  %553 = ptrtoint ptr %loc_conn1.i526 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 0, ptr %loc_conn1.i526, align 4
  %554 = ptrtoint ptr %loc_conn.i524 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %loc_conn.i524, align 4
  tail call void %555(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit530

otg_loc_conn.exit530:                             ; preds = %if.then2.i529, %if.end.i528.otg_loc_conn.exit530_crit_edge, %otg_drv_vbus.exit522.otg_loc_conn.exit530_crit_edge
  %556 = ptrtoint ptr %ops.i515 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %ops.i515, align 4
  %loc_sof.i532 = getelementptr inbounds %struct.otg_fsm_ops, ptr %557, i32 0, i32 3
  %558 = ptrtoint ptr %loc_sof.i532 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %loc_sof.i532, align 4
  %tobool.not.i533 = icmp eq ptr %559, null
  br i1 %tobool.not.i533, label %otg_loc_conn.exit530.otg_loc_sof.exit538_crit_edge, label %if.end.i536

otg_loc_conn.exit530.otg_loc_sof.exit538_crit_edge: ; preds = %otg_loc_conn.exit530
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit538

if.end.i536:                                      ; preds = %otg_loc_conn.exit530
  %loc_sof1.i534 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %560 = ptrtoint ptr %loc_sof1.i534 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %loc_sof1.i534, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %cmp.not.i535 = icmp eq i32 %561, 0
  br i1 %cmp.not.i535, label %if.end.i536.otg_loc_sof.exit538_crit_edge, label %if.then2.i537

if.end.i536.otg_loc_sof.exit538_crit_edge:        ; preds = %if.end.i536
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit538

if.then2.i537:                                    ; preds = %if.end.i536
  call void @__sanitizer_cov_trace_pc() #5
  %562 = ptrtoint ptr %loc_sof1.i534 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 0, ptr %loc_sof1.i534, align 4
  %563 = ptrtoint ptr %loc_sof.i532 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %loc_sof.i532, align 4
  tail call void %564(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit538

otg_loc_sof.exit538:                              ; preds = %if.then2.i537, %if.end.i536.otg_loc_sof.exit538_crit_edge, %otg_loc_conn.exit530.otg_loc_sof.exit538_crit_edge
  %protocol1.i539 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %565 = ptrtoint ptr %protocol1.i539 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %protocol1.i539, align 4
  %567 = zext i32 %566 to i64
  call void @__sanitizer_cov_trace_switch(i64 %567, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %566, label %otg_loc_sof.exit538.if.end11.i554_crit_edge [
    i32 1, label %otg_loc_sof.exit538.otg_set_protocol.exit562_crit_edge
    i32 2, label %if.then7.i549
  ]

otg_loc_sof.exit538.otg_set_protocol.exit562_crit_edge: ; preds = %otg_loc_sof.exit538
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit562

otg_loc_sof.exit538.if.end11.i554_crit_edge:      ; preds = %otg_loc_sof.exit538
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i554

if.then7.i549:                                    ; preds = %otg_loc_sof.exit538
  %568 = ptrtoint ptr %ops.i515 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %ops.i515, align 4
  %start_gadget.i.i547 = getelementptr inbounds %struct.otg_fsm_ops, ptr %569, i32 0, i32 10
  %570 = ptrtoint ptr %start_gadget.i.i547 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %start_gadget.i.i547, align 4
  %tobool.not.i2.i548 = icmp eq ptr %571, null
  br i1 %tobool.not.i2.i548, label %if.then7.i549.otg_set_protocol.exit562_crit_edge, label %if.end9.i553

if.then7.i549.otg_set_protocol.exit562_crit_edge: ; preds = %if.then7.i549
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit562

if.end9.i553:                                     ; preds = %if.then7.i549
  %call.i3.i551 = tail call i32 %571(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i551)
  %tobool.not.i552 = icmp eq i32 %call.i3.i551, 0
  br i1 %tobool.not.i552, label %if.end9.i553.if.end11.i554_crit_edge, label %if.end9.i553.otg_set_protocol.exit562_crit_edge

if.end9.i553.otg_set_protocol.exit562_crit_edge:  ; preds = %if.end9.i553
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit562

if.end9.i553.if.end11.i554_crit_edge:             ; preds = %if.end9.i553
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i554

if.end11.i554:                                    ; preds = %if.end9.i553.if.end11.i554_crit_edge, %otg_loc_sof.exit538.if.end11.i554_crit_edge
  %572 = ptrtoint ptr %ops.i515 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %ops.i515, align 4
  %start_host.i7.i556 = getelementptr inbounds %struct.otg_fsm_ops, ptr %573, i32 0, i32 9
  %574 = ptrtoint ptr %start_host.i7.i556 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %start_host.i7.i556, align 4
  %tobool.not.i8.i557 = icmp eq ptr %575, null
  br i1 %tobool.not.i8.i557, label %if.end11.i554.otg_set_protocol.exit562_crit_edge, label %if.end20.i560

if.end11.i554.otg_set_protocol.exit562_crit_edge: ; preds = %if.end11.i554
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit562

if.end20.i560:                                    ; preds = %if.end11.i554
  %call.i16.i558 = tail call i32 %575(ptr noundef %fsm, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i558)
  %tobool21.not.i559 = icmp eq i32 %call.i16.i558, 0
  br i1 %tobool21.not.i559, label %if.end23.i561, label %if.end20.i560.otg_set_protocol.exit562_crit_edge

if.end20.i560.otg_set_protocol.exit562_crit_edge: ; preds = %if.end20.i560
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_set_protocol.exit562

if.end23.i561:                                    ; preds = %if.end20.i560
  call void @__sanitizer_cov_trace_pc() #5
  %576 = ptrtoint ptr %protocol1.i539 to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 1, ptr %protocol1.i539, align 4
  br label %otg_set_protocol.exit562

otg_set_protocol.exit562:                         ; preds = %if.end23.i561, %if.end20.i560.otg_set_protocol.exit562_crit_edge, %if.end11.i554.otg_set_protocol.exit562_crit_edge, %if.end9.i553.otg_set_protocol.exit562_crit_edge, %if.then7.i549.otg_set_protocol.exit562_crit_edge, %otg_loc_sof.exit538.otg_set_protocol.exit562_crit_edge
  %577 = ptrtoint ptr %ops.i515 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %ops.i515, align 4
  %add_timer.i564 = getelementptr inbounds %struct.otg_fsm_ops, ptr %578, i32 0, i32 7
  %579 = ptrtoint ptr %add_timer.i564 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %add_timer.i564, align 4
  %tobool.not.i565 = icmp eq ptr %580, null
  br i1 %tobool.not.i565, label %otg_set_protocol.exit562.sw.epilog_crit_edge, label %if.end.i566

otg_set_protocol.exit562.sw.epilog_crit_edge:     ; preds = %otg_set_protocol.exit562
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i566:                                      ; preds = %otg_set_protocol.exit562
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %580(ptr noundef %fsm, i32 noundef 1) #3
  br label %sw.epilog

sw.bb80:                                          ; preds = %otg_leave_state.exit
  %ops.i568 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 40
  %581 = ptrtoint ptr %ops.i568 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %ops.i568, align 4
  %drv_vbus.i569 = getelementptr inbounds %struct.otg_fsm_ops, ptr %582, i32 0, i32 1
  %583 = ptrtoint ptr %drv_vbus.i569 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %drv_vbus.i569, align 4
  %tobool.not.i570 = icmp eq ptr %584, null
  br i1 %tobool.not.i570, label %sw.bb80.otg_drv_vbus.exit575_crit_edge, label %if.end.i573

sw.bb80.otg_drv_vbus.exit575_crit_edge:           ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit575

if.end.i573:                                      ; preds = %sw.bb80
  %drv_vbus1.i571 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 19
  %585 = ptrtoint ptr %drv_vbus1.i571 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %drv_vbus1.i571, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %586)
  %cmp.not.i572 = icmp eq i32 %586, 0
  br i1 %cmp.not.i572, label %if.end.i573.otg_drv_vbus.exit575_crit_edge, label %if.then2.i574

if.end.i573.otg_drv_vbus.exit575_crit_edge:       ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_drv_vbus.exit575

if.then2.i574:                                    ; preds = %if.end.i573
  call void @__sanitizer_cov_trace_pc() #5
  %587 = ptrtoint ptr %drv_vbus1.i571 to i32
  call void @__asan_store4_noabort(i32 %587)
  store i32 0, ptr %drv_vbus1.i571, align 4
  %588 = ptrtoint ptr %drv_vbus.i569 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %drv_vbus.i569, align 4
  tail call void %589(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_drv_vbus.exit575

otg_drv_vbus.exit575:                             ; preds = %if.then2.i574, %if.end.i573.otg_drv_vbus.exit575_crit_edge, %sw.bb80.otg_drv_vbus.exit575_crit_edge
  %590 = ptrtoint ptr %ops.i568 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %ops.i568, align 4
  %loc_conn.i577 = getelementptr inbounds %struct.otg_fsm_ops, ptr %591, i32 0, i32 2
  %592 = ptrtoint ptr %loc_conn.i577 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %loc_conn.i577, align 4
  %tobool.not.i578 = icmp eq ptr %593, null
  br i1 %tobool.not.i578, label %otg_drv_vbus.exit575.otg_loc_conn.exit583_crit_edge, label %if.end.i581

otg_drv_vbus.exit575.otg_loc_conn.exit583_crit_edge: ; preds = %otg_drv_vbus.exit575
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit583

if.end.i581:                                      ; preds = %otg_drv_vbus.exit575
  %loc_conn1.i579 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 20
  %594 = ptrtoint ptr %loc_conn1.i579 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %loc_conn1.i579, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %595)
  %cmp.not.i580 = icmp eq i32 %595, 0
  br i1 %cmp.not.i580, label %if.end.i581.otg_loc_conn.exit583_crit_edge, label %if.then2.i582

if.end.i581.otg_loc_conn.exit583_crit_edge:       ; preds = %if.end.i581
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_conn.exit583

if.then2.i582:                                    ; preds = %if.end.i581
  call void @__sanitizer_cov_trace_pc() #5
  %596 = ptrtoint ptr %loc_conn1.i579 to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 0, ptr %loc_conn1.i579, align 4
  %597 = ptrtoint ptr %loc_conn.i577 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %loc_conn.i577, align 4
  tail call void %598(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_conn.exit583

otg_loc_conn.exit583:                             ; preds = %if.then2.i582, %if.end.i581.otg_loc_conn.exit583_crit_edge, %otg_drv_vbus.exit575.otg_loc_conn.exit583_crit_edge
  %599 = ptrtoint ptr %ops.i568 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %ops.i568, align 4
  %loc_sof.i585 = getelementptr inbounds %struct.otg_fsm_ops, ptr %600, i32 0, i32 3
  %601 = ptrtoint ptr %loc_sof.i585 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %loc_sof.i585, align 4
  %tobool.not.i586 = icmp eq ptr %602, null
  br i1 %tobool.not.i586, label %otg_loc_conn.exit583.otg_loc_sof.exit591_crit_edge, label %if.end.i589

otg_loc_conn.exit583.otg_loc_sof.exit591_crit_edge: ; preds = %otg_loc_conn.exit583
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit591

if.end.i589:                                      ; preds = %otg_loc_conn.exit583
  %loc_sof1.i587 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 21
  %603 = ptrtoint ptr %loc_sof1.i587 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %loc_sof1.i587, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %604)
  %cmp.not.i588 = icmp eq i32 %604, 0
  br i1 %cmp.not.i588, label %if.end.i589.otg_loc_sof.exit591_crit_edge, label %if.then2.i590

if.end.i589.otg_loc_sof.exit591_crit_edge:        ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #5
  br label %otg_loc_sof.exit591

if.then2.i590:                                    ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #5
  %605 = ptrtoint ptr %loc_sof1.i587 to i32
  call void @__asan_store4_noabort(i32 %605)
  store i32 0, ptr %loc_sof1.i587, align 4
  %606 = ptrtoint ptr %loc_sof.i585 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %loc_sof.i585, align 4
  tail call void %607(ptr noundef %fsm, i32 noundef 0) #3
  br label %otg_loc_sof.exit591

otg_loc_sof.exit591:                              ; preds = %if.then2.i590, %if.end.i589.otg_loc_sof.exit591_crit_edge, %otg_loc_conn.exit583.otg_loc_sof.exit591_crit_edge
  %protocol1.i592 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 42
  %608 = ptrtoint ptr %protocol1.i592 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %protocol1.i592, align 4
  %610 = zext i32 %609 to i64
  call void @__sanitizer_cov_trace_switch(i64 %610, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %609, label %otg_loc_sof.exit591.if.end11.i607_crit_edge [
    i32 0, label %otg_loc_sof.exit591.sw.epilog_crit_edge
    i32 1, label %if.then4.i598
    i32 2, label %if.then7.i602
  ]

otg_loc_sof.exit591.sw.epilog_crit_edge:          ; preds = %otg_loc_sof.exit591
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

otg_loc_sof.exit591.if.end11.i607_crit_edge:      ; preds = %otg_loc_sof.exit591
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i607

if.then4.i598:                                    ; preds = %otg_loc_sof.exit591
  %611 = ptrtoint ptr %ops.i568 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %ops.i568, align 4
  %start_host.i.i596 = getelementptr inbounds %struct.otg_fsm_ops, ptr %612, i32 0, i32 9
  %613 = ptrtoint ptr %start_host.i.i596 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %start_host.i.i596, align 4
  %tobool.not.i.i597 = icmp eq ptr %614, null
  br i1 %tobool.not.i.i597, label %if.then4.i598.sw.epilog_crit_edge, label %if.then4.i598.if.end9.i606_crit_edge

if.then4.i598.if.end9.i606_crit_edge:             ; preds = %if.then4.i598
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i606

if.then4.i598.sw.epilog_crit_edge:                ; preds = %if.then4.i598
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then7.i602:                                    ; preds = %otg_loc_sof.exit591
  %615 = ptrtoint ptr %ops.i568 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %ops.i568, align 4
  %start_gadget.i.i600 = getelementptr inbounds %struct.otg_fsm_ops, ptr %616, i32 0, i32 10
  %617 = ptrtoint ptr %start_gadget.i.i600 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %start_gadget.i.i600, align 4
  %tobool.not.i2.i601 = icmp eq ptr %618, null
  br i1 %tobool.not.i2.i601, label %if.then7.i602.sw.epilog_crit_edge, label %if.then7.i602.if.end9.i606_crit_edge

if.then7.i602.if.end9.i606_crit_edge:             ; preds = %if.then7.i602
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i606

if.then7.i602.sw.epilog_crit_edge:                ; preds = %if.then7.i602
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end9.i606:                                     ; preds = %if.then7.i602.if.end9.i606_crit_edge, %if.then4.i598.if.end9.i606_crit_edge
  %.sink.i603 = phi ptr [ %614, %if.then4.i598.if.end9.i606_crit_edge ], [ %618, %if.then7.i602.if.end9.i606_crit_edge ]
  %call.i3.i604 = tail call i32 %.sink.i603(ptr noundef %fsm, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i604)
  %tobool.not.i605 = icmp eq i32 %call.i3.i604, 0
  br i1 %tobool.not.i605, label %if.end9.i606.if.end11.i607_crit_edge, label %if.end9.i606.sw.epilog_crit_edge

if.end9.i606.sw.epilog_crit_edge:                 ; preds = %if.end9.i606
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end9.i606.if.end11.i607_crit_edge:             ; preds = %if.end9.i606
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11.i607

if.end11.i607:                                    ; preds = %if.end9.i606.if.end11.i607_crit_edge, %otg_loc_sof.exit591.if.end11.i607_crit_edge
  %619 = ptrtoint ptr %protocol1.i592 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 0, ptr %protocol1.i592, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11.i607, %if.end9.i606.sw.epilog_crit_edge, %if.then7.i602.sw.epilog_crit_edge, %if.then4.i598.sw.epilog_crit_edge, %otg_loc_sof.exit591.sw.epilog_crit_edge, %if.end.i566, %otg_set_protocol.exit562.sw.epilog_crit_edge, %if.end.i513, %otg_loc_conn.exit509.sw.epilog_crit_edge, %if.end.i460, %otg_set_protocol.exit456.sw.epilog_crit_edge, %if.end61, %if.end.i354, %otg_set_protocol.exit350.sw.epilog_crit_edge, %if.end.i301, %otg_set_protocol.exit297.sw.epilog_crit_edge, %if.end23.i248, %if.end20.i247.sw.epilog_crit_edge, %if.end11.i241.sw.epilog_crit_edge, %if.end9.i240.sw.epilog_crit_edge, %if.then7.i236.sw.epilog_crit_edge, %otg_start_adp_prb.exit.sw.epilog_crit_edge, %otg_set_protocol.exit190, %otg_add_timer.exit146, %if.then2.i99, %if.end.i98.sw.epilog_crit_edge, %otg_set_protocol.exit92.sw.epilog_crit_edge, %if.end.i61, %otg_set_protocol.exit57.sw.epilog_crit_edge, %if.end.i26, %otg_set_protocol.exit.sw.epilog_crit_edge, %otg_leave_state.exit.sw.epilog_crit_edge
  %620 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %otg, align 4
  %state86 = getelementptr inbounds %struct.usb_otg, ptr %621, i32 0, i32 5
  %622 = ptrtoint ptr %state86 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %new_state, ptr %state86, align 4
  %state_changed = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 47
  %623 = ptrtoint ptr %state_changed to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 1, ptr %state_changed, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bus_start_enum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @otg_start_hnp_polling(ptr noundef %fsm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %host_req_flag = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 44
  %0 = ptrtoint ptr %host_req_flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_req_flag, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %hnp_work_inited = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 46
  %2 = ptrtoint ptr %hnp_work_inited to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hnp_work_inited, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %do.body3, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %hnp_polling_work = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45
  tail call void @__init_work(ptr noundef %hnp_polling_work, i32 noundef 0) #3
  %4 = ptrtoint ptr %hnp_polling_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %hnp_polling_work, align 4
  %lockdep_map = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @otg_start_hnp_polling.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry10 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45, i32 0, i32 1
  %5 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @otg_hnp_polling_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @otg_start_hnp_polling.__key.1) #3
  %8 = ptrtoint ptr %hnp_work_inited to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hnp_work_inited, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.body3, %if.end.if.end18_crit_edge
  %hnp_polling_work19 = getelementptr inbounds %struct.otg_fsm, ptr %fsm, i32 0, i32 45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %hnp_polling_work19, i32 noundef 150) #3
  br label %return

return:                                           ; preds = %if.end18, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @otg_hnp_polling_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -268
  %otg = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg, align 4
  %state1 = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9, label %entry.if.end_crit_edge
    i32 5, label %entry.if.end_crit_edge91
  ]

entry.if.end_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge91
  %host = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root_hub, align 4
  %call4 = tail call ptr @usb_hub_find_child(ptr noundef %8, i32 noundef 1) #3
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %otg, align 4
  %host7 = getelementptr inbounds %struct.usb_otg, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %host7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host7, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %host_req_flag = getelementptr i8, ptr %work, i32 -4
  %15 = ptrtoint ptr %host_req_flag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_req_flag, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %16, align 1
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call4, align 8
  %shl.i = shl i32 %19, 8
  %or10 = or i32 %shl.i, -2147483520
  %20 = load ptr, ptr %host_req_flag, align 4
  %call12 = tail call i32 @usb_control_msg(ptr noundef nonnull %call4, i32 noundef %or10, i8 noundef zeroext 0, i8 noundef zeroext -128, i16 noundef zeroext 0, i16 noundef zeroext -4096, ptr noundef %20, i16 noundef zeroext 1, i32 noundef 5000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 1
  br i1 %cmp13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.usb_device, ptr %call4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %host_req_flag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_req_flag, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %24, label %do.end31 [
    i8 0, label %if.then22
    i8 1, label %if.end35
  ]

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef 150) #3
  br label %cleanup

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %24 to i32
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %call4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.12, i32 noundef %conv) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end18
  %27 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %if.end35.if.end61_crit_edge [
    i32 9, label %if.then38
    i32 5, label %if.end35.if.end61.sink.split_crit_edge
  ]

if.end35.if.end61.sink.split_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61.sink.split

if.end35.if.end61_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then38:                                        ; preds = %if.end35
  %28 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %otg, align 4
  %host40 = getelementptr inbounds %struct.usb_otg, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %host40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host40, align 4
  %b_hnp_enable = getelementptr inbounds %struct.usb_bus, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %b_hnp_enable, align 2
  %33 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  br i1 %tobool41.not, label %if.then42, label %if.then38.if.end61.sink.split_crit_edge

if.then38.if.end61.sink.split_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61.sink.split

if.then42:                                        ; preds = %if.then38
  %34 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call4, align 8
  %shl.i90 = shl i32 %35, 8
  %or44 = or i32 %shl.i90, -2147483648
  %call45 = tail call i32 @usb_control_msg(ptr noundef nonnull %call4, i32 noundef %or44, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call45)
  %cmp46 = icmp sgt i32 %call45, -1
  br i1 %cmp46, label %if.then48, label %if.then42.if.end61.sink.split_crit_edge

if.then42.if.end61.sink.split_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61.sink.split

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %otg, align 4
  %host50 = getelementptr inbounds %struct.usb_otg, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %host50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host50, align 4
  %b_hnp_enable51 = getelementptr inbounds %struct.usb_bus, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %b_hnp_enable51 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load52 = load i8, ptr %b_hnp_enable51, align 2
  %bf.set = or i8 %bf.load52, 64
  store i8 %bf.set, ptr %b_hnp_enable51, align 2
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %if.then48, %if.then42.if.end61.sink.split_crit_edge, %if.then38.if.end61.sink.split_crit_edge, %if.end35.if.end61.sink.split_crit_edge
  %.sink = phi i32 [ -212, %if.then42.if.end61.sink.split_crit_edge ], [ -212, %if.then48 ], [ -212, %if.then38.if.end61.sink.split_crit_edge ], [ -208, %if.end35.if.end61.sink.split_crit_edge ]
  %b_bus_req = getelementptr i8, ptr %work, i32 %.sink
  %41 = ptrtoint ptr %b_bus_req to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %b_bus_req, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.end35.if.end61_crit_edge
  %call62 = tail call i32 @otg_statemachine(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end31, %if.then22, %do.end17, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_otg_statemachine, !1, !"__ksymtab_otg_statemachine", i1 false, i1 false}
!1 = !{!"../drivers/usb/common/usb-otg-fsm.c", i32 451, i32 1}
!2 = !{ptr @__UNIQUE_ID_file293, !3, !"__UNIQUE_ID_file293", i1 false, i1 false}
!3 = !{!"../drivers/usb/common/usb-otg-fsm.c", i32 452, i32 1}
!4 = !{ptr @__UNIQUE_ID_license294, !3, !"__UNIQUE_ID_license294", i1 false, i1 false}
!5 = !{ptr @otg_start_hnp_polling.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/usb/common/usb-otg-fsm.c", i32 197, i32 3}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @otg_start_hnp_polling.__key.1, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/common/usb-otg-fsm.c", i32 134, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @otg_hnp_polling_work._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @otg_hnp_polling_work._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/common/usb-otg-fsm.c", i32 151, i32 3}
!20 = !{ptr @otg_hnp_polling_work._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @otg_hnp_polling_work._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/common/usb-otg-fsm.c", i32 162, i32 3}
!24 = !{ptr @otg_hnp_polling_work._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @otg_hnp_polling_work._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
