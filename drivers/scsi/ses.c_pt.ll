; ModuleID = '/llk/IR_all_yes/drivers/scsi/ses.c_pt.bc'
source_filename = "../drivers/scsi/ses.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.enclosure_component_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efd = type { i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.enclosure_device = type { ptr, %struct.list_head, %struct.device, ptr, i32, [0 x %struct.enclosure_component] }
%struct.enclosure_component = type { ptr, %struct.device, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.ses_device = type { ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.ses_component = type { i64 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@ses_template = internal global { %struct.scsi_driver, [60 x i8] } { %struct.scsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @ses_probe, ptr null, ptr @ses_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ses_interface = internal global { %struct.class_interface, [44 x i8] } { %struct.class_interface { %struct.list_head zeroinitializer, ptr null, ptr @ses_intf_add, ptr @ses_intf_remove }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_ses__281_886_ses_init6 = internal global ptr @ses_init, section ".initcall6.init", align 4
@__exitcall_ses_exit = internal global ptr @ses_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias282 = internal constant [23 x i8] c"ses.alias=scsi:t-0x0d*\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [27 x i8] c"ses.author=James Bottomley\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [53 x i8] c"ses.description=SCSI Enclosure Services (ses) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [26 x i8] c"ses.file=drivers/scsi/ses\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [19 x i8] c"ses.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ses\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Attached Enclosure device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Embedded Enclosure Device\0A\00", [37 x i8] zeroinitializer }, align 32
@ses_enclosure_callbacks = internal global { %struct.enclosure_component_callbacks, [52 x i8] } { %struct.enclosure_component_callbacks { ptr @ses_get_status, ptr null, ptr @ses_get_fault, ptr @ses_set_fault, ptr null, ptr @ses_set_active, ptr @ses_get_locate, ptr @ses_set_locate, ptr @ses_get_power_status, ptr @ses_set_power_status, ptr @ses_show_id }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get diagnostic page 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to bind enclosure %d\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Wrong diagnostic page; asked for %d got %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SEND DIAGNOSTIC result: %8x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#llx\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 7, i64 20, i64 21, i64 23, i64 24]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 23]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"ses_template\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 852, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ses_interface\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 847, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 854, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 54, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 664, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"ses_enclosure_callbacks\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 400, i32 45 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 778, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 790, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 111, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 142, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [22 x i8] c"../drivers/scsi/ses.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 350, i32 22 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_ses_exit, ptr @__initcall__kmod_ses__281_886_ses_init6, ptr @ses_exit, ptr @ses_template, ptr @ses_interface, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ses_enclosure_callbacks, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ses_template to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ses_interface to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ses_enclosure_callbacks to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ses_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef nonnull @ses_template) #10
  tail call void @class_interface_unregister(ptr noundef nonnull @ses_interface) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_register_interface(ptr noundef nonnull @ses_interface) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @scsi_register_driver(ptr noundef nonnull @ses_template) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out_unreg

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_unreg:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @class_interface_unregister(ptr noundef nonnull @ses_interface) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unreg, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out_unreg ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %1)
  %cmp.not = icmp eq i8 %1, 13
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.2) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.0 = phi i32 [ -19, %entry.out_crit_edge ], [ 0, %if.end ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ses_remove(ptr nocapture noundef readnone %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_intf_add(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  %efd.i352 = alloca %struct.efd, align 8
  %efd.i = alloca %struct.efd, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -408
  %inquiry.i = getelementptr i8, ptr %1, i32 -152
  %2 = ptrtoint ptr %inquiry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inquiry.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %scsi_device_enclosure.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

scsi_device_enclosure.exit:                       ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %3, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %while.cond.preheader, label %scsi_device_enclosure.exit.if.end_crit_edge

scsi_device_enclosure.exit.if.end_crit_edge:      ; preds = %scsi_device_enclosure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.preheader:                             ; preds = %scsi_device_enclosure.exit
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %shost_gendev381 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 49
  %call1382 = call ptr @enclosure_find(ptr noundef %shost_gendev381, ptr noundef null) #10
  %cmp.not383 = icmp eq ptr %call1382, null
  br i1 %cmp.not383, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sdev_target.i = getelementptr i8, ptr %1, i32 -120
  %dev10.i = getelementptr inbounds %struct.efd, ptr %efd.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %ses_match_to_enclosure.exit.while.body_crit_edge, %while.body.lr.ph
  %call1384 = phi ptr [ %call1382, %while.body.lr.ph ], [ %call1, %ses_match_to_enclosure.exit.while.body_crit_edge ]
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %call1384, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %efd.i) #10
  %11 = call ptr @memset(ptr %efd.i, i32 0, i32 16)
  %add.ptr.i = getelementptr i8, ptr %10, i32 -408
  call fastcc void @ses_enclosure_data_process(ptr noundef nonnull %call1384, ptr noundef %add.ptr.i, i32 noundef 0) #10
  %12 = ptrtoint ptr %sdev_target.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev_target.i, align 8
  %parent2.i = getelementptr inbounds %struct.scsi_target, ptr %13, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent2.i, align 8
  %call.i = call i32 @scsi_is_sas_rphy(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end6thread-pre-split.i, label %if.then4.i

if.then4.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i64 @sas_get_address(ptr noundef %add.ptr) #10
  %16 = ptrtoint ptr %efd.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call5.i, ptr %efd.i, align 8
  br label %if.end6.i

if.end6thread-pre-split.i:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %efd.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %.pr.i = load i64, ptr %efd.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6thread-pre-split.i, %if.then4.i
  %18 = phi i64 [ %.pr.i, %if.end6thread-pre-split.i ], [ %call5.i, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool8.not.i = icmp eq i64 %18, 0
  br i1 %tobool8.not.i, label %if.end6.i.ses_match_to_enclosure.exit_crit_edge, label %if.then9.i

if.end6.i.ses_match_to_enclosure.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ses_match_to_enclosure.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %dev10.i, align 8
  %call11.i = call i32 @enclosure_for_each_device(ptr noundef nonnull @ses_enclosure_find_by_addr, ptr noundef nonnull %efd.i) #10
  br label %ses_match_to_enclosure.exit

ses_match_to_enclosure.exit:                      ; preds = %if.then9.i, %if.end6.i.ses_match_to_enclosure.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %efd.i) #10
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 49
  %call1 = call ptr @enclosure_find(ptr noundef %shost_gendev, ptr noundef nonnull %call1384) #10
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %ses_match_to_enclosure.exit.cleanup_crit_edge, label %ses_match_to_enclosure.exit.while.body_crit_edge

ses_match_to_enclosure.exit.while.body_crit_edge: ; preds = %ses_match_to_enclosure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

ses_match_to_enclosure.exit.cleanup_crit_edge:    ; preds = %ses_match_to_enclosure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %scsi_device_enclosure.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %type = getelementptr i8, ptr %1, i32 -252
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %23)
  %cmp2.not = icmp eq i8 %23, 13
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.3) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 24) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i285 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 32) #13
  %tobool8.not = icmp eq ptr %call7.i.i285, null
  %tobool9.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end5.err_init_free_crit_edge, label %if.end11

if.end5.err_init_free_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_init_free

if.end11:                                         ; preds = %if.end5
  %call13 = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %call7.i.i285, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.recv_failed_crit_edge

if.end11.recv_failed_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_failed

if.end16:                                         ; preds = %if.end11
  %arrayidx = getelementptr i8, ptr %call7.i.i285, i32 2
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 2
  %conv17 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv17, 8
  %arrayidx18 = getelementptr i8, ptr %call7.i.i285, i32 3
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %29 to i32
  %add = or i32 %shl, %conv19
  %add20 = add nuw nsw i32 %add, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add20, i32 noundef 3520) #14
  %tobool22.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool22.not, label %if.end16.err_free_crit_edge, label %if.end24

if.end16.err_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end24:                                         ; preds = %if.end16
  %call26 = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %add20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.recv_failed_crit_edge

if.end24.recv_failed_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_failed

if.end29:                                         ; preds = %if.end24
  %arrayidx30 = getelementptr i8, ptr %call9.i.i, i32 1
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %add.ptr33 = getelementptr i8, ptr %call9.i.i, i32 8
  %add.ptr36 = getelementptr i8, ptr %call9.i.i, i32 %add20
  %cmp37385 = icmp ult ptr %add.ptr33, %add.ptr36
  br i1 %cmp37385, label %if.end29.for.body_crit_edge, label %for.end.thread

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

for.end.thread:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %page1_types408 = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %page1_types408 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr33, ptr %page1_types408, align 4
  %page1_num_types410 = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %page1_num_types410 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %page1_num_types410, align 2
  br label %for.end73

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29.for.body_crit_edge
  %types.0388 = phi i32 [ %add41, %for.body.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %i.0387 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %type_ptr.0386 = phi ptr [ %add.ptr45, %for.body.for.body_crit_edge ], [ %add.ptr33, %if.end29.for.body_crit_edge ]
  %arrayidx39 = getelementptr i8, ptr %type_ptr.0386, i32 2
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %35 to i32
  %add41 = add i32 %types.0388, %conv40
  %arrayidx42 = getelementptr i8, ptr %type_ptr.0386, i32 3
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %37 to i32
  %add44 = add nuw nsw i32 %conv43, 4
  %add.ptr45 = getelementptr i8, ptr %type_ptr.0386, i32 %add44
  %inc = add nuw nsw i32 %i.0387, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0387, i32 %conv31)
  %cmp34.not = icmp ult i32 %i.0387, %conv31
  %cmp37 = icmp ult ptr %add.ptr45, %add.ptr36
  %or.cond283 = select i1 %cmp34.not, i1 %cmp37, i1 false
  br i1 %or.cond283, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %page1_types = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %page1_types to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr45, ptr %page1_types, align 4
  %conv46 = trunc i32 %add41 to i16
  %page1_num_types = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %page1_num_types to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv46, ptr %page1_num_types, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add41)
  %cmp48391 = icmp sgt i32 %add41, 0
  %cmp52392 = icmp ult ptr %add.ptr45, %add.ptr36
  %or.cond284393 = select i1 %cmp48391, i1 %cmp52392, i1 false
  br i1 %or.cond284393, label %for.end.for.body55_crit_edge, label %for.end.for.end73_crit_edge

for.end.for.end73_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.end.for.body55_crit_edge:                     ; preds = %for.end
  br label %for.body55

for.body55:                                       ; preds = %for.inc70.for.body55_crit_edge, %for.end.for.body55_crit_edge
  %components.0397 = phi i32 [ %components.1, %for.inc70.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %i.1396 = phi i32 [ %inc71, %for.inc70.for.body55_crit_edge ], [ 0, %for.end.for.body55_crit_edge ]
  %type_ptr.1394 = phi ptr [ %add.ptr72, %for.inc70.for.body55_crit_edge ], [ %add.ptr45, %for.end.for.body55_crit_edge ]
  %40 = ptrtoint ptr %type_ptr.1394 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type_ptr.1394, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %41, label %for.body55.for.inc70_crit_edge [
    i8 1, label %for.body55.if.then65_crit_edge
    i8 23, label %for.body55.if.then65_crit_edge417
  ]

for.body55.if.then65_crit_edge417:                ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

for.body55.if.then65_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

for.body55.for.inc70_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc70

if.then65:                                        ; preds = %for.body55.if.then65_crit_edge, %for.body55.if.then65_crit_edge417
  %arrayidx66 = getelementptr i8, ptr %type_ptr.1394, i32 1
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %44 to i32
  %add68 = add i32 %components.0397, %conv67
  br label %for.inc70

for.inc70:                                        ; preds = %if.then65, %for.body55.for.inc70_crit_edge
  %components.1 = phi i32 [ %add68, %if.then65 ], [ %components.0397, %for.body55.for.inc70_crit_edge ]
  %inc71 = add nuw nsw i32 %i.1396, 1
  %add.ptr72 = getelementptr i8, ptr %type_ptr.1394, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc71, i32 %add41)
  %cmp48 = icmp slt i32 %inc71, %add41
  %cmp52 = icmp ult ptr %add.ptr72, %add.ptr36
  %or.cond284 = select i1 %cmp48, i1 %cmp52, i1 false
  br i1 %or.cond284, label %for.inc70.for.body55_crit_edge, label %for.inc70.for.end73_crit_edge

for.inc70.for.end73_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end73

for.inc70.for.body55_crit_edge:                   ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body55

for.end73:                                        ; preds = %for.inc70.for.end73_crit_edge, %for.end.for.end73_crit_edge, %for.end.thread
  %components.0.lcssa = phi i32 [ 0, %for.end.for.end73_crit_edge ], [ 0, %for.end.thread ], [ %components.1, %for.inc70.for.end73_crit_edge ]
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i.i, ptr %call7.i.i, align 8
  %conv74 = trunc i32 %add20 to i16
  %page1_len = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %page1_len to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv74, ptr %page1_len, align 8
  %call76 = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr, i32 noundef 2, ptr noundef nonnull %call7.i.i285, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %for.end73.page2_not_supported_crit_edge

for.end73.page2_not_supported_crit_edge:          ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %page2_not_supported

if.end79:                                         ; preds = %for.end73
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 2
  %conv81 = zext i8 %48 to i32
  %shl82 = shl nuw nsw i32 %conv81, 8
  %49 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx18, align 1
  %conv84 = zext i8 %50 to i32
  %add85 = or i32 %shl82, %conv84
  %add86 = add nuw nsw i32 %add85, 4
  %call9.i.i310 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add86, i32 noundef 3520) #14
  %tobool88.not = icmp eq ptr %call9.i.i310, null
  br i1 %tobool88.not, label %if.end79.err_free_crit_edge, label %if.end90

if.end79.err_free_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end90:                                         ; preds = %if.end79
  %call91 = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr, i32 noundef 2, ptr noundef nonnull %call9.i.i310, i32 noundef %add86)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.recv_failed_crit_edge

if.end90.recv_failed_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_failed

if.end94:                                         ; preds = %if.end90
  %page2 = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %page2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i.i310, ptr %page2, align 8
  %conv95 = trunc i32 %add86 to i16
  %page2_len = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %page2_len to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv95, ptr %page2_len, align 4
  %call97 = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %call7.i.i285, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end94.page2_not_supported_crit_edge

if.end94.page2_not_supported_crit_edge:           ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %page2_not_supported

if.then99:                                        ; preds = %if.end94
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 2
  %conv101 = zext i8 %54 to i32
  %shl102 = shl nuw nsw i32 %conv101, 8
  %55 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx18, align 1
  %conv104 = zext i8 %56 to i32
  %add105 = or i32 %shl102, %conv104
  %add106 = add nuw nsw i32 %add105, 4
  %call9.i.i337 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add106, i32 noundef 3520) #14
  %tobool108.not = icmp eq ptr %call9.i.i337, null
  br i1 %tobool108.not, label %if.then99.err_free_crit_edge, label %if.end110

if.then99.err_free_crit_edge:                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end110:                                        ; preds = %if.then99
  %call112 = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %call9.i.i337, i32 noundef %add106)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.recv_failed_crit_edge

if.end110.recv_failed_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %recv_failed

if.end115:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %page10 = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %page10 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i337, ptr %page10, align 4
  %conv116 = trunc i32 %add106 to i16
  %page10_len = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %page10_len to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv116, ptr %page10_len, align 2
  br label %page2_not_supported

page2_not_supported:                              ; preds = %if.end115, %if.end94.page2_not_supported_crit_edge, %for.end73.page2_not_supported_crit_edge
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %components.0.lcssa, i32 8) #10
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %page2_not_supported.err_free_crit_edge, label %if.end7.i.i, !prof !46

page2_not_supported.err_free_crit_edge:           ; preds = %page2_not_supported
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end7.i.i:                                      ; preds = %page2_not_supported
  %61 = extractvalue { i32, i1 } %59, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #14
  %tobool119.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool119.not, label %if.end7.i.i.err_free_crit_edge, label %if.end121

if.end7.i.i.err_free_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end121:                                        ; preds = %if.end7.i.i
  %62 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i344 = icmp eq ptr %65, null
  br i1 %tobool.not.i344, label %if.end.i, label %if.end121.dev_name.exit_crit_edge

if.end121.dev_name.exit_crit_edge:                ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end121.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %67, %if.end.i ], [ %65, %if.end121.dev_name.exit_crit_edge ]
  %call124 = tail call ptr @enclosure_register(ptr noundef %63, ptr noundef %retval.0.i, i32 noundef %components.0.lcssa, ptr noundef nonnull @ses_enclosure_callbacks) #10
  %cmp.i = icmp ugt ptr %call124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then126, label %if.end128

if.then126:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %call124 to i32
  br label %err_free

if.end128:                                        ; preds = %dev_name.exit
  tail call void @kfree(ptr noundef nonnull %call7.i.i285) #10
  %69 = ptrtoint ptr %call124 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %call124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %components.0.lcssa)
  %cmp130399.not = icmp eq i32 %components.0.lcssa, 0
  br i1 %cmp130399.not, label %if.end128.for.end138_crit_edge, label %if.end128.for.body132_crit_edge

if.end128.for.body132_crit_edge:                  ; preds = %if.end128
  br label %for.body132

if.end128.for.end138_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end138

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %if.end128.for.body132_crit_edge
  %i.2400 = phi i32 [ %inc137, %for.body132.for.body132_crit_edge ], [ 0, %if.end128.for.body132_crit_edge ]
  %add.ptr133 = getelementptr %struct.ses_component, ptr %call8.i.i, i32 %i.2400
  %arrayidx134 = getelementptr %struct.enclosure_device, ptr %call124, i32 0, i32 5, i32 %i.2400
  %70 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr133, ptr %arrayidx134, align 8
  %inc137 = add nuw nsw i32 %i.2400, 1
  %exitcond.not = icmp eq i32 %inc137, %components.0.lcssa
  br i1 %exitcond.not, label %for.body132.for.end138_crit_edge, label %for.body132.for.body132_crit_edge

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body132

for.body132.for.end138_crit_edge:                 ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end138

for.end138:                                       ; preds = %for.body132.for.end138_crit_edge, %if.end128.for.end138_crit_edge
  tail call fastcc void @ses_enclosure_data_process(ptr noundef %call124, ptr noundef %add.ptr, i32 noundef 1)
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 8
  %call140 = tail call ptr @__scsi_iterate_devices(ptr noundef %72, ptr noundef null) #10
  %tobool142.not401 = icmp eq ptr %call140, null
  br i1 %tobool142.not401, label %for.end138.cleanup_crit_edge, label %for.body143.lr.ph

for.end138.cleanup_crit_edge:                     ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body143.lr.ph:                                ; preds = %for.end138
  %dev10.i366 = getelementptr inbounds %struct.efd, ptr %efd.i352, i32 0, i32 1
  br label %for.body143

for.body143:                                      ; preds = %for.inc151.for.body143_crit_edge, %for.body143.lr.ph
  %tmp_sdev.0402 = phi ptr [ %call140, %for.body143.lr.ph ], [ %call153, %for.inc151.for.body143_crit_edge ]
  %lun = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.0402, i32 0, i32 18
  %73 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %cmp144.not = icmp eq i64 %74, 0
  br i1 %cmp144.not, label %lor.lhs.false146, label %for.body143.for.inc151_crit_edge

for.body143.for.inc151_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc151

lor.lhs.false146:                                 ; preds = %for.body143
  %inquiry.i345 = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.0402, i32 0, i32 29
  %75 = ptrtoint ptr %inquiry.i345 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %inquiry.i345, align 8
  %tobool.not.i346 = icmp eq ptr %76, null
  br i1 %tobool.not.i346, label %lor.lhs.false146.for.inc151_crit_edge, label %scsi_device_enclosure.exit351

lor.lhs.false146.for.inc151_crit_edge:            ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc151

scsi_device_enclosure.exit351:                    ; preds = %lor.lhs.false146
  %arrayidx.i347 = getelementptr i8, ptr %76, i32 6
  %77 = ptrtoint ptr %arrayidx.i347 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i347, align 1
  %79 = and i8 %78, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool148.not = icmp eq i8 %79, 0
  br i1 %tobool148.not, label %if.end150, label %scsi_device_enclosure.exit351.for.inc151_crit_edge

scsi_device_enclosure.exit351.for.inc151_crit_edge: ; preds = %scsi_device_enclosure.exit351
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc151

if.end150:                                        ; preds = %scsi_device_enclosure.exit351
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %efd.i352) #10
  %80 = call ptr @memset(ptr %efd.i352, i32 0, i32 16)
  %sdev_target.i354 = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.0402, i32 0, i32 37
  %81 = ptrtoint ptr %sdev_target.i354 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sdev_target.i354, align 8
  %parent2.i355 = getelementptr inbounds %struct.scsi_target, ptr %82, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %parent2.i355 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parent2.i355, align 8
  %call.i356 = call i32 @scsi_is_sas_rphy(ptr noundef %84) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool3.not.i357 = icmp eq i32 %call.i356, 0
  br i1 %tobool3.not.i357, label %if.end6thread-pre-split.i362, label %if.then4.i360

if.then4.i360:                                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i359 = call i64 @sas_get_address(ptr noundef nonnull %tmp_sdev.0402) #10
  %85 = ptrtoint ptr %efd.i352 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %call5.i359, ptr %efd.i352, align 8
  br label %if.end6.i364

if.end6thread-pre-split.i362:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %efd.i352 to i32
  call void @__asan_load8_noabort(i32 %86)
  %.pr.i361 = load i64, ptr %efd.i352, align 8
  br label %if.end6.i364

if.end6.i364:                                     ; preds = %if.end6thread-pre-split.i362, %if.then4.i360
  %87 = phi i64 [ %.pr.i361, %if.end6thread-pre-split.i362 ], [ %call5.i359, %if.then4.i360 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %tobool8.not.i363 = icmp eq i64 %87, 0
  br i1 %tobool8.not.i363, label %if.end6.i364.ses_match_to_enclosure.exit369_crit_edge, label %if.then9.i368

if.end6.i364.ses_match_to_enclosure.exit369_crit_edge: ; preds = %if.end6.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %ses_match_to_enclosure.exit369

if.then9.i368:                                    ; preds = %if.end6.i364
  call void @__sanitizer_cov_trace_pc() #12
  %sdev_gendev.i365 = getelementptr inbounds %struct.scsi_device, ptr %tmp_sdev.0402, i32 0, i32 55
  %88 = ptrtoint ptr %dev10.i366 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %sdev_gendev.i365, ptr %dev10.i366, align 8
  %call11.i367 = call i32 @enclosure_for_each_device(ptr noundef nonnull @ses_enclosure_find_by_addr, ptr noundef nonnull %efd.i352) #10
  br label %ses_match_to_enclosure.exit369

ses_match_to_enclosure.exit369:                   ; preds = %if.then9.i368, %if.end6.i364.ses_match_to_enclosure.exit369_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %efd.i352) #10
  br label %for.inc151

for.inc151:                                       ; preds = %ses_match_to_enclosure.exit369, %scsi_device_enclosure.exit351.for.inc151_crit_edge, %lor.lhs.false146.for.inc151_crit_edge, %for.body143.for.inc151_crit_edge
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr, align 8
  %call153 = call ptr @__scsi_iterate_devices(ptr noundef %90, ptr noundef nonnull %tmp_sdev.0402) #10
  %tobool142.not = icmp eq ptr %call153, null
  br i1 %tobool142.not, label %for.inc151.cleanup_crit_edge, label %for.inc151.for.body143_crit_edge

for.inc151.for.body143_crit_edge:                 ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body143

for.inc151.cleanup_crit_edge:                     ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

recv_failed:                                      ; preds = %if.end110.recv_failed_crit_edge, %if.end90.recv_failed_crit_edge, %if.end24.recv_failed_crit_edge, %if.end11.recv_failed_crit_edge
  %buf.1 = phi ptr [ null, %if.end11.recv_failed_crit_edge ], [ %call9.i.i, %if.end24.recv_failed_crit_edge ], [ %call9.i.i310, %if.end90.recv_failed_crit_edge ], [ %call9.i.i337, %if.end110.recv_failed_crit_edge ]
  %page.0 = phi i32 [ 1, %if.end11.recv_failed_crit_edge ], [ 1, %if.end24.recv_failed_crit_edge ], [ 2, %if.end90.recv_failed_crit_edge ], [ 10, %if.end110.recv_failed_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %page.0) #10
  br label %err_free

err_free:                                         ; preds = %recv_failed, %if.then126, %if.end7.i.i.err_free_crit_edge, %page2_not_supported.err_free_crit_edge, %if.then99.err_free_crit_edge, %if.end79.err_free_crit_edge, %if.end16.err_free_crit_edge
  %buf.2 = phi ptr [ %buf.1, %recv_failed ], [ null, %if.then126 ], [ null, %if.end7.i.i.err_free_crit_edge ], [ null, %if.then99.err_free_crit_edge ], [ null, %if.end79.err_free_crit_edge ], [ null, %if.end16.err_free_crit_edge ], [ null, %page2_not_supported.err_free_crit_edge ]
  %err.0 = phi i32 [ -19, %recv_failed ], [ %68, %if.then126 ], [ -12, %if.end7.i.i.err_free_crit_edge ], [ -12, %if.then99.err_free_crit_edge ], [ -12, %if.end79.err_free_crit_edge ], [ -12, %if.end16.err_free_crit_edge ], [ -12, %page2_not_supported.err_free_crit_edge ]
  %scomp.0 = phi ptr [ null, %recv_failed ], [ %call8.i.i, %if.then126 ], [ null, %if.end7.i.i.err_free_crit_edge ], [ null, %if.then99.err_free_crit_edge ], [ null, %if.end79.err_free_crit_edge ], [ null, %if.end16.err_free_crit_edge ], [ null, %page2_not_supported.err_free_crit_edge ]
  tail call void @kfree(ptr noundef %buf.2) #10
  tail call void @kfree(ptr noundef %scomp.0) #10
  %page10156 = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %page10156 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %page10156, align 4
  tail call void @kfree(ptr noundef %92) #10
  %page2157 = getelementptr inbounds %struct.ses_device, ptr %call7.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %page2157 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %page2157, align 8
  tail call void @kfree(ptr noundef %94) #10
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %96) #10
  br label %err_init_free

err_init_free:                                    ; preds = %err_free, %if.end5.err_init_free_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free ], [ -12, %if.end5.err_init_free_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #10
  tail call void @kfree(ptr noundef %call7.i.i285) #10
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %err.1) #10
  br label %cleanup

cleanup:                                          ; preds = %err_init_free, %for.inc151.cleanup_crit_edge, %for.end138.cleanup_crit_edge, %ses_match_to_enclosure.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_init_free ], [ 0, %for.end138.cleanup_crit_edge ], [ -19, %while.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc151.cleanup_crit_edge ], [ -19, %ses_match_to_enclosure.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ses_intf_remove(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -408
  %inquiry.i = getelementptr i8, ptr %1, i32 -152
  %2 = ptrtoint ptr %inquiry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inquiry.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %scsi_device_enclosure.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

scsi_device_enclosure.exit:                       ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %3, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %scsi_device_enclosure.exit.while.cond.i_crit_edge, label %scsi_device_enclosure.exit.if.else_crit_edge

scsi_device_enclosure.exit.if.else_crit_edge:     ; preds = %scsi_device_enclosure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

scsi_device_enclosure.exit.while.cond.i_crit_edge: ; preds = %scsi_device_enclosure.exit
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %scsi_device_enclosure.exit.while.cond.i_crit_edge
  %prev.0.i = phi ptr [ %call.i, %while.body.i.while.cond.i_crit_edge ], [ null, %scsi_device_enclosure.exit.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 49
  %call.i = tail call ptr @enclosure_find(ptr noundef %shost_gendev.i, ptr noundef %prev.0.i) #10
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.i.if.end_crit_edge, label %while.body.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call i32 @enclosure_remove_device(ptr noundef nonnull %call.i, ptr noundef %1) #10
  %tobool.not.i3 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i3, label %if.then3.critedge.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

if.then3.critedge.i:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %edev4.i = getelementptr inbounds %struct.enclosure_device, ptr %call.i, i32 0, i32 2
  tail call void @put_device(ptr noundef %edev4.i) #10
  br label %if.end

if.else:                                          ; preds = %scsi_device_enclosure.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call.i5 = tail call ptr @enclosure_find(ptr noundef %1, ptr noundef null) #10
  %tobool.not.i6 = icmp eq ptr %call.i5, null
  br i1 %tobool.not.i6, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i5, align 8
  store ptr null, ptr %call.i5, align 8
  %page10.i = getelementptr inbounds %struct.ses_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %page10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page10.i, align 4
  tail call void @kfree(ptr noundef %12) #10
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %14) #10
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page2.i, align 4
  tail call void @kfree(ptr noundef %16) #10
  tail call void @kfree(ptr noundef %10) #10
  %component.i = getelementptr inbounds %struct.enclosure_device, ptr %call.i5, i32 0, i32 5
  %17 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %component.i, align 8
  tail call void @kfree(ptr noundef %18) #10
  %edev3.i = getelementptr inbounds %struct.enclosure_device, ptr %call.i5, i32 0, i32 2
  tail call void @put_device(ptr noundef %edev3.i) #10
  tail call void @enclosure_unregister(ptr noundef nonnull %call.i5) #10
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.else.if.end_crit_edge, %if.then3.critedge.i, %while.cond.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enclosure_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ses_recv_diag(ptr noundef %sdev, i32 noundef %page_code, ptr noundef %buf, i32 noundef %bufflen) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 5
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 28, ptr %cmd, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %0, align 1
  %conv = trunc i32 %page_code to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %1, align 1
  %8 = lshr i32 %bufflen, 8
  %conv3 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %2, align 1
  %conv5 = trunc i32 %bufflen to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #10
  %12 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %13 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %14 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %sshdr, align 8
  %call.i57 = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buf, i32 noundef %bufflen, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp58 = icmp sgt i32 %call.i57, 0
  br i1 %cmp58, label %land.lhs.true.preheader, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.preheader:                          ; preds = %entry
  %15 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sshdr, align 8
  %17 = and i8 %16, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %17)
  %cmp.i = icmp eq i8 %17, 112
  br i1 %cmp.i, label %land.rhs, label %land.lhs.true.preheader.cleanup_crit_edge

land.lhs.true.preheader.cleanup_crit_edge:        ; preds = %land.lhs.true.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true.preheader
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %12, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %19, label %land.rhs.cleanup_crit_edge [
    i8 2, label %land.rhs.do.body.backedge_crit_edge
    i8 6, label %land.rhs18
  ]

land.rhs.do.body.backedge_crit_edge:              ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs18:                                       ; preds = %land.rhs
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %22)
  %cmp20 = icmp eq i8 %22, 41
  br i1 %cmp20, label %land.rhs18.do.body.backedge_crit_edge, label %land.rhs18.cleanup_crit_edge

land.rhs18.cleanup_crit_edge:                     ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs18.do.body.backedge_crit_edge:            ; preds = %land.rhs18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %land.rhs18.do.body.backedge_crit_edge, %land.rhs.do.body.backedge_crit_edge
  %call.i = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buf, i32 noundef %bufflen, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true.1, label %do.body.backedge.do.end_crit_edge

do.body.backedge.do.end_crit_edge:                ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.1:                                  ; preds = %do.body.backedge
  %23 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sshdr, align 8
  %25 = and i8 %24, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %25)
  %cmp.i.1 = icmp eq i8 %25, 112
  br i1 %cmp.i.1, label %land.rhs.1, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.1:                                       ; preds = %land.lhs.true.1
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %12, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %27, label %land.rhs.1.cleanup_crit_edge [
    i8 2, label %land.rhs.1.do.body.backedge.1_crit_edge
    i8 6, label %land.rhs18.1
  ]

land.rhs.1.do.body.backedge.1_crit_edge:          ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.1

land.rhs.1.cleanup_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs18.1:                                     ; preds = %land.rhs.1
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %30)
  %cmp20.1 = icmp eq i8 %30, 41
  br i1 %cmp20.1, label %land.rhs18.1.do.body.backedge.1_crit_edge, label %land.rhs18.1.cleanup_crit_edge

land.rhs18.1.cleanup_crit_edge:                   ; preds = %land.rhs18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs18.1.do.body.backedge.1_crit_edge:        ; preds = %land.rhs18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.1

do.body.backedge.1:                               ; preds = %land.rhs18.1.do.body.backedge.1_crit_edge, %land.rhs.1.do.body.backedge.1_crit_edge
  %call.i.1 = call i32 @__scsi_execute(ptr noundef %sdev, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %buf, i32 noundef %bufflen, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 3000, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.1 = icmp sgt i32 %call.i.1, 0
  br i1 %cmp.1, label %do.body.backedge.1.cleanup_crit_edge, label %do.body.backedge.1.do.end_crit_edge

do.body.backedge.1.do.end_crit_edge:              ; preds = %do.body.backedge.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.backedge.1.cleanup_crit_edge:             ; preds = %do.body.backedge.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body.backedge.1.do.end_crit_edge, %do.body.backedge.do.end_crit_edge, %entry.do.end_crit_edge
  %call.i.lcssa = phi i32 [ %call.i57, %entry.do.end_crit_edge ], [ %call.i, %do.body.backedge.do.end_crit_edge ], [ %call.i.1, %do.body.backedge.1.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %tobool23.not = icmp eq i32 %call.i.lcssa, 0
  br i1 %tobool23.not, label %if.end, label %do.end.cleanup_crit_edge, !prof !47

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %do.end
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 1
  %conv26 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26, i32 %page_code)
  %cmp27 = icmp eq i32 %conv26, %page_code
  br i1 %cmp27, label %if.end.cleanup_crit_edge, label %if.end36, !prof !47

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %page_code, i32 noundef %conv26) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.body.backedge.1.cleanup_crit_edge, %land.rhs18.1.cleanup_crit_edge, %land.rhs.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.rhs18.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %land.lhs.true.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end36 ], [ %call.i.lcssa, %do.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i57, %land.rhs.cleanup_crit_edge ], [ %call.i57, %land.lhs.true.preheader.cleanup_crit_edge ], [ %call.i57, %land.rhs18.cleanup_crit_edge ], [ %call.i, %land.lhs.true.1.cleanup_crit_edge ], [ %call.i, %land.rhs.1.cleanup_crit_edge ], [ %call.i, %land.rhs18.1.cleanup_crit_edge ], [ %call.i.1, %do.body.backedge.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enclosure_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ses_enclosure_data_process(ptr noundef %edev, ptr noundef %sdev, i32 noundef %create) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  %page1_num_types = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %page1_num_types to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %page1_num_types, align 2
  %conv = sext i16 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.simple_populate_crit_edge, label %if.end

entry.simple_populate_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_populate

if.end:                                           ; preds = %entry
  %page10 = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %page10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page10, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %page10_len = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %page10_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %page10_len, align 2
  %conv4 = sext i16 %8 to i32
  %call5 = tail call fastcc i32 @ses_recv_diag(ptr noundef %sdev, i32 noundef 10, ptr noundef nonnull %6, i32 noundef %conv4)
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %call7 = tail call fastcc i32 @ses_recv_diag(ptr noundef %sdev, i32 noundef 7, ptr noundef nonnull %call7.i.i, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.simple_populate_crit_edge

if.end6.simple_populate_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_populate

if.end10:                                         ; preds = %if.end6
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 2
  %conv11 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %arrayidx12 = getelementptr i8, ptr %call7.i.i, i32 3
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %add = or i32 %shl, %conv13
  %add14 = add nuw nsw i32 %add, 4
  %add15 = add nuw nsw i32 %add, 5
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add15, i32 noundef 3520) #14
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end10.simple_populate_crit_edge, label %if.end19

if.end10.simple_populate_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_populate

if.end19:                                         ; preds = %if.end10
  %call20 = tail call fastcc i32 @ses_recv_diag(ptr noundef %sdev, i32 noundef 7, ptr noundef nonnull %call9.i.i, i32 noundef %add14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else, label %if.end19.simple_populate_crit_edge

if.end19.simple_populate_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_populate

simple_populate:                                  ; preds = %if.end19.simple_populate_crit_edge, %if.end10.simple_populate_crit_edge, %if.end6.simple_populate_crit_edge, %entry.simple_populate_crit_edge
  %buf.0 = phi ptr [ null, %if.end6.simple_populate_crit_edge ], [ %call9.i.i, %if.end19.simple_populate_crit_edge ], [ null, %if.end10.simple_populate_crit_edge ], [ null, %entry.simple_populate_crit_edge ]
  tail call void @kfree(ptr noundef %buf.0) #10
  br label %if.end31

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 8
  %arrayidx23 = getelementptr i8, ptr %call9.i.i, i32 10
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 2
  %conv24 = zext i8 %14 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %arrayidx26 = getelementptr i8, ptr %call9.i.i, i32 11
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %16 to i32
  %add28 = or i32 %shl25, %conv27
  %add29 = add nuw nsw i32 %add28, 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %add29
  br label %if.end31

if.end31:                                         ; preds = %if.else, %simple_populate
  %buf.1 = phi ptr [ null, %simple_populate ], [ %call9.i.i, %if.else ]
  %desc_ptr.0 = phi ptr [ null, %simple_populate ], [ %add.ptr30, %if.else ]
  %page7_len.0 = phi i32 [ 0, %simple_populate ], [ %add14, %if.else ]
  %len.0 = phi i32 [ 0, %simple_populate ], [ %add28, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp207 = icmp sgt i16 %3, 0
  br i1 %cmp207, label %for.cond39.preheader.lr.ph, label %if.end31.for.end135_crit_edge

if.end31.for.end135_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end135

for.cond39.preheader.lr.ph:                       ; preds = %if.end31
  %page1_types = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %page1_types to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %page1_types, align 4
  %page1032 = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %page1032 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %page1032, align 4
  %tobool33.not = icmp eq ptr %20, null
  %add.ptr36 = getelementptr i8, ptr %20, i32 8
  %spec.select = select i1 %tobool33.not, ptr null, ptr %add.ptr36
  %add.ptr47 = getelementptr i8, ptr %buf.1, i32 %page7_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool71.not = icmp eq i32 %create, 0
  br label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.inc132.for.cond39.preheader_crit_edge, %for.cond39.preheader.lr.ph
  %components.0214 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %components.1.lcssa, %for.inc132.for.cond39.preheader_crit_edge ]
  %len.1213 = phi i32 [ %len.0, %for.cond39.preheader.lr.ph ], [ %len.2.lcssa, %for.inc132.for.cond39.preheader_crit_edge ]
  %i.0212 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %inc133, %for.inc132.for.cond39.preheader_crit_edge ]
  %addl_desc_ptr.1211 = phi ptr [ %spec.select, %for.cond39.preheader.lr.ph ], [ %addl_desc_ptr.2.lcssa, %for.inc132.for.cond39.preheader_crit_edge ]
  %desc_ptr.1210 = phi ptr [ %desc_ptr.0, %for.cond39.preheader.lr.ph ], [ %desc_ptr.2.lcssa, %for.inc132.for.cond39.preheader_crit_edge ]
  %type_ptr.0208 = phi ptr [ %18, %for.cond39.preheader.lr.ph ], [ %add.ptr134, %for.inc132.for.cond39.preheader_crit_edge ]
  %arrayidx40 = getelementptr i8, ptr %type_ptr.0208, i32 1
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp42195.not = icmp eq i8 %22, 0
  br i1 %cmp42195.not, label %for.cond39.preheader.for.inc132_crit_edge, label %for.cond39.preheader.for.body44_crit_edge

for.cond39.preheader.for.body44_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body44

for.cond39.preheader.for.inc132_crit_edge:        ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc132

for.body44:                                       ; preds = %if.end130.for.body44_crit_edge, %for.cond39.preheader.for.body44_crit_edge
  %components.1203 = phi i32 [ %components.3, %if.end130.for.body44_crit_edge ], [ %components.0214, %for.cond39.preheader.for.body44_crit_edge ]
  %len.2202 = phi i32 [ %len.3, %if.end130.for.body44_crit_edge ], [ %len.1213, %for.cond39.preheader.for.body44_crit_edge ]
  %j.0201 = phi i32 [ %inc131, %if.end130.for.body44_crit_edge ], [ 0, %for.cond39.preheader.for.body44_crit_edge ]
  %addl_desc_ptr.2197 = phi ptr [ %addl_desc_ptr.3, %if.end130.for.body44_crit_edge ], [ %addl_desc_ptr.1211, %for.cond39.preheader.for.body44_crit_edge ]
  %desc_ptr.2196 = phi ptr [ %spec.select192, %if.end130.for.body44_crit_edge ], [ %desc_ptr.1210, %for.cond39.preheader.for.body44_crit_edge ]
  %tobool45.not = icmp ne ptr %desc_ptr.2196, null
  %cmp48.not = icmp ult ptr %desc_ptr.2196, %add.ptr47
  %or.cond = select i1 %tobool45.not, i1 %cmp48.not, i1 false
  br i1 %or.cond, label %if.else51, label %for.body44.if.end61_crit_edge

for.body44.if.end61_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.else51:                                        ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx52 = getelementptr i8, ptr %desc_ptr.2196, i32 2
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %24 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %arrayidx55 = getelementptr i8, ptr %desc_ptr.2196, i32 3
  %25 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %26 to i32
  %add57 = or i32 %shl54, %conv56
  %add.ptr58 = getelementptr i8, ptr %desc_ptr.2196, i32 4
  %arrayidx59 = getelementptr i8, ptr %add.ptr58, i32 %add57
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx59, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.else51, %for.body44.if.end61_crit_edge
  %len.3 = phi i32 [ %add57, %if.else51 ], [ %len.2202, %for.body44.if.end61_crit_edge ]
  %name.0 = phi ptr [ %add.ptr58, %if.else51 ], [ null, %for.body44.if.end61_crit_edge ]
  %28 = ptrtoint ptr %type_ptr.0208 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type_ptr.0208, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %29, label %if.end61.if.end90_crit_edge [
    i8 1, label %if.end61.if.then70_crit_edge
    i8 23, label %if.end61.if.then70_crit_edge215
  ]

if.end61.if.then70_crit_edge215:                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.end61.if.then70_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

if.end61.if.end90_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then70:                                        ; preds = %if.end61.if.then70_crit_edge, %if.end61.if.then70_crit_edge215
  br i1 %tobool71.not, label %if.else76, label %if.then72

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %conv74 = zext i8 %29 to i32
  %call75 = tail call ptr @enclosure_component_alloc(ptr noundef %edev, i32 noundef %components.1203, i32 noundef %conv74, ptr noundef %name.0) #10
  br label %if.end79

if.else76:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx78 = getelementptr %struct.enclosure_device, ptr %edev, i32 0, i32 5, i32 %components.1203
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then72
  %ecomp.0 = phi ptr [ %call75, %if.then72 ], [ %arrayidx78, %if.else76 ]
  %components.2 = add i32 %components.1203, 1
  %cmp.i = icmp ugt ptr %ecomp.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end79.if.end90_crit_edge, label %if.then81

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then81:                                        ; preds = %if.end79
  %tobool82.not = icmp eq ptr %addl_desc_ptr.2197, null
  br i1 %tobool82.not, label %if.then81.if.end84_crit_edge, label %if.then83

if.then81.if.end84_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then83:                                        ; preds = %if.then81
  %31 = ptrtoint ptr %addl_desc_ptr.2197 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %addl_desc_ptr.2197, align 1
  %conv.i = zext i8 %32 to i32
  %and.i = and i32 %conv.i, 16
  %and3.i = and i32 %conv.i, 128
  %33 = ptrtoint ptr %ecomp.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ecomp.0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then83.if.end84_crit_edge

if.then83.if.end84_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end.i:                                         ; preds = %if.then83
  %and6.i = and i32 %conv.i, 15
  %35 = zext i32 %and6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and6.i, label %if.end.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 6, label %sw.bb12.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.then8.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9.i = getelementptr i8, ptr %addl_desc_ptr.2197, i32 7
  %36 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %37 to i32
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %sw.bb12.i.if.end20.i_crit_edge, label %if.then14.i

sw.bb12.i.if.end20.i_crit_edge:                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then14.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx16.i = getelementptr i8, ptr %addl_desc_ptr.2197, i32 7
  %38 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %39 to i32
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %sw.bb12.i.if.end20.i_crit_edge
  %.sink.i = phi i32 [ 8, %if.then14.i ], [ 4, %sw.bb12.i.if.end20.i_crit_edge ]
  %slot.0.i = phi i32 [ %conv17.i, %if.then14.i ], [ -1, %sw.bb12.i.if.end20.i_crit_edge ]
  %add.ptr19.i = getelementptr i8, ptr %addl_desc_ptr.2197, i32 %.sink.i
  %arrayidx21.i = getelementptr i8, ptr %add.ptr19.i, i32 12
  %40 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %41 to i64
  %shl.i = shl nuw i64 %conv22.i, 56
  %arrayidx23.i = getelementptr i8, ptr %add.ptr19.i, i32 13
  %42 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %43 to i64
  %shl25.i = shl nuw nsw i64 %conv24.i, 48
  %or.i = or i64 %shl25.i, %shl.i
  %arrayidx26.i = getelementptr i8, ptr %add.ptr19.i, i32 14
  %44 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %45 to i64
  %shl28.i = shl nuw nsw i64 %conv27.i, 40
  %or29.i = or i64 %or.i, %shl28.i
  %arrayidx30.i = getelementptr i8, ptr %add.ptr19.i, i32 15
  %46 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %47 to i64
  %shl32.i = shl nuw nsw i64 %conv31.i, 32
  %or33.i = or i64 %or29.i, %shl32.i
  %arrayidx34.i = getelementptr i8, ptr %add.ptr19.i, i32 16
  %48 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %49 to i64
  %shl36.i = shl nuw nsw i64 %conv35.i, 24
  %or37.i = or i64 %or33.i, %shl36.i
  %arrayidx38.i = getelementptr i8, ptr %add.ptr19.i, i32 17
  %50 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %51 to i64
  %shl40.i = shl nuw nsw i64 %conv39.i, 16
  %or41.i = or i64 %or37.i, %shl40.i
  %arrayidx42.i = getelementptr i8, ptr %add.ptr19.i, i32 18
  %52 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %53 to i64
  %shl44.i = shl nuw nsw i64 %conv43.i, 8
  %or45.i = or i64 %or41.i, %shl44.i
  %arrayidx46.i = getelementptr i8, ptr %add.ptr19.i, i32 19
  %54 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %55 to i64
  %or48.i = or i64 %or45.i, %conv47.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end20.i, %if.then8.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge
  %addr.0.i = phi i64 [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ %or48.i, %if.end20.i ], [ 0, %if.then8.i ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ]
  %slot.1.i = phi i32 [ -1, %if.end.i.sw.epilog.i_crit_edge ], [ %slot.0.i, %if.end20.i ], [ %conv10.i, %if.then8.i ], [ -1, %sw.bb.i.sw.epilog.i_crit_edge ]
  %slot49.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp.0, i32 0, i32 8
  %56 = ptrtoint ptr %slot49.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %slot.1.i, ptr %slot49.i, align 8
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %addr.0.i, ptr %34, align 8
  br label %if.end84

if.end84:                                         ; preds = %sw.epilog.i, %if.then83.if.end84_crit_edge, %if.then81.if.end84_crit_edge
  br i1 %tobool71.not, label %if.end84.if.end90_crit_edge, label %if.then86

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = tail call i32 @enclosure_component_register(ptr noundef %ecomp.0) #10
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end84.if.end90_crit_edge, %if.end79.if.end90_crit_edge, %if.end61.if.end90_crit_edge
  %components.3 = phi i32 [ %components.2, %if.end79.if.end90_crit_edge ], [ %components.2, %if.then86 ], [ %components.2, %if.end84.if.end90_crit_edge ], [ %components.1203, %if.end61.if.end90_crit_edge ]
  %tobool91.not = icmp eq ptr %name.0, null
  %add.ptr93 = getelementptr i8, ptr %name.0, i32 %len.3
  %spec.select192 = select i1 %tobool91.not, ptr null, ptr %add.ptr93
  %tobool95.not = icmp eq ptr %addl_desc_ptr.2197, null
  br i1 %tobool95.not, label %if.end90.if.end130_crit_edge, label %land.lhs.true

if.end90.if.end130_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

land.lhs.true:                                    ; preds = %if.end90
  %58 = ptrtoint ptr %type_ptr.0208 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %type_ptr.0208, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %59, label %land.lhs.true.if.end130_crit_edge [
    i8 1, label %land.lhs.true.if.then125_crit_edge
    i8 23, label %land.lhs.true.if.then125_crit_edge216
    i8 24, label %land.lhs.true.if.then125_crit_edge217
    i8 20, label %land.lhs.true.if.then125_crit_edge218
    i8 21, label %land.lhs.true.if.then125_crit_edge219
    i8 7, label %land.lhs.true.if.then125_crit_edge220
  ]

land.lhs.true.if.then125_crit_edge220:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

land.lhs.true.if.then125_crit_edge219:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

land.lhs.true.if.then125_crit_edge218:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

land.lhs.true.if.then125_crit_edge217:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

land.lhs.true.if.then125_crit_edge216:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

land.lhs.true.if.then125_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then125

land.lhs.true.if.end130_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then125:                                       ; preds = %land.lhs.true.if.then125_crit_edge, %land.lhs.true.if.then125_crit_edge216, %land.lhs.true.if.then125_crit_edge217, %land.lhs.true.if.then125_crit_edge218, %land.lhs.true.if.then125_crit_edge219, %land.lhs.true.if.then125_crit_edge220
  %arrayidx126 = getelementptr i8, ptr %addl_desc_ptr.2197, i32 1
  %61 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %62 to i32
  %add128 = add nuw nsw i32 %conv127, 2
  %add.ptr129 = getelementptr i8, ptr %addl_desc_ptr.2197, i32 %add128
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %land.lhs.true.if.end130_crit_edge, %if.end90.if.end130_crit_edge
  %addl_desc_ptr.3 = phi ptr [ %add.ptr129, %if.then125 ], [ null, %if.end90.if.end130_crit_edge ], [ %addl_desc_ptr.2197, %land.lhs.true.if.end130_crit_edge ]
  %inc131 = add nuw nsw i32 %j.0201, 1
  %63 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %64 to i32
  %cmp42 = icmp ult i32 %inc131, %conv41
  br i1 %cmp42, label %if.end130.for.body44_crit_edge, label %if.end130.for.inc132_crit_edge

if.end130.for.inc132_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc132

if.end130.for.body44_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

for.inc132:                                       ; preds = %if.end130.for.inc132_crit_edge, %for.cond39.preheader.for.inc132_crit_edge
  %desc_ptr.2.lcssa = phi ptr [ %desc_ptr.1210, %for.cond39.preheader.for.inc132_crit_edge ], [ %spec.select192, %if.end130.for.inc132_crit_edge ]
  %addl_desc_ptr.2.lcssa = phi ptr [ %addl_desc_ptr.1211, %for.cond39.preheader.for.inc132_crit_edge ], [ %addl_desc_ptr.3, %if.end130.for.inc132_crit_edge ]
  %len.2.lcssa = phi i32 [ %len.1213, %for.cond39.preheader.for.inc132_crit_edge ], [ %len.3, %if.end130.for.inc132_crit_edge ]
  %components.1.lcssa = phi i32 [ %components.0214, %for.cond39.preheader.for.inc132_crit_edge ], [ %components.3, %if.end130.for.inc132_crit_edge ]
  %inc133 = add nuw nsw i32 %i.0212, 1
  %add.ptr134 = getelementptr i8, ptr %type_ptr.0208, i32 4
  %exitcond.not = icmp eq i32 %inc133, %conv
  br i1 %exitcond.not, label %for.inc132.for.end135_crit_edge, label %for.inc132.for.cond39.preheader_crit_edge

for.inc132.for.cond39.preheader_crit_edge:        ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond39.preheader

for.inc132.for.end135_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end135

for.end135:                                       ; preds = %for.inc132.for.end135_crit_edge, %if.end31.for.end135_crit_edge
  tail call void @kfree(ptr noundef %buf.1) #10
  tail call void @kfree(ptr noundef %call7.i.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_sas_rphy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sas_get_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enclosure_for_each_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_enclosure_find_by_addr(ptr noundef %edev, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 5
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %components = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 4
  %2 = ptrtoint ptr %components to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %components, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp sgt i32 %3, 0
  br i1 %cmp24, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.enclosure_device, ptr %edev, i32 0, i32 5, i32 %i.025
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp5.not = icmp eq i64 %9, %5
  br i1 %cmp5.not, label %if.end7, label %for.inc

if.end7:                                          ; preds = %for.body
  %dev = getelementptr inbounds %struct.efd, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call = tail call i32 @enclosure_add_device(ptr noundef %edev, i32 noundef %i.025, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call11 = tail call i32 @kobject_uevent(ptr noundef %13, i32 noundef 2) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9, %if.end7.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then9 ], [ 1, %if.end7.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enclosure_add_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ses_get_status(ptr nocapture noundef readonly %edev, ptr nocapture noundef %ecomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %11 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %3, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i10 = icmp slt i32 %call.i, 0
  br i1 %cmp.i10, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp659.i = icmp sgt i16 %13, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %3, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %9, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1054.not.i = icmp eq i8 %15, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %16 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type_ptr.062.i, align 1
  %18 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %18
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %17, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge19
  ]

for.body12.i.if.end23.i_crit_edge19:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge19
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %5)
  %cmp24.i = icmp eq i32 %count.155.i, %5
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.then2

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr13.i, align 1
  %22 = and i8 %21, 15
  %and = zext i8 %22 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %and.sink = phi i32 [ %and, %if.then2 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %status3 = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 9
  %23 = ptrtoint ptr %status3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.sink, ptr %status3, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ses_get_fault(ptr nocapture noundef readonly %edev, ptr nocapture noundef %ecomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %11 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %3, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i10 = icmp slt i32 %call.i, 0
  br i1 %cmp.i10, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp659.i = icmp sgt i16 %13, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %3, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %9, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1054.not.i = icmp eq i8 %15, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %16 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type_ptr.062.i, align 1
  %18 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %18
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %17, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge25
  ]

for.body12.i.if.end23.i_crit_edge25:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge25
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %5)
  %cmp24.i = icmp eq i32 %count.155.i, %5
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.then2

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %desc_ptr.157.i, i32 7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = lshr i8 %21, 4
  %23 = and i8 %22, 6
  %24 = zext i8 %23 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %24, %if.then2 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %fault3 = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 5
  %25 = ptrtoint ptr %fault3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %fault3, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_set_fault(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %ecomp, i32 noundef %val) #2 align 64 {
entry:
  %desc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #10
  %0 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 3
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc, align 4
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %15 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %7, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i18 = icmp slt i32 %call.i, 0
  br i1 %cmp.i18, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp659.i = icmp sgt i16 %17, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %7, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %13, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1054.not.i = icmp eq i8 %19, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %20 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type_ptr.062.i, align 1
  %22 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %22
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %21, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge29
  ]

for.body12.i.if.end23.i_crit_edge29:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge29
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %9)
  %cmp24.i = icmp eq i32 %count.155.i, %9
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.end3

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %ses_get_page2_descriptor.exit
  %24 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr13.i, align 1
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %desc, align 4
  store i8 0, ptr %desc, align 4
  %type.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 3
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i19 = icmp eq i32 %28, 1
  br i1 %cmp.i19, label %if.then.i, label %if.end3.init_device_slot_control.exit_crit_edge

if.end3.init_device_slot_control.exit_crit_edge:  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_device_slot_control.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %0, align 1
  br label %init_device_slot_control.exit

init_device_slot_control.exit:                    ; preds = %if.then.i, %if.end3.init_device_slot_control.exit_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 2
  %32 = and i8 %31, -34
  store i8 %32, ptr %1, align 2
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %35 = and i8 %34, 60
  store i8 %35, ptr %2, align 1
  %36 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %val, label %init_device_slot_control.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

init_device_slot_control.exit.cleanup_crit_edge:  ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 1
  %39 = and i8 %38, -33
  br label %sw.epilog

sw.bb5:                                           ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 1
  %42 = or i8 %41, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %storemerge = phi i8 [ %42, %sw.bb5 ], [ %39, %sw.bb ]
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge, ptr %2, align 1
  %call10 = call fastcc i32 @ses_set_page2_descriptor(ptr noundef %edev, ptr noundef %ecomp, ptr noundef nonnull %desc)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %init_device_slot_control.exit.cleanup_crit_edge, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -5, %ses_get_page2_descriptor.exit.cleanup_crit_edge ], [ -22, %init_device_slot_control.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %for.inc29.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_set_active(ptr nocapture noundef readonly %edev, ptr nocapture noundef %ecomp, i32 noundef %val) #2 align 64 {
entry:
  %desc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #10
  %0 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 3
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc, align 4
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %15 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %7, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i21 = icmp slt i32 %call.i, 0
  br i1 %cmp.i21, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp659.i = icmp sgt i16 %17, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %7, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %13, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1054.not.i = icmp eq i8 %19, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %20 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type_ptr.062.i, align 1
  %22 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %22
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %21, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge33
  ]

for.body12.i.if.end23.i_crit_edge33:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge33
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %9)
  %cmp24.i = icmp eq i32 %count.155.i, %9
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.end3

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %ses_get_page2_descriptor.exit
  %24 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr13.i, align 1
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %desc, align 4
  store i8 0, ptr %desc, align 4
  %type.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 3
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i22 = icmp eq i32 %28, 1
  br i1 %cmp.i22, label %if.then.i, label %if.end3.init_device_slot_control.exit_crit_edge

if.end3.init_device_slot_control.exit_crit_edge:  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_device_slot_control.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %0, align 1
  br label %init_device_slot_control.exit

init_device_slot_control.exit:                    ; preds = %if.then.i, %if.end3.init_device_slot_control.exit_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 2
  %32 = and i8 %31, -34
  store i8 %32, ptr %1, align 2
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %35 = and i8 %34, 60
  store i8 %35, ptr %2, align 1
  %36 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %val, label %init_device_slot_control.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

init_device_slot_control.exit.cleanup_crit_edge:  ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 2
  %39 = and i8 %38, 127
  br label %sw.epilog

sw.bb5:                                           ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 2
  %42 = or i8 %41, -128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %.sink29 = phi i8 [ %42, %sw.bb5 ], [ %39, %sw.bb ]
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %.sink29, ptr %1, align 2
  %active9 = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 6
  %44 = ptrtoint ptr %active9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %val, ptr %active9, align 8
  %call11 = call fastcc i32 @ses_set_page2_descriptor(ptr noundef %edev, ptr noundef %ecomp, ptr noundef nonnull %desc)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %init_device_slot_control.exit.cleanup_crit_edge, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -5, %ses_get_page2_descriptor.exit.cleanup_crit_edge ], [ -22, %init_device_slot_control.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %for.inc29.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ses_get_locate(ptr nocapture noundef readonly %edev, ptr nocapture noundef %ecomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %11 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %3, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i11 = icmp slt i32 %call.i, 0
  br i1 %cmp.i11, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp659.i = icmp sgt i16 %13, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %3, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %9, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1054.not.i = icmp eq i8 %15, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %16 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type_ptr.062.i, align 1
  %18 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %18
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %17, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge26
  ]

for.body12.i.if.end23.i_crit_edge26:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge26
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %5)
  %cmp24.i = icmp eq i32 %count.155.i, %5
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.then2

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %desc_ptr.157.i, i32 6
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = lshr i8 %21, 1
  %.lobit = and i8 %22, 1
  %23 = zext i8 %.lobit to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %23, %if.then2 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %locate4 = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 7
  %24 = ptrtoint ptr %locate4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %locate4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_set_locate(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %ecomp, i32 noundef %val) #2 align 64 {
entry:
  %desc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #10
  %0 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 3
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc, align 4
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %15 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %7, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i18 = icmp slt i32 %call.i, 0
  br i1 %cmp.i18, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp659.i = icmp sgt i16 %17, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %7, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %13, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1054.not.i = icmp eq i8 %19, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %20 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type_ptr.062.i, align 1
  %22 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %22
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %21, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge29
  ]

for.body12.i.if.end23.i_crit_edge29:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge29
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %9)
  %cmp24.i = icmp eq i32 %count.155.i, %9
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.end3

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %ses_get_page2_descriptor.exit
  %24 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr13.i, align 1
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %desc, align 4
  store i8 0, ptr %desc, align 4
  %type.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 3
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i19 = icmp eq i32 %28, 1
  br i1 %cmp.i19, label %if.then.i, label %if.end3.init_device_slot_control.exit_crit_edge

if.end3.init_device_slot_control.exit_crit_edge:  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_device_slot_control.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %0, align 1
  br label %init_device_slot_control.exit

init_device_slot_control.exit:                    ; preds = %if.then.i, %if.end3.init_device_slot_control.exit_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 2
  %32 = and i8 %31, -34
  store i8 %32, ptr %1, align 2
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %35 = and i8 %34, 60
  store i8 %35, ptr %2, align 1
  %36 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %val, label %init_device_slot_control.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

init_device_slot_control.exit.cleanup_crit_edge:  ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %1, align 2
  %39 = and i8 %38, -3
  br label %sw.epilog

sw.bb5:                                           ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 2
  %42 = or i8 %41, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %storemerge = phi i8 [ %42, %sw.bb5 ], [ %39, %sw.bb ]
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge, ptr %1, align 2
  %call10 = call fastcc i32 @ses_set_page2_descriptor(ptr noundef %edev, ptr noundef %ecomp, ptr noundef nonnull %desc)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %init_device_slot_control.exit.cleanup_crit_edge, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -5, %ses_get_page2_descriptor.exit.cleanup_crit_edge ], [ -22, %init_device_slot_control.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %for.inc29.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ses_get_power_status(ptr nocapture noundef readonly %edev, ptr nocapture noundef %ecomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %3, null
  br i1 %cmp.i.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %11 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %3, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i11 = icmp slt i32 %call.i, 0
  br i1 %cmp.i11, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp659.i = icmp sgt i16 %13, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %3, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %9, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1054.not.i = icmp eq i8 %15, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %16 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type_ptr.062.i, align 1
  %18 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %18
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %19 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %17, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge26
  ]

for.body12.i.if.end23.i_crit_edge26:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge26
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %5)
  %cmp24.i = icmp eq i32 %count.155.i, %5
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.then2

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %desc_ptr.157.i, i32 7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = lshr i8 %21, 4
  %.lobit = and i8 %22, 1
  %23 = xor i8 %.lobit, 1
  %24 = zext i8 %23 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %24, %if.then2 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %power_status4 = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 10
  %25 = ptrtoint ptr %power_status4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %power_status4, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_set_power_status(ptr nocapture noundef readonly %edev, ptr nocapture noundef %ecomp, i32 noundef %val) #2 align 64 {
entry:
  %desc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #10
  %0 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %desc, i32 0, i32 3
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc, align 4
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 8
  %page2.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %page2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page2.i, align 4
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %8 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number.i, align 8
  %parent.i = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -408
  %page1_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %page1_types.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page1_types.i, align 4
  %page2_len.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %page2_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %page2_len.i, align 4
  %conv.i = sext i16 %15 to i32
  %call.i = tail call fastcc i32 @ses_recv_diag(ptr noundef %add.ptr.i, i32 noundef 2, ptr noundef nonnull %7, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i20 = icmp slt i32 %call.i, 0
  br i1 %cmp.i20, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %page1_num_types.i = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %page1_num_types.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %page1_num_types.i, align 2
  %conv5.i = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp659.i = icmp sgt i16 %17, 0
  br i1 %cmp659.i, label %for.cond8.preheader.preheader.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond8.preheader.preheader.i:                  ; preds = %if.end.i
  %add.ptr2.i = getelementptr i8, ptr %7, i32 8
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc29.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.preheader.i
  %desc_ptr.064.i = phi ptr [ %desc_ptr.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %add.ptr2.i, %for.cond8.preheader.preheader.i ]
  %type_ptr.062.i = phi ptr [ %add.ptr31.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ %13, %for.cond8.preheader.preheader.i ]
  %i.061.i = phi i32 [ %inc30.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %count.060.i = phi i32 [ %count.1.lcssa.i, %for.inc29.i.for.cond8.preheader.i_crit_edge ], [ 0, %for.cond8.preheader.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr %type_ptr.062.i, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp1054.not.i = icmp eq i8 %19, 0
  br i1 %cmp1054.not.i, label %for.cond8.preheader.i.for.inc29.i_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.for.inc29.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %20 = ptrtoint ptr %type_ptr.062.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type_ptr.062.i, align 1
  %22 = shl nuw nsw i32 %conv9.i, 2
  %uglygep.i = getelementptr i8, ptr %desc_ptr.064.i, i32 %22
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %desc_ptr.157.i = phi ptr [ %desc_ptr.064.i, %for.body12.lr.ph.i ], [ %add.ptr13.i, %for.inc.i.for.body12.i_crit_edge ]
  %j.056.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc28.i, %for.inc.i.for.body12.i_crit_edge ]
  %count.155.i = phi i32 [ %count.060.i, %for.body12.lr.ph.i ], [ %count.2.i, %for.inc.i.for.body12.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %desc_ptr.157.i, i32 4
  %23 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %21, label %for.body12.i.for.inc.i_crit_edge [
    i8 1, label %for.body12.i.if.end23.i_crit_edge
    i8 23, label %for.body12.i.if.end23.i_crit_edge31
  ]

for.body12.i.if.end23.i_crit_edge31:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.if.end23.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end23.i:                                       ; preds = %for.body12.i.if.end23.i_crit_edge, %for.body12.i.if.end23.i_crit_edge31
  %inc.i = add i32 %count.155.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.155.i, i32 %9)
  %cmp24.i = icmp eq i32 %count.155.i, %9
  br i1 %cmp24.i, label %ses_get_page2_descriptor.exit, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end23.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %count.2.i = phi i32 [ %inc.i, %if.end23.i.for.inc.i_crit_edge ], [ %count.155.i, %for.body12.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw nsw i32 %j.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %conv9.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc29.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.inc.i.for.inc29.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc.i.for.inc29.i_crit_edge, %for.cond8.preheader.i.for.inc29.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.060.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %count.2.i, %for.inc.i.for.inc29.i_crit_edge ]
  %desc_ptr.1.lcssa.i = phi ptr [ %desc_ptr.064.i, %for.cond8.preheader.i.for.inc29.i_crit_edge ], [ %uglygep.i, %for.inc.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw nsw i32 %i.061.i, 1
  %add.ptr31.i = getelementptr i8, ptr %type_ptr.062.i, i32 4
  %exitcond67.not.i = icmp eq i32 %inc30.i, %conv5.i
  br i1 %exitcond67.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.cond8.preheader.i_crit_edge

for.inc29.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond8.preheader.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ses_get_page2_descriptor.exit:                    ; preds = %if.end23.i
  %tobool.not = icmp eq ptr %add.ptr13.i, null
  br i1 %tobool.not, label %ses_get_page2_descriptor.exit.cleanup_crit_edge, label %if.end3

ses_get_page2_descriptor.exit.cleanup_crit_edge:  ; preds = %ses_get_page2_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %ses_get_page2_descriptor.exit
  %24 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr13.i, align 1
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %desc, align 4
  store i8 0, ptr %desc, align 4
  %type.i = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 3
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i21 = icmp eq i32 %28, 1
  br i1 %cmp.i21, label %if.then.i, label %if.end3.init_device_slot_control.exit_crit_edge

if.end3.init_device_slot_control.exit_crit_edge:  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %init_device_slot_control.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %0, align 1
  br label %init_device_slot_control.exit

init_device_slot_control.exit:                    ; preds = %if.then.i, %if.end3.init_device_slot_control.exit_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 2
  %32 = and i8 %31, -34
  store i8 %32, ptr %1, align 2
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %35 = and i8 %34, 60
  store i8 %35, ptr %2, align 1
  %36 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %val, label %init_device_slot_control.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

init_device_slot_control.exit.cleanup_crit_edge:  ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 1
  %39 = or i8 %38, 16
  br label %sw.epilog

sw.bb5:                                           ; preds = %init_device_slot_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 1
  %42 = and i8 %41, -17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %storemerge = phi i8 [ %42, %sw.bb5 ], [ %39, %sw.bb ]
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge, ptr %2, align 1
  %power_status = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 10
  %44 = ptrtoint ptr %power_status to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %val, ptr %power_status, align 8
  %call10 = call fastcc i32 @ses_set_page2_descriptor(ptr noundef %edev, ptr noundef %ecomp, ptr noundef nonnull %desc)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %init_device_slot_control.exit.cleanup_crit_edge, %ses_get_page2_descriptor.exit.cleanup_crit_edge, %for.inc29.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -5, %ses_get_page2_descriptor.exit.cleanup_crit_edge ], [ -22, %init_device_slot_control.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %for.inc29.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ses_show_id(ptr nocapture noundef readonly %edev, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 12
  %4 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %add.ptr1, align 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i64 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ses_set_page2_descriptor(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %ecomp, ptr nocapture noundef readonly %desc) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [6 x i8], align 1
  %sshdr.i = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.enclosure_component, ptr %ecomp, i32 0, i32 4
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 8
  %parent = getelementptr inbounds %struct.enclosure_device, ptr %edev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edev, align 8
  %page1_types = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %page1_types to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page1_types, align 4
  %page2 = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page2, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 8
  %page2_len = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %page2_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %page2_len, align 4
  %conv = sext i16 %11 to i32
  %sub = add nsw i32 %conv, -8
  %12 = call ptr @memset(ptr %add.ptr2, i32 0, i32 %sub)
  %page1_num_types = getelementptr inbounds %struct.ses_device, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %page1_num_types to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %page1_num_types, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp59 = icmp sgt i16 %14, 0
  br i1 %cmp59, label %entry.for.cond5.preheader_crit_edge, label %entry.for.end33_crit_edge

entry.for.end33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc30.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %desc_ptr.064 = phi ptr [ %desc_ptr.1.lcssa, %for.inc30.for.cond5.preheader_crit_edge ], [ %add.ptr2, %entry.for.cond5.preheader_crit_edge ]
  %type_ptr.062 = phi ptr [ %add.ptr32, %for.inc30.for.cond5.preheader_crit_edge ], [ %7, %entry.for.cond5.preheader_crit_edge ]
  %i.061 = phi i32 [ %inc31, %for.inc30.for.cond5.preheader_crit_edge ], [ 0, %entry.for.cond5.preheader_crit_edge ]
  %count.060 = phi i32 [ %count.1.lcssa, %for.inc30.for.cond5.preheader_crit_edge ], [ 0, %entry.for.cond5.preheader_crit_edge ]
  %arrayidx = getelementptr i8, ptr %type_ptr.062, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp753.not = icmp eq i8 %16, 0
  br i1 %cmp753.not, label %for.cond5.preheader.for.inc30_crit_edge, label %for.cond5.preheader.for.body9_crit_edge

for.cond5.preheader.for.body9_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body9

for.cond5.preheader.for.inc30_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.cond5.preheader.for.body9_crit_edge
  %desc_ptr.156 = phi ptr [ %add.ptr10, %for.inc.for.body9_crit_edge ], [ %desc_ptr.064, %for.cond5.preheader.for.body9_crit_edge ]
  %j.055 = phi i32 [ %inc29, %for.inc.for.body9_crit_edge ], [ 0, %for.cond5.preheader.for.body9_crit_edge ]
  %count.154 = phi i32 [ %count.2, %for.inc.for.body9_crit_edge ], [ %count.060, %for.cond5.preheader.for.body9_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %desc_ptr.156, i32 4
  %17 = ptrtoint ptr %type_ptr.062 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type_ptr.062, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %18, label %for.body9.for.inc_crit_edge [
    i8 1, label %for.body9.if.end_crit_edge
    i8 23, label %for.body9.if.end_crit_edge65
  ]

for.body9.if.end_crit_edge65:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body9.if.end_crit_edge:                       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body9.if.end_crit_edge, %for.body9.if.end_crit_edge65
  %inc = add i32 %count.154, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.154, i32 %1)
  %cmp19 = icmp eq i32 %count.154, %1
  br i1 %cmp19, label %if.then21, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %desc, align 1
  %22 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %add.ptr10, align 1
  %23 = lshr i32 %21, 24
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 112
  %26 = or i8 %25, -128
  store i8 %26, ptr %add.ptr10, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.end.for.inc_crit_edge, %for.body9.for.inc_crit_edge
  %count.2 = phi i32 [ %inc, %if.then21 ], [ %inc, %if.end.for.inc_crit_edge ], [ %count.154, %for.body9.for.inc_crit_edge ]
  %inc29 = add nuw nsw i32 %j.055, 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %28 to i32
  %cmp7 = icmp ult i32 %inc29, %conv6
  br i1 %cmp7, label %for.inc.for.body9_crit_edge, label %for.inc.for.inc30_crit_edge

for.inc.for.inc30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc30:                                        ; preds = %for.inc.for.inc30_crit_edge, %for.cond5.preheader.for.inc30_crit_edge
  %count.1.lcssa = phi i32 [ %count.060, %for.cond5.preheader.for.inc30_crit_edge ], [ %count.2, %for.inc.for.inc30_crit_edge ]
  %desc_ptr.1.lcssa = phi ptr [ %desc_ptr.064, %for.cond5.preheader.for.inc30_crit_edge ], [ %add.ptr10, %for.inc.for.inc30_crit_edge ]
  %inc31 = add nuw nsw i32 %i.061, 1
  %add.ptr32 = getelementptr i8, ptr %type_ptr.062, i32 4
  %29 = ptrtoint ptr %page1_num_types to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %page1_num_types, align 2
  %conv3 = sext i16 %30 to i32
  %cmp = icmp slt i32 %inc31, %conv3
  br i1 %cmp, label %for.inc30.for.cond5.preheader_crit_edge, label %for.inc30.for.end33_crit_edge

for.inc30.for.end33_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.inc30.for.cond5.preheader_crit_edge:          ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond5.preheader

for.end33:                                        ; preds = %for.inc30.for.end33_crit_edge, %entry.for.end33_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 -408
  %31 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page2, align 4
  %33 = ptrtoint ptr %page2_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %page2_len, align 4
  %conv36 = sext i16 %34 to i32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd.i) #10
  %35 = getelementptr inbounds [6 x i8], ptr %cmd.i, i32 0, i32 1
  %36 = getelementptr inbounds [6 x i8], ptr %cmd.i, i32 0, i32 2
  %37 = getelementptr inbounds [6 x i8], ptr %cmd.i, i32 0, i32 3
  %38 = getelementptr inbounds [6 x i8], ptr %cmd.i, i32 0, i32 4
  %39 = getelementptr inbounds [6 x i8], ptr %cmd.i, i32 0, i32 5
  %40 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 29, ptr %cmd.i, align 1
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %35, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %36, align 1
  %43 = lshr i16 %34, 8
  %conv.i = trunc i16 %43 to i8
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i, ptr %37, align 1
  %conv4.i = trunc i16 %34 to i8
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv4.i, ptr %38, align 1
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr.i) #10
  %47 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 1
  %48 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr.i, i32 0, i32 2
  %49 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 -1, ptr %sshdr.i, align 8
  %call.i5.i = call i32 @__scsi_execute(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i, i32 noundef 1, ptr noundef %32, i32 noundef %conv36, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp6.i = icmp sgt i32 %call.i5.i, 0
  br i1 %cmp6.i, label %land.lhs.true.preheader.i, label %for.end33.do.end.i_crit_edge

for.end33.do.end.i_crit_edge:                     ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.preheader.i:                        ; preds = %for.end33
  %50 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sshdr.i, align 8
  %52 = and i8 %51, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %52)
  %cmp.i.i = icmp eq i8 %52, 112
  br i1 %cmp.i.i, label %land.rhs.i, label %land.lhs.true.preheader.i.if.then.i_crit_edge

land.lhs.true.preheader.i.if.then.i_crit_edge:    ; preds = %land.lhs.true.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.rhs.i:                                       ; preds = %land.lhs.true.preheader.i
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %47, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %54, label %land.rhs.i.if.then.i_crit_edge [
    i8 2, label %land.rhs.i.do.body.backedge.i_crit_edge
    i8 6, label %land.rhs17.i
  ]

land.rhs.i.do.body.backedge.i_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.rhs17.i:                                     ; preds = %land.rhs.i
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %48, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %57)
  %cmp19.i = icmp eq i8 %57, 41
  br i1 %cmp19.i, label %land.rhs17.i.do.body.backedge.i_crit_edge, label %land.rhs17.i.if.then.i_crit_edge

land.rhs17.i.if.then.i_crit_edge:                 ; preds = %land.rhs17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.rhs17.i.do.body.backedge.i_crit_edge:        ; preds = %land.rhs17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %land.rhs17.i.do.body.backedge.i_crit_edge, %land.rhs.i.do.body.backedge.i_crit_edge
  %call.i.i = call i32 @__scsi_execute(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i, i32 noundef 1, ptr noundef %32, i32 noundef %conv36, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i, label %land.lhs.true.1.i, label %do.body.backedge.i.do.end.i_crit_edge

do.body.backedge.i.do.end.i_crit_edge:            ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.1.i:                                ; preds = %do.body.backedge.i
  %58 = ptrtoint ptr %sshdr.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sshdr.i, align 8
  %60 = and i8 %59, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %60)
  %cmp.i.1.i = icmp eq i8 %60, 112
  br i1 %cmp.i.1.i, label %land.rhs.1.i, label %land.lhs.true.1.i.if.then.i_crit_edge

land.lhs.true.1.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.rhs.1.i:                                     ; preds = %land.lhs.true.1.i
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %47, align 1
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %62, label %land.rhs.1.i.if.then.i_crit_edge [
    i8 2, label %land.rhs.1.i.do.body.backedge.1.i_crit_edge
    i8 6, label %land.rhs17.1.i
  ]

land.rhs.1.i.do.body.backedge.1.i_crit_edge:      ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.1.i

land.rhs.1.i.if.then.i_crit_edge:                 ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.rhs17.1.i:                                   ; preds = %land.rhs.1.i
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %48, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %65)
  %cmp19.1.i = icmp eq i8 %65, 41
  br i1 %cmp19.1.i, label %land.rhs17.1.i.do.body.backedge.1.i_crit_edge, label %land.rhs17.1.i.if.then.i_crit_edge

land.rhs17.1.i.if.then.i_crit_edge:               ; preds = %land.rhs17.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.rhs17.1.i.do.body.backedge.1.i_crit_edge:    ; preds = %land.rhs17.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.backedge.1.i

do.body.backedge.1.i:                             ; preds = %land.rhs17.1.i.do.body.backedge.1.i_crit_edge, %land.rhs.1.i.do.body.backedge.1.i_crit_edge
  %call.i.1.i = call i32 @__scsi_execute(ptr noundef %add.ptr, ptr noundef nonnull %cmd.i, i32 noundef 1, ptr noundef %32, i32 noundef %conv36, ptr noundef null, ptr noundef nonnull %sshdr.i, i32 noundef 3000, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.1.i = icmp sgt i32 %call.i.1.i, 0
  br i1 %cmp.1.i, label %do.body.backedge.1.i.if.then.i_crit_edge, label %do.body.backedge.1.i.do.end.i_crit_edge

do.body.backedge.1.i.do.end.i_crit_edge:          ; preds = %do.body.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.body.backedge.1.i.if.then.i_crit_edge:         ; preds = %do.body.backedge.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end.i:                                         ; preds = %do.body.backedge.1.i.do.end.i_crit_edge, %do.body.backedge.i.do.end.i_crit_edge, %for.end33.do.end.i_crit_edge
  %call.i.lcssa.i = phi i32 [ %call.i5.i, %for.end33.do.end.i_crit_edge ], [ %call.i.i, %do.body.backedge.i.do.end.i_crit_edge ], [ %call.i.1.i, %do.body.backedge.1.i.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i)
  %tobool22.not.i = icmp eq i32 %call.i.lcssa.i, 0
  br i1 %tobool22.not.i, label %do.end.i.ses_send_diag.exit_crit_edge, label %do.end.i.if.then.i_crit_edge

do.end.i.if.then.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end.i.ses_send_diag.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ses_send_diag.exit

if.then.i:                                        ; preds = %do.end.i.if.then.i_crit_edge, %do.body.backedge.1.i.if.then.i_crit_edge, %land.rhs17.1.i.if.then.i_crit_edge, %land.rhs.1.i.if.then.i_crit_edge, %land.lhs.true.1.i.if.then.i_crit_edge, %land.rhs17.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge, %land.lhs.true.preheader.i.if.then.i_crit_edge
  %call.i3.i = phi i32 [ %call.i.lcssa.i, %do.end.i.if.then.i_crit_edge ], [ %call.i5.i, %land.rhs.i.if.then.i_crit_edge ], [ %call.i5.i, %land.lhs.true.preheader.i.if.then.i_crit_edge ], [ %call.i5.i, %land.rhs17.i.if.then.i_crit_edge ], [ %call.i.i, %land.lhs.true.1.i.if.then.i_crit_edge ], [ %call.i.i, %land.rhs.1.i.if.then.i_crit_edge ], [ %call.i.i, %land.rhs17.1.i.if.then.i_crit_edge ], [ %call.i.1.i, %do.body.backedge.1.i.if.then.i_crit_edge ]
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef %call.i3.i) #10
  br label %ses_send_diag.exit

ses_send_diag.exit:                               ; preds = %if.then.i, %do.end.i.ses_send_diag.exit_crit_edge
  %call.i4.i = phi i32 [ %call.i3.i, %if.then.i ], [ 0, %do.end.i.ses_send_diag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr.i) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i) #10
  ret i32 %call.i4.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enclosure_component_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enclosure_component_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enclosure_remove_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enclosure_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ses__281_886_ses_init6, !1, !"__initcall__kmod_ses__281_886_ses_init6", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ses.c", i32 886, i32 1}
!2 = !{ptr @__exitcall_ses_exit, !3, !"__exitcall_ses_exit", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ses.c", i32 887, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias282, !5, !"__UNIQUE_ID_alias282", i1 false, i1 false}
!5 = !{!"../drivers/scsi/ses.c", i32 889, i32 1}
!6 = !{ptr @__UNIQUE_ID_author283, !7, !"__UNIQUE_ID_author283", i1 false, i1 false}
!7 = !{!"../drivers/scsi/ses.c", i32 891, i32 1}
!8 = !{ptr @__UNIQUE_ID_description284, !9, !"__UNIQUE_ID_description284", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ses.c", i32 892, i32 1}
!10 = !{ptr @__UNIQUE_ID_file285, !11, !"__UNIQUE_ID_file285", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ses.c", i32 893, i32 1}
!12 = !{ptr @__UNIQUE_ID_license286, !11, !"__UNIQUE_ID_license286", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/ses.c", i32 854, i32 12}
!15 = !{ptr @ses_template, !16, !"ses_template", i1 false, i1 false}
!16 = !{!"../drivers/scsi/ses.c", i32 852, i32 27}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/ses.c", i32 54, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ses_interface, !21, !"ses_interface", i1 false, i1 false}
!21 = !{!"../drivers/scsi/ses.c", i32 847, i32 31}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/ses.c", i32 664, i32 3}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/ses.c", i32 778, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ses.c", i32 790, i32 2}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/ses.c", i32 111, i32 2}
!31 = !{ptr @ses_enclosure_callbacks, !32, !"ses_enclosure_callbacks", i1 false, i1 false}
!32 = !{!"../drivers/scsi/ses.c", i32 400, i32 45}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/ses.c", i32 142, i32 3}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/ses.c", i32 350, i32 22}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
