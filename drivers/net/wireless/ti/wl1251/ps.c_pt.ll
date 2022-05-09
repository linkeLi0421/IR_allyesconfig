; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/ps.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/ps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl1251_ps_elp_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013wl1251: ERROR elp wakeup timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wl1251_ps_elp_wakeup\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wl1251/ps.c\00", [60 x i8] zeroinitializer }, align 32
@wl1251_ps_elp_wakeup._entry_ptr = internal global ptr @wl1251_ps_elp_wakeup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [39 x i8] c"../drivers/net/wireless/ti/wl1251/ps.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 77, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @wl1251_ps_elp_wakeup._entry, ptr @wl1251_ps_elp_wakeup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_ps_elp_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_elp_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -548
  %mutex = getelementptr i8, ptr %work, i32 -468
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %elp = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %elp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %elp, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %station_mode = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %station_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %station_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %do.end3

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end3:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %4 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.addr.i, align 4
  %if_ops.i = getelementptr i8, ptr %work, i32 -536
  %5 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_ops.i, align 4
  %write_elp.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %write_elp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_elp.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %8(ptr noundef %add.ptr, i32 noundef 131068, i32 noundef 0) #4
  br label %wl1251_write_elp.exit

if.else.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %write.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  call void %10(ptr noundef %add.ptr, i32 noundef 131068, ptr noundef nonnull %val.addr.i, i32 noundef 4) #4
  br label %wl1251_write_elp.exit

wl1251_write_elp.exit:                            ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  %11 = ptrtoint ptr %elp to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %elp, align 4
  br label %out

out:                                              ; preds = %wl1251_write_elp.exit, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_ps_elp_sleep(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %station_mode = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 53
  %0 = ptrtoint ptr %station_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %station_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %elp_work = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 52
  tail call void @ieee80211_queue_delayed_work(ptr noundef %3, ptr noundef %elp_work, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_ps_elp_wakeup(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %response.i26 = alloca i32, align 4
  %response.i = alloca i32, align 4
  %val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %elp_work = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 52
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %elp_work) #4
  %elp = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 51
  %0 = ptrtoint ptr %elp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %elp, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %4 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %val.addr.i, align 4
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %5 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %if_ops.i, align 4
  %write_elp.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %write_elp.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_elp.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %8(ptr noundef %wl, i32 noundef 131068, i32 noundef 1) #4
  br label %wl1251_write_elp.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %write.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  call void %10(ptr noundef %wl, i32 noundef 131068, ptr noundef nonnull %val.addr.i, i32 noundef 4) #4
  br label %wl1251_write_elp.exit

wl1251_write_elp.exit:                            ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response.i) #4
  %11 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %response.i, align 4, !annotation !16
  %12 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_ops.i, align 4
  %read_elp.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read_elp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_elp.i, align 4
  %tobool.not.i23 = icmp eq ptr %15, null
  br i1 %tobool.not.i23, label %if.else.i25, label %if.then.i24

if.then.i24:                                      ; preds = %wl1251_write_elp.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void %15(ptr noundef %wl, i32 noundef 131068, ptr noundef nonnull %response.i) #4
  br label %wl1251_read_elp.exit

if.else.i25:                                      ; preds = %wl1251_write_elp.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  call void %17(ptr noundef %wl, i32 noundef 131068, ptr noundef nonnull %response.i, i32 noundef 4) #4
  br label %wl1251_read_elp.exit

wl1251_read_elp.exit:                             ; preds = %if.else.i25, %if.then.i24
  %18 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %response.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i) #4
  %and33 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool3.not34 = icmp eq i32 %and33, 0
  br i1 %tobool3.not34, label %wl1251_read_elp.exit.while.body_crit_edge, label %wl1251_read_elp.exit.do.end13_crit_edge

wl1251_read_elp.exit.do.end13_crit_edge:          ; preds = %wl1251_read_elp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end13

wl1251_read_elp.exit.while.body_crit_edge:        ; preds = %wl1251_read_elp.exit
  br label %while.body

while.body:                                       ; preds = %wl1251_read_elp.exit32.while.body_crit_edge, %wl1251_read_elp.exit.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end7, label %if.end9

do.end7:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end9:                                          ; preds = %while.body
  call void @msleep(i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response.i26) #4
  %21 = ptrtoint ptr %response.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %response.i26, align 4, !annotation !16
  %22 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %if_ops.i, align 4
  %read_elp.i28 = getelementptr inbounds %struct.wl1251_if_operations, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %read_elp.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_elp.i28, align 4
  %tobool.not.i29 = icmp eq ptr %25, null
  br i1 %tobool.not.i29, label %if.else.i31, label %if.then.i30

if.then.i30:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  call void %25(ptr noundef %wl, i32 noundef 131068, ptr noundef nonnull %response.i26) #4
  br label %wl1251_read_elp.exit32

if.else.i31:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  call void %27(ptr noundef %wl, i32 noundef 131068, ptr noundef nonnull %response.i26, i32 noundef 4) #4
  br label %wl1251_read_elp.exit32

wl1251_read_elp.exit32:                           ; preds = %if.else.i31, %if.then.i30
  %28 = ptrtoint ptr %response.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %response.i26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i26) #4
  %and = and i32 %29, 2
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %wl1251_read_elp.exit32.while.body_crit_edge, label %wl1251_read_elp.exit32.do.end13_crit_edge

wl1251_read_elp.exit32.do.end13_crit_edge:        ; preds = %wl1251_read_elp.exit32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end13

wl1251_read_elp.exit32.while.body_crit_edge:      ; preds = %wl1251_read_elp.exit32
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.end13:                                         ; preds = %wl1251_read_elp.exit32.do.end13_crit_edge, %wl1251_read_elp.exit.do.end13_crit_edge
  %30 = ptrtoint ptr %elp to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %elp, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end7 ], [ 0, %do.end13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_ps_set_mode(ptr noundef %wl, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end32 [
    i32 1, label %do.end
    i32 2, label %do.end20
  ]

do.end:                                           ; preds = %entry
  %call = tail call i32 @wl1251_acx_beacon_filter_opt(ptr noundef %wl, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %do.end
  %listen_int = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 25
  %1 = ptrtoint ptr %listen_int to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %listen_int, align 1
  %call1 = tail call i32 @wl1251_acx_wake_up_conditions(ptr noundef %wl, i8 noundef zeroext 2, i8 noundef zeroext %2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wl1251_acx_bet_enable(ptr noundef %wl, i32 noundef 1, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @wl1251_cmd_ps_mode(ptr noundef %wl, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @wl1251_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end12.sw.epilog_crit_edge

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end20:                                         ; preds = %entry
  %call21 = tail call i32 @wl1251_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end20.cleanup_crit_edge, label %if.end24

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %do.end20
  %call25 = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 36, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end24.sw.epilog_crit_edge

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end32:                                         ; preds = %entry
  %call33 = tail call i32 @wl1251_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end32.cleanup_crit_edge, label %if.end36

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %do.end32
  %call37 = tail call i32 @wl1251_acx_bet_enable(ptr noundef %wl, i32 noundef 0, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @wl1251_acx_beacon_filter_opt(ptr noundef %wl, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %listen_int45 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 25
  %3 = ptrtoint ptr %listen_int45 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %listen_int45, align 1
  %call46 = tail call i32 @wl1251_acx_wake_up_conditions(ptr noundef %wl, i8 noundef zeroext 2, i8 noundef zeroext %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end44.cleanup_crit_edge, label %if.end49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %call50 = tail call i32 @wl1251_cmd_ps_mode(ptr noundef %wl, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end49.sw.epilog_crit_edge

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end49.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call50, %if.end49.sw.epilog_crit_edge ], [ %call25, %if.end24.sw.epilog_crit_edge ], [ %call13, %if.end12.sw.epilog_crit_edge ]
  %station_mode = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 53
  %5 = ptrtoint ptr %station_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mode, ptr %station_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end49.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call, %do.end.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call21, %do.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call33, %do.end32.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call46, %if.end44.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_beacon_filter_opt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_wake_up_conditions(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_bet_enable(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_ps_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_sleep_auth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_template_set(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/ps.c", i32 77, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_ps_elp_wakeup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_ps_elp_wakeup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
