; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_debugfs.c_pt.bc'
source_filename = "../drivers/scsi/scsi_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.36 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.37 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c", .cmd=%s, .retries=%d, .result = %#x, .flags=\00", [49 x i8] zeroinitializer }, align 32
@scsi_cmd_flags = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c", .timeout=%d.%03d, allocated %d.%03d s ago\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TAGGED\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INITIALIZED\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LAST\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 44, i32 16 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"scsi_cmd_flags\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 9, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 48, i32 16 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 24, i32 16 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 29, i32 18 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 10, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 11, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [31 x i8] c"../drivers/scsi/scsi_debugfs.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 12, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @scsi_cmd_flags, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_cmd_flags to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_show_rq(ptr noundef %m, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  %flags.addr.i = alloca i32, align 4
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.request, ptr %rq, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %jiffies_at_alloc = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %jiffies_at_alloc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %jiffies_at_alloc, align 4
  %sub = sub i32 %0, %2
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #3
  %timeout = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 7
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %4) #3
  %cmnd = getelementptr %struct.request, ptr %rq, i32 2, i32 1
  %5 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %cmnd, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #3
  %7 = getelementptr inbounds i8, ptr %buf, i32 3
  %8 = call ptr @memset(ptr %7, i32 0, i32 77)
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 40, ptr %buf, align 1
  %10 = getelementptr inbounds [80 x i8], ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 63, ptr %10, align 1
  %12 = getelementptr inbounds [80 x i8], ptr %buf, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 41, ptr %12, align 1
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cmd_len = getelementptr %struct.request, ptr %rq, i32 1, i32 33
  %14 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_len, align 4
  %conv = zext i16 %15 to i32
  %call4 = call i32 @__scsi_format_command(ptr noundef nonnull %buf, i32 noundef 80, ptr noundef nonnull %6, i32 noundef %conv) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retries = getelementptr %struct.request, ptr %rq, i32 1, i32 31, i32 1
  %16 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retries, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i, i32 0, i32 24
  %18 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %result, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, ptr noundef nonnull %buf, i32 noundef %17, i32 noundef %19) #3
  %flags = getelementptr %struct.request, ptr %rq, i32 2, i32 16
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.addr.i)
  %22 = ptrtoint ptr %flags.addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags.addr.i, align 4
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %flags.addr.i, i32 noundef 32, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 32
  br i1 %cmp2.i, label %if.end.peel.i, label %if.end.scsi_flags_show.exit_crit_edge

if.end.scsi_flags_show.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %scsi_flags_show.exit

if.end.peel.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp1.peel.i = icmp slt i32 %call.i, 3
  br i1 %cmp1.peel.i, label %land.lhs.true.peel.i, label %if.end.peel.i.if.else.peel.i_crit_edge

if.end.peel.i.if.else.peel.i_crit_edge:           ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.peel.i

land.lhs.true.peel.i:                             ; preds = %if.end.peel.i
  %arrayidx.peel.i = getelementptr ptr, ptr @scsi_cmd_flags, i32 %call.i
  %23 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.peel.i, align 4
  %tobool2.not.peel.i = icmp eq ptr %24, null
  br i1 %tobool2.not.peel.i, label %land.lhs.true.peel.i.if.else.peel.i_crit_edge, label %if.then3.peel.i

land.lhs.true.peel.i.if.else.peel.i_crit_edge:    ; preds = %land.lhs.true.peel.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.peel.i

if.then3.peel.i:                                  ; preds = %land.lhs.true.peel.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %24) #3
  br label %for.inc.peel.i

if.else.peel.i:                                   ; preds = %land.lhs.true.peel.i.if.else.peel.i_crit_edge, %if.end.peel.i.if.else.peel.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %call.i) #3
  br label %for.inc.peel.i

for.inc.peel.i:                                   ; preds = %if.else.peel.i, %if.then3.peel.i
  %add.peel.i = add nsw i32 %call.i, 1
  %call6.peel.i = call i32 @_find_next_bit_be(ptr noundef nonnull %flags.addr.i, i32 noundef 32, i32 noundef %add.peel.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call6.peel.i)
  %cmp.peel.i = icmp slt i32 %call6.peel.i, 32
  br i1 %cmp.peel.i, label %for.inc.peel.i.if.end.i_crit_edge, label %for.inc.peel.i.scsi_flags_show.exit_crit_edge

for.inc.peel.i.scsi_flags_show.exit_crit_edge:    ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %scsi_flags_show.exit

for.inc.peel.i.if.end.i_crit_edge:                ; preds = %for.inc.peel.i
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %for.inc.peel.i.if.end.i_crit_edge
  %i.04.i = phi i32 [ %call6.i, %for.inc.i.if.end.i_crit_edge ], [ %call6.peel.i, %for.inc.peel.i.if.end.i_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.04.i)
  %cmp1.i = icmp slt i32 %i.04.i, 3
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr ptr, ptr @scsi_cmd_flags, i32 %i.04.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %26) #3
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %i.04.i) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then3.i
  %add.i = add nsw i32 %i.04.i, 1
  %call6.i = call i32 @_find_next_bit_be(ptr noundef nonnull %flags.addr.i, i32 noundef 32, i32 noundef %add.i) #3
  %cmp.i = icmp slt i32 %call6.i, 32
  br i1 %cmp.i, label %for.inc.i.if.end.i_crit_edge, label %for.inc.i.scsi_flags_show.exit_crit_edge, !llvm.loop !25

for.inc.i.scsi_flags_show.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %scsi_flags_show.exit

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

scsi_flags_show.exit:                             ; preds = %for.inc.i.scsi_flags_show.exit_crit_edge, %for.inc.peel.i.scsi_flags_show.exit_crit_edge, %if.end.scsi_flags_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.addr.i)
  %call2.frozen = freeze i32 %call2
  %div = sdiv i32 %call2.frozen, 1000
  %27 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %call2.frozen, %27
  %call1.frozen = freeze i32 %call1
  %div7 = sdiv i32 %call1.frozen, 1000
  %28 = mul i32 %div7, 1000
  %rem8.decomposed = sub i32 %call1.frozen, %28
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %div7, i32 noundef %rem8.decomposed) #3
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_format_command(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_debugfs.c", i32 44, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_debugfs.c", i32 48, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_debugfs.c", i32 24, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_debugfs.c", i32 29, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/scsi_debugfs.c", i32 10, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/scsi_debugfs.c", i32 11, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/scsi_debugfs.c", i32 12, i32 2}
!14 = !{ptr @scsi_cmd_flags, !15, !"scsi_cmd_flags", i1 false, i1 false}
!15 = !{!"../drivers/scsi/scsi_debugfs.c", i32 9, i32 26}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.peeled.count", i32 1}
