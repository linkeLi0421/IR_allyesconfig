; ModuleID = '/llk/IR_all_yes/drivers/scsi/sd_dif.c_pt.bc'
source_filename = "../drivers/scsi/sd_dif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.scsi_disk = type <{ ptr, ptr, %struct.device, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.spinlock, ptr, %struct.mutex, %struct.work_struct, ptr, %struct.atomic_t, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i24, [2 x i8] }>
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@t10_pi_type3_ip = external dso_local constant %struct.blk_integrity_profile, align 4
@t10_pi_type1_ip = external dso_local constant %struct.blk_integrity_profile, align 4
@t10_pi_type3_crc = external dso_local constant %struct.blk_integrity_profile, align 4
@t10_pi_type1_crc = external dso_local constant %struct.blk_integrity_profile, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enabling DIX %s protection\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DIF application tag size %u\0A\00", [35 x i8] zeroinitializer }, align 32
@scsi_host_dif_capable.cap = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\02\04", [28 x i8] zeroinitializer }, align 32
@scsi_host_dix_capable.cap = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\08\10 @", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 62, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [25 x i8] c"../drivers/scsi/sd_dif.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 76, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 836, i32 23 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"../include/scsi/scsi_host.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 850, i32 23 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @scsi_host_dif_capable.cap, ptr @scsi_host_dix_capable.cap], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_host_dif_capable.cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_host_dix_capable.cap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sd_dif_config_host(ptr nocapture noundef readonly %sdkp) local_unnamed_addr #0 align 64 {
entry:
  %bi = alloca %struct.blk_integrity, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %disk1 = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 3
  %2 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk1, align 8
  %protection_type = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 33
  %4 = ptrtoint ptr %protection_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protection_type, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bi) #3
  %6 = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 1
  %7 = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 2
  %8 = getelementptr inbounds %struct.blk_integrity, ptr %bi, i32 0, i32 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp ugt i8 %5, 3
  br i1 %cmp.i, label %entry.land.lhs.true_crit_edge, label %scsi_host_dix_capable.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

scsi_host_dix_capable.exit:                       ; preds = %entry
  %conv = zext i8 %5 to i32
  %prot_capabilities.i = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 41
  %11 = ptrtoint ptr %prot_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prot_capabilities.i, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  %and.i = and i32 %12, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %conv
  %arrayidx.i106 = getelementptr [4 x i8], ptr @scsi_host_dix_capable.cap, i32 0, i32 %conv
  %15 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i106, align 1
  %conv.i107 = zext i8 %16 to i32
  %and.i108 = and i32 %12, %conv.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not = icmp eq i32 %and.i108, 0
  br i1 %tobool.not, label %scsi_host_dix_capable.exit.land.lhs.true_crit_edge, label %scsi_host_dix_capable.exit.if.end10_crit_edge

scsi_host_dix_capable.exit.if.end10_crit_edge:    ; preds = %scsi_host_dix_capable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

scsi_host_dix_capable.exit.land.lhs.true_crit_edge: ; preds = %scsi_host_dix_capable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %scsi_host_dix_capable.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %prot_capabilities.i111 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 41
  %17 = ptrtoint ptr %prot_capabilities.i111 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prot_capabilities.i111, align 4
  %and.i112 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool7.not = icmp eq i32 %and.i112, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %scsi_host_dix_capable.exit.if.end10_crit_edge
  %dif.0.ph = phi i32 [ 0, %land.lhs.true.if.end10_crit_edge ], [ %spec.select.i, %scsi_host_dix_capable.exit.if.end10_crit_edge ]
  %19 = ptrtoint ptr %bi to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %bi, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %prot_guard_type.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 42
  %22 = ptrtoint ptr %prot_guard_type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prot_guard_type.i, align 8
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool15.not = icmp eq i8 %24, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp26 = icmp eq i8 %5, 3
  br i1 %tobool15.not, label %if.else24, label %if.then16

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %t10_pi_type3_ip.t10_pi_type1_ip = select i1 %cmp26, ptr @t10_pi_type3_ip, ptr @t10_pi_type1_ip
  %25 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %t10_pi_type3_ip.t10_pi_type1_ip, ptr %bi, align 8
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 4
  %28 = or i8 %27, 8
  store i8 %28, ptr %6, align 4
  br label %if.end33

if.else24:                                        ; preds = %if.end10
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @t10_pi_type3_crc, ptr %bi, align 8
  br label %if.end33

if.else30:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %bi to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @t10_pi_type1_crc, ptr %bi, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then28, %if.then16
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %7, align 1
  %tobool35.not = icmp eq ptr %3, null
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 3
  %.sink = select i1 %tobool35.not, ptr null, ptr %disk_name
  %32 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink126 = load ptr, ptr %bi, align 8
  %name41 = getelementptr inbounds %struct.blk_integrity_profile, ptr %.sink126, i32 0, i32 4
  %33 = ptrtoint ptr %name41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name41, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef %.sink, ptr noundef nonnull @.str.1, ptr noundef %34) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dif.0.ph)
  %tobool42.not = icmp eq i32 %dif.0.ph, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool45.not = icmp eq i8 %5, 0
  %or.cond = select i1 %tobool42.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %if.end33.out_crit_edge, label %if.then46

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then46:                                        ; preds = %if.end33
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %6, align 4
  %37 = or i8 %36, 4
  store i8 %37, ptr %6, align 4
  %ATO = getelementptr inbounds %struct.scsi_disk, ptr %sdkp, i32 0, i32 37
  %38 = ptrtoint ptr %ATO to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load = load i32, ptr %ATO, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool51.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool51.not, label %if.then46.out_crit_edge, label %if.end53

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp55 = icmp eq i8 %5, 3
  %. = select i1 %cmp55, i8 6, i8 2
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %., ptr %8, align 1
  %40 = ptrtoint ptr %disk1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disk1, align 8
  %tobool62.not = icmp eq ptr %41, null
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %disk_name66 = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 3
  %.sink127 = select i1 %tobool62.not, ptr null, ptr %disk_name66
  %conv73 = zext i8 %. to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %43, ptr noundef %.sink127, ptr noundef nonnull @.str.2, i32 noundef %conv73) #3
  br label %out

out:                                              ; preds = %if.end53, %if.then46.out_crit_edge, %if.end33.out_crit_edge
  call void @blk_integrity_register(ptr noundef %3, ptr noundef nonnull %bi) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bi) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_integrity_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sd_dif.c", i32 62, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/sd_dif.c", i32 76, i32 3}
!5 = !{ptr @scsi_host_dif_capable.cap, !6, !"cap", i1 false, i1 false}
!6 = !{!"../include/scsi/scsi_host.h", i32 836, i32 23}
!7 = !{ptr @scsi_host_dix_capable.cap, !8, !"cap", i1 false, i1 false}
!8 = !{!"../include/scsi/scsi_host.h", i32 850, i32 23}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
