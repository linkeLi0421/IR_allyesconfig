; ModuleID = '/llk/IR_all_yes/kernel/power/user.c_pt.bc'
source_filename = "../kernel/power/user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snapshot_data = type { %struct.snapshot_handle, i32, i32, i8, i8, i8, i8, i32 }
%struct.snapshot_handle = type { i32, ptr, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.resume_swap_area = type <{ i64, i32 }>

@snapshot_state = internal global { %struct.snapshot_data, [36 x i8] } zeroinitializer, align 32
@__initcall__kmod_user__290_451_snapshot_device_init6 = internal global ptr @snapshot_device_init, section ".initcall6.init", align 4
@snapshot_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 231, ptr @.str, ptr @snapshot_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snapshot\00", [23 x i8] zeroinitializer }, align 32
@snapshot_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @snapshot_read, ptr @snapshot_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snapshot_ioctl, ptr null, ptr null, i32 0, ptr @snapshot_open, ptr null, ptr @snapshot_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@system_transition_mutex = external dso_local global %struct.mutex, align 4
@in_suspend = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/power/user.c\00", [44 x i8] zeroinitializer }, align 32
@freezer_test_done = external dso_local local_unnamed_addr global i8, align 1
@image_size = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@swsusp_resume_device = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 13057, i64 13058, i64 13060, i64 13061, i64 13065, i64 13067, i64 13071, i64 13072, i64 13074, i64 1074017041, i64 1074541325, i64 2148021006, i64 2148021011, i64 2148021012]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"snapshot_state\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 39, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"snapshot_device\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 440, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 442, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"snapshot_fops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 428, i32 37 }
@___asan_gen_.18 = private constant [23 x i8] c"../kernel/power/user.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 298, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 156, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_user__290_451_snapshot_device_init6, ptr @snapshot_state, ptr @snapshot_device, ptr @.str, ptr @snapshot_fops, ptr @.str.1, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snapshot_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @is_hibernate_resume_dev(i32 noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @hibernation_available() #5
  br i1 %call, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i32, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %dev)
  %cmp = icmp eq i32 %0, %dev
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %1 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hibernation_available() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_device_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @snapshot_device) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offp) #0 align 64 {
entry:
  %pg_offp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pg_offp) #5
  %0 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offp, align 8
  %and = and i64 %1, 4095
  %2 = ptrtoint ptr %pg_offp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %and, ptr %pg_offp, align 8
  tail call void @lock_system_sleep() #5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %ready = getelementptr inbounds %struct.snapshot_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ready, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.Unlock_crit_edge, label %if.end

entry.Unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %Unlock

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %pg_offp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pg_offp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool1.not = icmp eq i64 %8, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @snapshot_read_next(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then2.Unlock_crit_edge, label %if.then2.if.end5_crit_edge

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2.Unlock_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %Unlock

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = trunc i64 %8 to i32
  %conv = sub i32 4096, %9
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2.if.end5_crit_edge
  %res.0 = phi i32 [ %conv, %if.else ], [ %call, %if.then2.if.end5_crit_edge ]
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pg_offp, ptr noundef %11, i32 noundef %res.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end5.Unlock_crit_edge

if.end5.Unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %Unlock

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %conv1120 = zext i32 %call7 to i64
  %12 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offp, align 8
  %add = add i64 %13, %conv1120
  store i64 %add, ptr %offp, align 8
  br label %Unlock

Unlock:                                           ; preds = %if.then10, %if.end5.Unlock_crit_edge, %if.then2.Unlock_crit_edge, %entry.Unlock_crit_edge
  %res.1 = phi i32 [ %call7, %if.then10 ], [ %call7, %if.end5.Unlock_crit_edge ], [ %call, %if.then2.Unlock_crit_edge ], [ -61, %entry.Unlock_crit_edge ]
  call void @unlock_system_sleep() #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pg_offp) #5
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %offp) #0 align 64 {
entry:
  %pg_offp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pg_offp) #5
  %0 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offp, align 8
  %and = and i64 %1, 4095
  %2 = ptrtoint ptr %pg_offp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %and, ptr %pg_offp, align 8
  tail call void @lock_system_sleep() #5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @snapshot_write_next(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then.unlock_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %res.0 = phi i32 [ %call, %if.then.if.end2_crit_edge ], [ 4096, %entry.if.end2_crit_edge ]
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end2.unlock_crit_edge, label %if.end6

if.end2.unlock_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end6:                                          ; preds = %if.end2
  %call9 = call i32 @simple_write_to_buffer(ptr noundef nonnull %6, i32 noundef %res.0, ptr noundef nonnull %pg_offp, ptr noundef %buf, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end6.unlock_crit_edge

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv20 = zext i32 %call9 to i64
  %7 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offp, align 8
  %add = add i64 %8, %conv20
  store i64 %add, ptr %offp, align 8
  br label %unlock

unlock:                                           ; preds = %if.then11, %if.end6.unlock_crit_edge, %if.end2.unlock_crit_edge, %if.then.unlock_crit_edge
  %res.1 = phi i32 [ %call9, %if.then11 ], [ %call9, %if.end6.unlock_crit_edge ], [ %call, %if.then.unlock_crit_edge ], [ -22, %if.end2.unlock_crit_edge ]
  call void @unlock_system_sleep() #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pg_offp) #5
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 13056, i32 %0)
  %cmp.not = icmp ne i32 %0, 13056
  %and2 = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and2)
  %cmp3 = icmp ugt i32 %and2, 20
  %or.cond228 = or i1 %cmp.not, %cmp3
  br i1 %or.cond228, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %call, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %call8 = tail call i32 @mutex_trylock(ptr noundef nonnull @system_transition_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  tail call void @lock_device_hotplug() #5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end10.sw.epilog_crit_edge [
    i32 13057, label %sw.bb
    i32 13058, label %sw.bb23
    i32 1074017041, label %sw.bb30
    i32 13060, label %sw.bb50
    i32 13061, label %sw.bb67
    i32 13074, label %sw.bb70
    i32 -2146946290, label %sw.bb71
    i32 -2146946285, label %sw.bb93
    i32 -2146946284, label %sw.bb112
    i32 13065, label %sw.bb144
    i32 13067, label %sw.bb155
    i32 13071, label %sw.bb162
    i32 13072, label %sw.bb168
    i32 1074541325, label %sw.bb174
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  %frozen = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %frozen, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb
  tail call void @ksys_sync_helper() #5
  %call14 = tail call i32 @freeze_processes() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.sw.epilog_crit_edge

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @create_basic_memory_bitmaps() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @thaw_processes() #5
  br label %sw.epilog

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %frozen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %frozen, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end10
  %frozen24 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %frozen24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %frozen24, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  br i1 %tobool25.not, label %sw.bb23.sw.epilog_crit_edge, label %lor.lhs.false

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb23
  %ready = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ready, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool26.not = icmp eq i8 %10, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pm_restore_gfp_mask() #5
  tail call void @free_basic_memory_bitmaps() #5
  %free_bitmaps = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 6
  %11 = ptrtoint ptr %free_bitmaps to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %free_bitmaps, align 1
  tail call void @thaw_processes() #5
  %12 = ptrtoint ptr %frozen24 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %frozen24, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end10
  %mode = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp31.not = icmp eq i32 %14, 0
  br i1 %cmp31.not, label %lor.lhs.false32, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false32:                                  ; preds = %sw.bb30
  %frozen33 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %frozen33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %frozen33, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool34.not = icmp eq i8 %16, 0
  br i1 %tobool34.not, label %lor.lhs.false32.sw.epilog_crit_edge, label %lor.lhs.false35

lor.lhs.false32.sw.epilog_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %ready36 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 4
  %17 = ptrtoint ptr %ready36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ready36, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool37.not = icmp eq i8 %18, 0
  br i1 %tobool37.not, label %if.end39, label %lor.lhs.false35.sw.epilog_crit_edge

lor.lhs.false35.sw.epilog_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end39:                                         ; preds = %lor.lhs.false35
  tail call void @pm_restore_gfp_mask() #5
  %platform_support = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 5
  %19 = ptrtoint ptr %platform_support to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %platform_support, align 2, !range !29
  %21 = zext i8 %20 to i32
  %call41 = tail call i32 @hibernation_snapshot(i32 noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end39.sw.epilog_crit_edge

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %22 = inttoptr i32 %arg to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @in_suspend to i32))
  %23 = load i32, ptr @in_suspend, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 298) #5
  %24 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !30
  %and.i = and i32 %26, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %22, i32 %23, i32 -1226833921) #5, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @freezer_test_done to i32))
  %28 = load i8, ptr @freezer_test_done, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool46.not = icmp eq i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  %spec.select = select i1 %tobool46.not, i1 %tobool47.not, i1 false
  %frombool = zext i1 %spec.select to i8
  %29 = ptrtoint ptr %ready36 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %ready36, align 1
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @freezer_test_done to i32))
  store i8 0, ptr @freezer_test_done, align 1
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end10
  tail call void @snapshot_write_finalize(ptr noundef %2) #5
  %mode51 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 2
  %30 = ptrtoint ptr %mode51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp52.not = icmp eq i32 %31, 1
  br i1 %cmp52.not, label %lor.lhs.false54, label %sw.bb50.sw.epilog_crit_edge

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false54:                                  ; preds = %sw.bb50
  %frozen55 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 3
  %32 = ptrtoint ptr %frozen55 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %frozen55, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool56.not = icmp eq i8 %33, 0
  br i1 %tobool56.not, label %lor.lhs.false54.sw.epilog_crit_edge, label %lor.lhs.false57

lor.lhs.false54.sw.epilog_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %call59 = tail call i32 @snapshot_image_loaded(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %lor.lhs.false57.sw.epilog_crit_edge, label %if.end62

lor.lhs.false57.sw.epilog_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end62:                                         ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #7
  %platform_support63 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 5
  %34 = ptrtoint ptr %platform_support63 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %platform_support63, align 2, !range !29
  %36 = zext i8 %35 to i32
  %call66 = tail call i32 @hibernation_restore(i32 noundef %36) #5
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @swsusp_free() #5
  %37 = call ptr @memset(ptr %2, i32 0, i32 12)
  %ready69 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 4
  %38 = ptrtoint ptr %ready69 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ready69, align 1
  tail call void @thaw_kernel_threads() #5
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @image_size to i32))
  store i32 %arg, ptr @image_size, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end10
  %ready72 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 4
  %39 = ptrtoint ptr %ready72 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ready72, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool73.not = icmp eq i8 %40, 0
  br i1 %tobool73.not, label %sw.bb71.sw.epilog_crit_edge, label %if.end75

sw.bb71.sw.epilog_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end75:                                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call i32 @snapshot_get_image_size() #5
  %conv77 = zext i32 %call76 to i64
  %shl = shl nuw nsw i64 %conv77, 12
  %41 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 340) #5
  %42 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i229 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i229 to ptr
  %cpu_domain.i.i230 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i230) #4, !srcloc !30
  %and.i231 = and i32 %44, -13
  %or.i232 = or i32 %and.i231, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i232) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %41, i64 %shl, i32 -1226833921) #5, !srcloc !34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 1
  %46 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %swap, align 4
  %call94 = tail call i32 @count_swap_pages(i32 noundef %47, i32 noundef 1) #5
  %conv95 = zext i32 %call94 to i64
  %shl96 = shl nuw nsw i64 %conv95, 12
  %48 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 346) #5
  %49 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i233 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i233 to ptr
  %cpu_domain.i.i234 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i234) #4, !srcloc !30
  %and.i235 = and i32 %51, -13
  %or.i236 = or i32 %and.i235, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i236) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %48, i64 %shl96, i32 -1226833921) #5, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end10
  %swap113 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 1
  %53 = ptrtoint ptr %swap113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %swap113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %54)
  %55 = icmp ugt i32 %54, 29
  br i1 %55, label %sw.bb112.sw.epilog_crit_edge, label %if.end121

sw.bb112.sw.epilog_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end121:                                        ; preds = %sw.bb112
  %call123 = tail call i64 @alloc_swapdev_block(i32 noundef %54) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call123)
  %tobool124.not = icmp eq i64 %call123, 0
  br i1 %tobool124.not, label %if.end121.sw.epilog_crit_edge, label %if.then125

if.end121.sw.epilog_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %shl126 = shl i64 %call123, 12
  %56 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 357) #5
  %57 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i237 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i237 to ptr
  %cpu_domain.i.i238 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i238) #4, !srcloc !30
  %and.i239 = and i32 %59, -13
  %or.i240 = or i32 %and.i239, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i240) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %60 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %56, i64 %shl126, i32 -1226833921) #5, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end10
  %swap145 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 1
  %61 = ptrtoint ptr %swap145 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %swap145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %62)
  %63 = icmp ugt i32 %62, 29
  br i1 %63, label %sw.bb144.sw.epilog_crit_edge, label %if.end153

sw.bb144.sw.epilog_crit_edge:                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end153:                                        ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_all_swap_pages(i32 noundef %62) #5
  br label %sw.epilog

sw.bb155:                                         ; preds = %if.end10
  %frozen156 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 3
  %64 = ptrtoint ptr %frozen156 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %frozen156, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool157.not = icmp eq i8 %65, 0
  br i1 %tobool157.not, label %sw.bb155.sw.epilog_crit_edge, label %if.end159

sw.bb155.sw.epilog_crit_edge:                     ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end159:                                        ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #7
  %call160 = tail call i32 @suspend_devices_and_enter(i32 noundef 3) #5
  %ready161 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 4
  %66 = ptrtoint ptr %ready161 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %ready161, align 1
  br label %sw.epilog

sw.bb162:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool163 = icmp ne i32 %arg, 0
  %platform_support166 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 5
  %frombool167 = zext i1 %tobool163 to i8
  %67 = ptrtoint ptr %platform_support166 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool167, ptr %platform_support166, align 2
  br label %sw.epilog

sw.bb168:                                         ; preds = %if.end10
  %platform_support169 = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 5
  %68 = ptrtoint ptr %platform_support169 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %platform_support169, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool170.not = icmp eq i8 %69, 0
  br i1 %tobool170.not, label %sw.bb168.sw.epilog_crit_edge, label %if.then171

sw.bb168.sw.epilog_crit_edge:                     ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then171:                                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #7
  %call172 = tail call i32 @hibernation_platform_enter() #5
  br label %sw.epilog

sw.bb174:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %70 = inttoptr i32 %arg to ptr
  %call175 = tail call fastcc i32 @snapshot_set_swap_area(ptr noundef %2, ptr noundef %70)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb174, %if.then171, %sw.bb168.sw.epilog_crit_edge, %sw.bb162, %if.end159, %sw.bb155.sw.epilog_crit_edge, %if.end153, %sw.bb144.sw.epilog_crit_edge, %if.then125, %if.end121.sw.epilog_crit_edge, %sw.bb112.sw.epilog_crit_edge, %sw.bb93, %if.end75, %sw.bb71.sw.epilog_crit_edge, %sw.bb70, %sw.bb67, %if.end62, %lor.lhs.false57.sw.epilog_crit_edge, %lor.lhs.false54.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %if.then43, %if.end39.sw.epilog_crit_edge, %lor.lhs.false35.sw.epilog_crit_edge, %lor.lhs.false32.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %if.end28, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb23.sw.epilog_crit_edge, %if.else, %if.then20, %if.end13.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge
  %error.0 = phi i32 [ %call175, %sw.bb174 ], [ %call172, %if.then171 ], [ 0, %sw.bb168.sw.epilog_crit_edge ], [ 0, %sw.bb162 ], [ %call160, %if.end159 ], [ 0, %if.end153 ], [ %60, %if.then125 ], [ %52, %sw.bb93 ], [ %45, %if.end75 ], [ 0, %sw.bb70 ], [ 0, %sw.bb67 ], [ %call66, %if.end62 ], [ %call41, %if.end39.sw.epilog_crit_edge ], [ %27, %if.then43 ], [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 0, %if.end28 ], [ 0, %sw.bb23.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call14, %if.end13.sw.epilog_crit_edge ], [ %call18, %if.then20 ], [ 0, %if.else ], [ -1, %lor.lhs.false35.sw.epilog_crit_edge ], [ -1, %lor.lhs.false32.sw.epilog_crit_edge ], [ -1, %sw.bb30.sw.epilog_crit_edge ], [ -1, %lor.lhs.false57.sw.epilog_crit_edge ], [ -1, %lor.lhs.false54.sw.epilog_crit_edge ], [ -1, %sw.bb50.sw.epilog_crit_edge ], [ -61, %sw.bb71.sw.epilog_crit_edge ], [ -19, %sw.bb112.sw.epilog_crit_edge ], [ -28, %if.end121.sw.epilog_crit_edge ], [ -19, %sw.bb144.sw.epilog_crit_edge ], [ -1, %sw.bb155.sw.epilog_crit_edge ], [ -25, %if.end10.sw.epilog_crit_edge ]
  tail call void @unlock_device_hotplug() #5
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %sw.epilog ], [ -25, %entry.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @hibernation_available() #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_system_sleep() #5
  %call1 = tail call zeroext i1 @hibernate_acquire() #5
  br i1 %call1, label %if.end3, label %if.end.Unlock_crit_edge

if.end.Unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %Unlock

if.end3:                                          ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hibernate_release() #5
  br label %Unlock

if.end5:                                          ; preds = %if.end3
  %call6 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snapshot_state, ptr %private_data, align 4
  %3 = call ptr @memset(ptr @snapshot_state, i32 0, i32 12)
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and8 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @swsusp_resume_device to i32))
  %6 = load i32, ptr @swsusp_resume_device, align 4
  %call11 = tail call i32 @swap_type_of(i32 noundef %6, i64 noundef 0) #5
  store i32 %call11, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 2), align 4
  store i8 0, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 6), align 1
  %call12 = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 1, i32 noundef 2) #5
  br label %if.end21

if.else:                                          ; preds = %if.end5
  tail call void @wait_for_device_probe() #5
  store i32 -1, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 2), align 4
  %call15 = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 5, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then16, label %if.else.if.then23_crit_edge

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 @create_basic_memory_bitmaps() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %frombool = zext i1 %tobool18.not to i8
  store i8 %frombool, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 6), align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then10
  %error.0 = phi i32 [ %call12, %if.then10 ], [ %call17, %if.then16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool22.not = icmp eq i32 %error.0, 0
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.end21.if.then23_crit_edge

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %if.else.if.then23_crit_edge
  %error.045 = phi i32 [ %error.0, %if.end21.if.then23_crit_edge ], [ %call15, %if.else.if.then23_crit_edge ]
  tail call void @hibernate_release() #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  %error.046 = phi i32 [ %error.045, %if.then23 ], [ 0, %if.end21.if.end24_crit_edge ]
  store i8 0, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 3), align 4
  store i8 0, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 5), align 2
  store i32 0, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 7), align 4
  br label %Unlock

Unlock:                                           ; preds = %if.end24, %if.then4, %if.end.Unlock_crit_edge
  %error.1 = phi i32 [ -38, %if.then4 ], [ %error.046, %if.end24 ], [ -16, %if.end.Unlock_crit_edge ]
  tail call void @unlock_system_sleep() #5
  br label %cleanup

cleanup:                                          ; preds = %Unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %Unlock ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snapshot_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_system_sleep() #5
  tail call void @swsusp_free() #5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.snapshot_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dev, align 4
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %swap, align 4
  tail call void @free_all_swap_pages(i32 noundef %4) #5
  %frozen = getelementptr inbounds %struct.snapshot_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %frozen, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pm_restore_gfp_mask() #5
  tail call void @free_basic_memory_bitmaps() #5
  tail call void @thaw_processes() #5
  br label %if.end3

if.else:                                          ; preds = %entry
  %free_bitmaps = getelementptr inbounds %struct.snapshot_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %free_bitmaps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %free_bitmaps, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_basic_memory_bitmaps() #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %if.then
  %mode = getelementptr inbounds %struct.snapshot_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %cond = select i1 %cmp, i32 2, i32 6
  %call = tail call i32 @pm_notifier_call_chain(i32 noundef %cond) #5
  tail call void @hibernate_release() #5
  tail call void @unlock_system_sleep() #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_system_sleep() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_read_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_system_sleep() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_write_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_device_hotplug() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksys_sync_helper() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_basic_memory_bitmaps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_gfp_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_basic_memory_bitmaps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernation_snapshot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snapshot_write_finalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_image_loaded(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernation_restore(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @swsusp_free() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_kernel_threads() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snapshot_get_image_size() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @count_swap_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alloc_swapdev_block(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_all_swap_pages(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_devices_and_enter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernation_platform_enter() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snapshot_set_swap_area(ptr nocapture noundef writeonly %data, ptr noundef %argp) unnamed_addr #0 align 64 {
entry:
  %swap_area9 = alloca %struct.resume_swap_area, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @swsusp_swap_in_use() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %swap_area9) #5
  %0 = ptrtoint ptr %swap_area9 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %swap_area9, align 8, !annotation !37
  %1 = getelementptr inbounds %struct.resume_swap_area, ptr %swap_area9, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 8, !annotation !37
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 12, i32 -1226833920) #8, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !39

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %swap_area9, i32 noundef 12) #5
  %4 = call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !30
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %swap_area9, ptr noundef %argp, i32 noundef 12) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #5, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end20, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !39

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %swap_area9) #5
  br label %cleanup27

if.end20:                                         ; preds = %if.end.i.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %and1.i = and i32 %8, 255
  %shr2.i = lshr i32 %8, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %9 = shl i32 %8, 12
  %shl.i = and i32 %9, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %10 = ptrtoint ptr %swap_area9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %swap_area9, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %swap_area9) #5
  %call21 = call i32 @swap_type_of(i32 noundef %or4.i, i64 noundef %11) #5
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %swap to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call21, ptr %swap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or4.i)
  %tobool24.not = icmp eq i32 %or4.i, 0
  %cond = select i1 %tobool24.not, i32 -22, i32 -19
  br label %cleanup27

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.snapshot_data, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or4.i, ptr %dev26, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %if.end25, %if.then23, %if.then11.i.i, %entry.cleanup27_crit_edge
  %retval.2 = phi i32 [ %cond, %if.then23 ], [ 0, %if.end25 ], [ -14, %if.then11.i.i ], [ -1, %entry.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_device_hotplug() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swsusp_swap_in_use() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_type_of(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hibernate_acquire() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hibernate_release() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain_robust(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_user__290_451_snapshot_device_init6, !1, !"__initcall__kmod_user__290_451_snapshot_device_init6", i1 false, i1 false}
!1 = !{!"../kernel/power/user.c", i32 451, i32 1}
!2 = !{ptr @snapshot_state, !3, !"snapshot_state", i1 false, i1 false}
!3 = !{!"../kernel/power/user.c", i32 39, i32 3}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/power/user.c", i32 442, i32 10}
!6 = !{ptr @snapshot_device, !7, !"snapshot_device", i1 false, i1 false}
!7 = !{!"../kernel/power/user.c", i32 440, i32 26}
!8 = !{ptr @snapshot_fops, !9, !"snapshot_fops", i1 false, i1 false}
!9 = !{!"../kernel/power/user.c", i32 428, i32 37}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/power/user.c", i32 298, i32 12}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{i64 4795371}
!31 = !{i64 4795568}
!32 = !{i64 2152280801}
!33 = !{i64 2155029050, i64 2155029330, i64 2155029664, i64 2155029998}
!34 = !{i64 2155046008, i64 2155046288, i64 2155046622, i64 2155046956}
!35 = !{i64 2155055699, i64 2155055979, i64 2155056313, i64 2155056647}
!36 = !{i64 2155065493, i64 2155065773, i64 2155066107, i64 2155066441}
!37 = !{!"auto-init"}
!38 = !{i64 2152299816, i64 2152299841}
!39 = !{!"branch_weights", i32 2000, i32 1}
