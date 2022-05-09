; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_system.c_pt.bc'
source_filename = "../sound/core/seq/seq_system.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }

@sysclient = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@announce_port = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"System\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Timer\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Announce\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"sysclient\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 47, i32 12 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"announce_port\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 50, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 122, i32 52 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 129, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [31 x i8] c"../sound/core/seq/seq_system.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 143, i32 21 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @sysclient, ptr @announce_port, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysclient to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @announce_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_system_broadcast(i32 noundef %client, i32 noundef %port, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %ev = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev) #5
  %0 = load i32, ptr @announce_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp slt i32 %0, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %2 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %3 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %4 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5, i32 1
  %5 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %6 = call ptr @memset(ptr %ev, i32 0, i32 28)
  %7 = load i32, ptr @sysclient, align 4
  %conv5.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5.i, ptr %5, align 4
  %conv7.i = trunc i32 %0 to i8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7.i, ptr %4, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %3, align 2
  %conv11.i = trunc i32 %client to i8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11.i, ptr %2, align 4
  %conv13.i = trunc i32 %port to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13.i, ptr %1, align 1
  %conv = trunc i32 %type to i8
  %13 = ptrtoint ptr %ev to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %ev, align 4
  %call2 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %7, ptr noundef nonnull %ev, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_system_notify(i32 noundef %client, i32 noundef %port, ptr noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %flags, align 1
  %1 = load i32, ptr @sysclient, align 4
  %conv = trunc i32 %1 to i8
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %2 = ptrtoint ptr %source to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %source, align 4
  %3 = load i32, ptr @announce_port, align 4
  %conv2 = trunc i32 %3 to i8
  %port4 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %port4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %port4, align 1
  %conv5 = trunc i32 %client to i8
  %dest = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  %5 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %dest, align 2
  %conv7 = trunc i32 %port to i8
  %port9 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %port9, align 1
  %call = tail call i32 @snd_seq_kernel_client_dispatch(i32 noundef %1, ptr noundef %ev, i32 noundef 0, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_system_client_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %pcallbacks = alloca %struct.snd_seq_port_callback, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcallbacks) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 6
  %2 = call ptr @memset(ptr %pcallbacks, i32 0, i32 32)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @event_input_timer, ptr %1, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str) #5
  store i32 %call1, ptr @sysclient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %4 = load i32, ptr @sysclient, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 6)
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 35, ptr %capability, align 4
  %kernel = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pcallbacks, ptr %kernel, align 8
  %type = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type, align 8
  %flags = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %flags, align 4
  %conv = trunc i32 %call1 to i8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %call7.i.i, align 8
  %port7 = getelementptr inbounds %struct.snd_seq_addr, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %port7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %port7, align 1
  %call8 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %call1, i32 noundef -1062972640, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end3.error_port_crit_edge, label %if.end12

if.end3.error_port_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_port

if.end12:                                         ; preds = %if.end3
  %12 = call ptr @memcpy(ptr %name, ptr @.str.2, i32 9)
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33, ptr %capability, align 4
  %14 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %kernel, align 8
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %type, align 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags, align 4
  %17 = load i32, ptr @sysclient, align 4
  %conv20 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv20, ptr %call7.i.i, align 8
  %19 = ptrtoint ptr %port7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %port7, align 1
  %call25 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %17, i32 noundef -1062972640, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end12.error_port_crit_edge, label %if.end29

if.end12.error_port_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_port

if.end29:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %port7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port7, align 1
  %conv32 = zext i8 %21 to i32
  store i32 %conv32, ptr @announce_port, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

error_port:                                       ; preds = %if.end12.error_port_crit_edge, %if.end3.error_port_crit_edge
  %err.0 = phi i32 [ %call8, %if.end3.error_port_crit_edge ], [ %call25, %if.end12.error_port_crit_edge ]
  %22 = load i32, ptr @sysclient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i = icmp sgt i32 %22, -1
  br i1 %cmp.i, label %if.then.i, label %error_port.snd_seq_system_client_done.exit_crit_edge

error_port.snd_seq_system_client_done.exit_crit_edge: ; preds = %error_port
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_seq_system_client_done.exit

if.then.i:                                        ; preds = %error_port
  call void @__sanitizer_cov_trace_pc() #7
  store i32 -1, ptr @sysclient, align 4
  store i32 -1, ptr @announce_port, align 4
  %call.i = call i32 @snd_seq_delete_kernel_client(i32 noundef %22) #5
  br label %snd_seq_system_client_done.exit

snd_seq_system_client_done.exit:                  ; preds = %if.then.i, %error_port.snd_seq_system_client_done.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %snd_seq_system_client_done.exit, %if.end29, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then2 ], [ %err.0, %snd_seq_system_client_done.exit ], [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcallbacks) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_input_timer(ptr noundef %ev, i32 noundef %direct, ptr nocapture noundef readnone %private_data, i32 noundef %atomic, i32 noundef %hop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_seq_control_queue(ptr noundef %ev, i32 noundef %atomic, i32 noundef %hop) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_system_client_done() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sysclient, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 -1, ptr @sysclient, align 4
  store i32 -1, ptr @announce_port, align 4
  %call = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_control_queue(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_system.c", i32 122, i32 52}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_system.c", i32 129, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_system.c", i32 143, i32 21}
!6 = !{ptr @sysclient, !7, !"sysclient", i1 false, i1 false}
!7 = !{!"../sound/core/seq/seq_system.c", i32 47, i32 12}
!8 = !{ptr @announce_port, !9, !"announce_port", i1 false, i1 false}
!9 = !{!"../sound/core/seq/seq_system.c", i32 50, i32 12}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
