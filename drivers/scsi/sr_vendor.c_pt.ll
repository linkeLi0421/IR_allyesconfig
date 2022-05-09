; ModuleID = '/llk/IR_all_yes/drivers/scsi/sr_vendor.c_pt.bc'
source_filename = "../drivers/scsi/sr_vendor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_cd = type { ptr, i32, ptr, i32, i32, i8, i32, i8, %struct.cdrom_device_info, %struct.mutex, %struct.kref, ptr }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.ccs_modesel_head = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM DRIVE:25\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM DRIVE:36\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CD-ROM DRIVE:83\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD-ROM DRIVE:84 \00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TOSHIBA\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Beurer\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Gluco Memory\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Hmm, seems the drive doesn't support multisession CD's\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Hmm, seems the cdrom doesn't support multisession CD's\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No finished session\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unknown vendor code (%i), not initialized ?\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 176]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 82, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 84, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 85, i32 23 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 86, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 87, i32 23 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 97, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 100, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 101, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 207, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 234, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 292, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [28 x i8] c"../drivers/scsi/sr_vendor.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 315, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sr_vendor_init(ptr nocapture noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %vendor1 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %vendor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor1, align 4
  %model3 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %model3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model3, align 8
  %vendor4 = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 3
  %6 = ptrtoint ptr %vendor4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %vendor4, align 4
  %readcd_known = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 5
  %7 = ptrtoint ptr %readcd_known to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %readcd_known, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp = icmp eq i8 %10, 4
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %vendor4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %vendor4, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(4) @.str, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.else24

if.then10:                                        ; preds = %if.else
  %12 = ptrtoint ptr %vendor4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %vendor4, align 4
  %call12 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(16) @.str.1, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.if.then22_crit_edge, label %lor.lhs.false

if.then10.if.then22_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.then10
  %call14 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(16) @.str.2, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false16

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %call17 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(16) @.str.3, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false16.if.then22_crit_edge, label %lor.lhs.false19

lor.lhs.false16.if.then22_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %call20 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(17) @.str.4, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %lor.lhs.false19.if.then22_crit_edge, label %lor.lhs.false19.cleanup_crit_edge

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false19.if.then22_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false19.if.then22_crit_edge, %lor.lhs.false16.if.then22_crit_edge, %lor.lhs.false.if.then22_crit_edge, %if.then10.if.then22_crit_edge
  %mask = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 8, i32 4
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %or = or i32 %14, 32
  store i32 %or, ptr %mask, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %call25 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(8) @.str.5, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %vendor4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %vendor4, align 4
  br label %cleanup

if.else29:                                        ; preds = %if.else24
  %call30 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(7) @.str.6, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.else29.cleanup_crit_edge

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else29
  %call32 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(13) @.str.7, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %vendor4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %vendor4, align 4
  %mask37 = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %mask37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask37, align 4
  %or38 = or i32 %18, 4391
  store i32 %or38, ptr %mask37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %land.lhs.true.cleanup_crit_edge, %if.else29.cleanup_crit_edge, %if.then27, %if.then22, %lor.lhs.false19.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_set_blocklength(ptr noundef %cd, i32 noundef %blocklength) local_unnamed_addr #3 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #7
  %vendor = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 3
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 512) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %blocklength)
  %cmp1 = icmp sgt i32 %blocklength, 2048
  %phi.cast = select i1 %cmp1, i8 -127, i8 -125
  %density.0 = select i1 %cmp, i8 %phi.cast, i8 0
  %3 = call ptr @memset(ptr %cgc, i32 0, i32 44)
  %4 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %cgc, align 4
  %arrayidx5 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 12, ptr %arrayidx7, align 4
  %7 = call ptr @memset(ptr %call7.i, i32 0, i32 12)
  %block_desc_length = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i, i32 0, i32 3
  %8 = ptrtoint ptr %block_desc_length to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %block_desc_length, align 1
  %density8 = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %density8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %density.0, ptr %density8, align 4
  %10 = lshr i32 %blocklength, 8
  %conv9 = trunc i32 %10 to i8
  %block_length_med = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i, i32 0, i32 10
  %11 = ptrtoint ptr %block_length_med to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv9, ptr %block_length_med, align 2
  %conv11 = trunc i32 %blocklength to i8
  %block_length_lo = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i, i32 0, i32 11
  %12 = ptrtoint ptr %block_length_lo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %block_length_lo, align 1
  %buffer12 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %13 = ptrtoint ptr %buffer12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %buffer12, align 4
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %14 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %buflen, align 4
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %15 = ptrtoint ptr %data_direction to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %data_direction, align 4
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3000, ptr %timeout, align 4
  %call13 = call i32 @sr_do_ioctl(ptr noundef %cd, ptr noundef nonnull %cgc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end3.if.end17_crit_edge

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 2
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 8
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %blocklength, ptr %sector_size, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end3.if.end17_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_do_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_cd_check(ptr noundef %cdi) local_unnamed_addr #3 align 64 {
entry:
  %cgc.i375 = alloca %struct.packet_command, align 4
  %cgc.i = alloca %struct.packet_command, align 4
  %cgc = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #7
  %mask = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup290_crit_edge

entry.cleanup290_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 512) #10
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup290_crit_edge, label %if.end4

if.end.cleanup290_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup290

if.end4:                                          ; preds = %if.end
  %5 = call ptr @memset(ptr %cgc, i32 0, i32 44)
  %vendor = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vendor, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb41
    i32 3, label %sw.bb118
    i32 4, label %sw.bb201
  ]

sw.bb:                                            ; preds = %if.end4
  %9 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 67, ptr %cgc, align 4
  %arrayidx6 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 9
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %arrayidx8, align 1
  %buffer9 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %12 = ptrtoint ptr %buffer9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %buffer9, align 4
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %13 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %buflen, align 4
  %quiet = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %14 = ptrtoint ptr %quiet to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %quiet, align 4
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %15 = ptrtoint ptr %data_direction to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %data_direction, align 4
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3000, ptr %timeout, align 4
  %call10 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 1
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %20 to i32
  %add = or i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add)
  %cmp16 = icmp ult i32 %add, 10
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %name = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %22, ptr noundef %name, ptr noundef nonnull @.str.9) #7
  br label %sw.epilog

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx21 = getelementptr i8, ptr %call7.i, i32 11
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %24 to i32
  %arrayidx23 = getelementptr i8, ptr %call7.i, i32 10
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23, align 2
  %conv24 = zext i8 %26 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %add26 = or i32 %shl25, %conv22
  %arrayidx27 = getelementptr i8, ptr %call7.i, i32 9
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %28 to i32
  %shl29 = shl nuw nsw i32 %conv28, 16
  %add30 = or i32 %add26, %shl29
  %arrayidx31 = getelementptr i8, ptr %call7.i, i32 8
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx31, align 8
  %conv32 = zext i8 %30 to i32
  %shl33 = shl nuw i32 %conv32, 24
  %add34 = or i32 %add30, %shl33
  %arrayidx35 = getelementptr i8, ptr %call7.i, i32 6
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp37 = icmp ult i8 %32, 2
  %spec.store.select = select i1 %cmp37, i32 0, i32 %add34
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end4
  %33 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -34, ptr %cgc, align 4
  %arrayidx45 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %arrayidx45, align 1
  %arrayidx47 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -80, ptr %arrayidx47, align 2
  %buffer48 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %36 = ptrtoint ptr %buffer48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i, ptr %buffer48, align 4
  %buflen49 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %37 = ptrtoint ptr %buflen49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 22, ptr %buflen49, align 4
  %quiet50 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %38 = ptrtoint ptr %quiet50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %quiet50, align 4
  %data_direction51 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %39 = ptrtoint ptr %data_direction51 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %data_direction51, align 4
  %timeout52 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %40 = ptrtoint ptr %timeout52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3000, ptr %timeout52, align 4
  %call53 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end57, label %sw.bb41.sw.epilog_crit_edge

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end57:                                         ; preds = %sw.bb41
  %arrayidx58 = getelementptr i8, ptr %call7.i, i32 14
  %41 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx58, align 2
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %42, label %if.then66 [
    i8 0, label %if.end57.cond.false_crit_edge
    i8 -80, label %if.end57.cond.false_crit_edge400
  ]

if.end57.cond.false_crit_edge400:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

if.end57.cond.false_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %device67 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %device67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device67, align 8
  %name69 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %45, ptr noundef %name69, ptr noundef nonnull @.str.10) #7
  br label %sw.epilog

cond.false:                                       ; preds = %if.end57.cond.false_crit_edge, %if.end57.cond.false_crit_edge400
  %arrayidx72 = getelementptr i8, ptr %call7.i, i32 15
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx72, align 1
  %call80 = call i32 @_bcd2bin(i8 noundef zeroext %47) #11
  %arrayidx81 = getelementptr i8, ptr %call7.i, i32 16
  %48 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx81, align 8
  %call93 = call i32 @_bcd2bin(i8 noundef zeroext %49) #11
  %arrayidx96 = getelementptr i8, ptr %call7.i, i32 17
  %50 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx96, align 1
  %call108 = call i32 @_bcd2bin(i8 noundef zeroext %51) #11
  %mul112 = mul i32 %call80, 4500
  %mul113 = mul i32 %call93, 75
  %add114 = add i32 %mul113, %mul112
  %add115 = add i32 %add114, %call108
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end4
  %52 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -57, ptr %cgc, align 4
  %arrayidx125 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %arrayidx125, align 1
  %buffer126 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %54 = ptrtoint ptr %buffer126 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i, ptr %buffer126, align 4
  %buflen127 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %55 = ptrtoint ptr %buflen127 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %buflen127, align 4
  %quiet128 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %56 = ptrtoint ptr %quiet128 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %quiet128, align 4
  %data_direction129 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %57 = ptrtoint ptr %data_direction129 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %data_direction129, align 4
  %timeout130 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %58 = ptrtoint ptr %timeout130 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3000, ptr %timeout130, align 4
  %call131 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc) #7
  %59 = zext i32 %call131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call131, label %sw.bb118.sw.epilog_crit_edge [
    i32 -22, label %if.then134
    i32 0, label %cond.false154
  ]

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then134:                                       ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #9
  %device135 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %device135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device135, align 8
  %name137 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.8, ptr noundef %61, ptr noundef %name137, ptr noundef nonnull @.str.9) #7
  br label %sw.epilog

cond.false154:                                    ; preds = %sw.bb118
  %arrayidx144 = getelementptr i8, ptr %call7.i, i32 1
  %62 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx144, align 1
  %call156 = call i32 @_bcd2bin(i8 noundef zeroext %63) #11
  %arrayidx159 = getelementptr i8, ptr %call7.i, i32 2
  %64 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx159, align 2
  %call171 = call i32 @_bcd2bin(i8 noundef zeroext %65) #11
  %arrayidx174 = getelementptr i8, ptr %call7.i, i32 3
  %66 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx174, align 1
  %call186 = call i32 @_bcd2bin(i8 noundef zeroext %67) #11
  %mul190 = mul i32 %call156, 4500
  %mul191 = mul i32 %call171, 75
  %add192 = add i32 %mul191, %mul190
  %add193 = add i32 %add192, %call186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add193)
  %tobool194.not = icmp eq i32 %add193, 0
  %sub = add i32 %add193, -150
  %spec.select = select i1 %tobool194.not, i32 0, i32 %sub
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #7
  %68 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vendor, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 512) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %cond.false154.sr_set_blocklength.exit_crit_edge, label %if.end3.i

cond.false154.sr_set_blocklength.exit_crit_edge:  ; preds = %cond.false154
  call void @__sanitizer_cov_trace_pc() #9
  br label %sr_set_blocklength.exit

if.end3.i:                                        ; preds = %cond.false154
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp.i = icmp eq i32 %69, 3
  %density.0.i = select i1 %cmp.i, i8 -125, i8 0
  %71 = call ptr @memset(ptr %cgc.i, i32 0, i32 44)
  %72 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 21, ptr %cgc.i, align 4
  %arrayidx5.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 16, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 4
  %74 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 12, ptr %arrayidx7.i, align 4
  %75 = call ptr @memset(ptr %call7.i.i, i32 0, i32 12)
  %block_desc_length.i = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i.i, i32 0, i32 3
  %76 = ptrtoint ptr %block_desc_length.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 8, ptr %block_desc_length.i, align 1
  %density8.i = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %density8.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %density.0.i, ptr %density8.i, align 4
  %block_length_med.i = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i.i, i32 0, i32 10
  %78 = ptrtoint ptr %block_length_med.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 8, ptr %block_length_med.i, align 2
  %buffer12.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 1
  %79 = ptrtoint ptr %buffer12.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %buffer12.i, align 4
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 2
  %80 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 12, ptr %buflen.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 5
  %81 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %data_direction.i, align 4
  %timeout.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 7
  %82 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3000, ptr %timeout.i, align 4
  %call13.i = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.end3.i.if.end17.i_crit_edge

if.end3.i.if.end17.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %device.i = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 8
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %84, i32 0, i32 20
  %85 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2048, ptr %sector_size.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end3.i.if.end17.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %sr_set_blocklength.exit

sr_set_blocklength.exit:                          ; preds = %if.end17.i, %cond.false154.sr_set_blocklength.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #7
  br label %sw.epilog

sw.bb201:                                         ; preds = %if.end4
  %86 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 67, ptr %cgc, align 4
  %arrayidx205 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %87 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 4, ptr %arrayidx205, align 4
  %arrayidx207 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 9
  %88 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 64, ptr %arrayidx207, align 1
  %buffer208 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %89 = ptrtoint ptr %buffer208 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i, ptr %buffer208, align 4
  %buflen209 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %90 = ptrtoint ptr %buflen209 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %buflen209, align 4
  %quiet210 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %91 = ptrtoint ptr %quiet210 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %quiet210, align 4
  %data_direction211 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %92 = ptrtoint ptr %data_direction211 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %data_direction211, align 4
  %timeout212 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %93 = ptrtoint ptr %timeout212 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 3000, ptr %timeout212, align 4
  %call213 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp214.not = icmp eq i32 %call213, 0
  br i1 %cmp214.not, label %if.end217, label %sw.bb201.sw.epilog_crit_edge

sw.bb201.sw.epilog_crit_edge:                     ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end217:                                        ; preds = %sw.bb201
  %arrayidx218 = getelementptr i8, ptr %call7.i, i32 2
  %94 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx218, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp220 = icmp eq i8 %95, 0
  br i1 %cmp220, label %if.then222, label %if.end227

if.then222:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #9
  %device223 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %device223 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device223, align 8
  %name225 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %97, ptr noundef %name225, ptr noundef nonnull @.str.12) #7
  br label %sw.epilog

if.end227:                                        ; preds = %if.end217
  %98 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 67, ptr %cgc, align 4
  %99 = and i8 %95, 127
  %arrayidx233 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 6
  %100 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx233, align 2
  %101 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 12, ptr %arrayidx205, align 4
  %102 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 64, ptr %arrayidx207, align 1
  %103 = ptrtoint ptr %buffer208 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i, ptr %buffer208, align 4
  %104 = ptrtoint ptr %buflen209 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 12, ptr %buflen209, align 4
  %105 = ptrtoint ptr %quiet210 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %quiet210, align 4
  %106 = ptrtoint ptr %data_direction211 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 2, ptr %data_direction211, align 4
  %107 = ptrtoint ptr %timeout212 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3000, ptr %timeout212, align 4
  %call243 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp244.not = icmp eq i32 %call243, 0
  br i1 %cmp244.not, label %if.end247, label %if.end227.sw.epilog_crit_edge

if.end227.sw.epilog_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end247:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx248 = getelementptr i8, ptr %call7.i, i32 11
  %108 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %109 to i32
  %arrayidx250 = getelementptr i8, ptr %call7.i, i32 10
  %110 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx250, align 2
  %conv251 = zext i8 %111 to i32
  %shl252 = shl nuw nsw i32 %conv251, 8
  %add253 = or i32 %shl252, %conv249
  %arrayidx254 = getelementptr i8, ptr %call7.i, i32 9
  %112 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %113 to i32
  %shl256 = shl nuw nsw i32 %conv255, 16
  %add257 = or i32 %add253, %shl256
  %arrayidx258 = getelementptr i8, ptr %call7.i, i32 8
  %114 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx258, align 8
  %conv259 = zext i8 %115 to i32
  %shl260 = shl nuw i32 %conv259, 24
  %add261 = or i32 %add257, %shl260
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %device262 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %116 = ptrtoint ptr %device262 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device262, align 8
  %name264 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 8, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %117, ptr noundef %name264, ptr noundef nonnull @.str.13, i32 noundef %7) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end247, %if.end227.sw.epilog_crit_edge, %if.then222, %sw.bb201.sw.epilog_crit_edge, %sr_set_blocklength.exit, %if.then134, %sw.bb118.sw.epilog_crit_edge, %cond.false, %if.then66, %sw.bb41.sw.epilog_crit_edge, %if.end20, %if.then18, %sw.bb.sw.epilog_crit_edge
  %sector.3 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb201.sw.epilog_crit_edge ], [ 0, %if.then222 ], [ 0, %if.end227.sw.epilog_crit_edge ], [ %add261, %if.end247 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then18 ], [ %spec.store.select, %if.end20 ], [ 0, %if.then66 ], [ %add115, %cond.false ], [ 0, %sw.bb41.sw.epilog_crit_edge ], [ 0, %if.then134 ], [ %spec.select, %sr_set_blocklength.exit ], [ 0, %sw.bb118.sw.epilog_crit_edge ]
  %rc.0 = phi i32 [ 0, %sw.default ], [ %call213, %sw.bb201.sw.epilog_crit_edge ], [ 0, %if.then222 ], [ %call243, %if.end227.sw.epilog_crit_edge ], [ 0, %if.end247 ], [ %call10, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end20 ], [ 0, %if.then66 ], [ 0, %cond.false ], [ %call53, %sw.bb41.sw.epilog_crit_edge ], [ -22, %if.then134 ], [ 0, %sr_set_blocklength.exit ], [ %call131, %sw.bb118.sw.epilog_crit_edge ]
  %tobool286.not = phi i1 [ false, %sw.default ], [ true, %sw.bb201.sw.epilog_crit_edge ], [ true, %if.then222 ], [ true, %if.end227.sw.epilog_crit_edge ], [ true, %if.end247 ], [ true, %sw.bb.sw.epilog_crit_edge ], [ false, %if.then18 ], [ true, %if.end20 ], [ false, %if.then66 ], [ true, %cond.false ], [ true, %sw.bb41.sw.epilog_crit_edge ], [ false, %if.then134 ], [ true, %sr_set_blocklength.exit ], [ true, %sw.bb118.sw.epilog_crit_edge ]
  %ms_offset = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 4
  %118 = ptrtoint ptr %ms_offset to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sector.3, ptr %ms_offset, align 8
  %xa_flag = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 5
  %119 = ptrtoint ptr %xa_flag to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load = load i8, ptr %xa_flag, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %xa_flag, align 4
  %call267 = call i32 @sr_disk_status(ptr noundef %cdi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call267)
  %cmp268.not = icmp eq i32 %call267, 100
  br i1 %cmp268.not, label %sw.epilog.if.end279_crit_edge, label %land.lhs.true270

sw.epilog.if.end279_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end279

land.lhs.true270:                                 ; preds = %sw.epilog
  %call271 = call i32 @sr_is_xa(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call271)
  %cmp272 = icmp eq i32 %call271, 1
  br i1 %cmp272, label %if.then274, label %land.lhs.true270.if.end279_crit_edge

land.lhs.true270.if.end279_crit_edge:             ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end279

if.then274:                                       ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %xa_flag to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load276 = load i8, ptr %xa_flag, align 4
  %bf.set278 = or i8 %bf.load276, 32
  store i8 %bf.set278, ptr %xa_flag, align 4
  br label %if.end279

if.end279:                                        ; preds = %if.then274, %land.lhs.true270.if.end279_crit_edge, %sw.epilog.if.end279_crit_edge
  %device280 = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %121 = ptrtoint ptr %device280 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %device280, align 8
  %sector_size = getelementptr inbounds %struct.scsi_device, ptr %122, i32 0, i32 20
  %123 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sector_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %124)
  %cmp281.not = icmp eq i32 %124, 2048
  br i1 %cmp281.not, label %if.end279.if.end285_crit_edge, label %if.then283

if.end279.if.end285_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end285

if.then283:                                       ; preds = %if.end279
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i375) #7
  %125 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vendor, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i377 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3264, i32 noundef 512) #10
  %tobool.not.i378 = icmp eq ptr %call7.i.i377, null
  br i1 %tobool.not.i378, label %if.then283.sr_set_blocklength.exit399_crit_edge, label %if.end3.i393

if.then283.sr_set_blocklength.exit399_crit_edge:  ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #9
  br label %sr_set_blocklength.exit399

if.end3.i393:                                     ; preds = %if.then283
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp.i379 = icmp eq i32 %126, 3
  %density.0.i380 = select i1 %cmp.i379, i8 -125, i8 0
  %128 = call ptr @memset(ptr %cgc.i375, i32 0, i32 44)
  %129 = ptrtoint ptr %cgc.i375 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 21, ptr %cgc.i375, align 4
  %arrayidx5.i381 = getelementptr inbounds [12 x i8], ptr %cgc.i375, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx5.i381 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 16, ptr %arrayidx5.i381, align 1
  %arrayidx7.i382 = getelementptr inbounds [12 x i8], ptr %cgc.i375, i32 0, i32 4
  %131 = ptrtoint ptr %arrayidx7.i382 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 12, ptr %arrayidx7.i382, align 4
  %132 = call ptr @memset(ptr %call7.i.i377, i32 0, i32 12)
  %block_desc_length.i383 = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i.i377, i32 0, i32 3
  %133 = ptrtoint ptr %block_desc_length.i383 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 8, ptr %block_desc_length.i383, align 1
  %density8.i384 = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i.i377, i32 0, i32 4
  %134 = ptrtoint ptr %density8.i384 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %density.0.i380, ptr %density8.i384, align 4
  %block_length_med.i385 = getelementptr inbounds %struct.ccs_modesel_head, ptr %call7.i.i377, i32 0, i32 10
  %135 = ptrtoint ptr %block_length_med.i385 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 8, ptr %block_length_med.i385, align 2
  %buffer12.i387 = getelementptr inbounds %struct.packet_command, ptr %cgc.i375, i32 0, i32 1
  %136 = ptrtoint ptr %buffer12.i387 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i377, ptr %buffer12.i387, align 4
  %buflen.i388 = getelementptr inbounds %struct.packet_command, ptr %cgc.i375, i32 0, i32 2
  %137 = ptrtoint ptr %buflen.i388 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 12, ptr %buflen.i388, align 4
  %data_direction.i389 = getelementptr inbounds %struct.packet_command, ptr %cgc.i375, i32 0, i32 5
  %138 = ptrtoint ptr %data_direction.i389 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %data_direction.i389, align 4
  %timeout.i390 = getelementptr inbounds %struct.packet_command, ptr %cgc.i375, i32 0, i32 7
  %139 = ptrtoint ptr %timeout.i390 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 3000, ptr %timeout.i390, align 4
  %call13.i391 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc.i375) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i391)
  %cmp14.i392 = icmp eq i32 %call13.i391, 0
  br i1 %cmp14.i392, label %if.then16.i396, label %if.end3.i393.if.end17.i397_crit_edge

if.end3.i393.if.end17.i397_crit_edge:             ; preds = %if.end3.i393
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i397

if.then16.i396:                                   ; preds = %if.end3.i393
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %device280 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device280, align 8
  %sector_size.i395 = getelementptr inbounds %struct.scsi_device, ptr %141, i32 0, i32 20
  %142 = ptrtoint ptr %sector_size.i395 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2048, ptr %sector_size.i395, align 4
  br label %if.end17.i397

if.end17.i397:                                    ; preds = %if.then16.i396, %if.end3.i393.if.end17.i397_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i377) #7
  br label %sr_set_blocklength.exit399

sr_set_blocklength.exit399:                       ; preds = %if.end17.i397, %if.then283.sr_set_blocklength.exit399_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i375) #7
  br label %if.end285

if.end285:                                        ; preds = %sr_set_blocklength.exit399, %if.end279.if.end285_crit_edge
  br i1 %tobool286.not, label %if.end285.if.end289_crit_edge, label %if.then287

if.end285.if.end289_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.then287:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #9
  %mask288 = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 4
  %143 = ptrtoint ptr %mask288 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mask288, align 4
  %or = or i32 %144, 32
  store i32 %or, ptr %mask288, align 4
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %if.end285.if.end289_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup290

cleanup290:                                       ; preds = %if.end289, %if.end.cleanup290_crit_edge, %entry.cleanup290_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end289 ], [ 0, %entry.cleanup290_crit_edge ], [ -12, %if.end.cleanup290_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_disk_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_is_xa(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sr_vendor.c", i32 82, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/sr_vendor.c", i32 84, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/sr_vendor.c", i32 85, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/sr_vendor.c", i32 86, i32 23}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/sr_vendor.c", i32 87, i32 23}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/sr_vendor.c", i32 97, i32 30}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/sr_vendor.c", i32 100, i32 30}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/sr_vendor.c", i32 101, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/sr_vendor.c", i32 207, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/sr_vendor.c", i32 234, i32 5}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/sr_vendor.c", i32 292, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/sr_vendor.c", i32 315, i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
