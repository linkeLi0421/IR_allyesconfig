; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet-rx.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet-rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.oct_rx_group = type { i32, i32, %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@oct_rx_ready = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@pow_receive_groups = external dso_local local_unnamed_addr global i32, align 4
@oct_rx_group = internal global { [16 x %struct.oct_rx_group], [928 x i8] } zeroinitializer, align 32
@cvm_oct_device = external dso_local global [0 x ptr], align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No net_devices were allocated.\00", [33 x i8] zeroinitializer }, align 32
@rx_napi_weight = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not acquire Ethernet IRQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.cvm_oct_poll = private unnamed_addr constant [13 x i8] c"cvm_oct_poll\00", align 1
@cvm_oct_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.cvm_oct_poll, ptr @.str.5, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Port %d not controlled by Linux, packet dropped\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/octeon/ethernet-rx.c\00", [59 x i8] zeroinitializer }, align 32
@cvm_oct_poll._entry_ptr = internal global ptr @cvm_oct_poll._entry, section ".printk_index", align 4
@__func__.cvm_oct_check_rcv_error = private unnamed_addr constant [24 x i8] c"cvm_oct_check_rcv_error\00", align 1
@cvm_oct_check_rcv_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.cvm_oct_check_rcv_error, ptr @.str.5, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Port %d unknown preamble, packet dropped\0A\00", [54 x i8] zeroinitializer }, align 32
@cvm_oct_check_rcv_error._entry_ptr = internal global ptr @cvm_oct_check_rcv_error._entry, section ".printk_index", align 4
@cvm_oct_check_rcv_error._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.cvm_oct_check_rcv_error, ptr @.str.5, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Port %d receive error code %d, packet dropped\0A\00", [49 x i8] zeroinitializer }, align 32
@cvm_oct_check_rcv_error._entry_ptr.10 = internal global ptr @cvm_oct_check_rcv_error._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"oct_rx_ready\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 32, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"oct_rx_group\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 38, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 464, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 481, i32 7 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 483, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 366, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 129, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [40 x i8] c"../drivers/staging/octeon/ethernet-rx.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 136, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @cvm_oct_check_rcv_error._entry, ptr @cvm_oct_check_rcv_error._entry.8, ptr @cvm_oct_check_rcv_error._entry_ptr, ptr @cvm_oct_check_rcv_error._entry_ptr.10, ptr @cvm_oct_poll._entry, ptr @cvm_oct_poll._entry_ptr, ptr @oct_rx_ready, ptr @oct_rx_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oct_rx_ready to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oct_rx_group to i32), i32 3712, i32 4640, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_check_rcv_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_check_rcv_error._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_poll_controller(ptr nocapture noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @oct_rx_ready, i32 noundef 4) #4
  %0 = load volatile i32, ptr @oct_rx_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pow_receive_groups to i32))
  %1 = load i32, ptr @pow_receive_groups, align 4
  %shl = shl nuw nsw i32 1, %i.08
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr nonnull @cvm_oct_device) #4, !srcloc !38
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr null) #4, !srcloc !38
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_rx_initialize() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cvm_oct_device to i32))
  %0 = load ptr, ptr @cvm_oct_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %for.cond, label %entry.for.cond5.preheader_crit_edge

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond5.preheader

for.cond:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @cvm_oct_device, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @cvm_oct_device, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.for.cond5.preheader_crit_edge

for.cond.for.cond5.preheader_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond5.preheader

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #7
  unreachable

for.cond5.preheader:                              ; preds = %for.cond.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %.lcssa = phi ptr [ %0, %entry.for.cond5.preheader_crit_edge ], [ %1, %for.cond.for.cond5.preheader_crit_edge ]
  br label %for.body7

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %for.cond5.preheader
  %i.164 = phi i32 [ 0, %for.cond5.preheader ], [ %inc36, %cleanup.for.body7_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pow_receive_groups to i32))
  %2 = load i32, ptr @pow_receive_groups, align 4
  %shl = shl nuw nsw i32 1, %i.164
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body7.cleanup_crit_edge, label %if.end10

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %for.body7
  %arrayidx11 = getelementptr [16 x %struct.oct_rx_group], ptr @oct_rx_group, i32 0, i32 %i.164
  %napi = getelementptr [16 x %struct.oct_rx_group], ptr @oct_rx_group, i32 0, i32 %i.164, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rx_napi_weight to i32))
  %3 = load i32, ptr @rx_napi_weight, align 4
  tail call void @netif_napi_add(ptr noundef nonnull %.lcssa, ptr noundef %napi, ptr noundef nonnull @cvm_oct_napi_poll, i32 noundef %3) #4
  tail call void @napi_enable(ptr noundef %napi) #4
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.164, ptr %arrayidx11, align 8
  %group = getelementptr [16 x %struct.oct_rx_group], ptr @oct_rx_group, i32 0, i32 %i.164, i32 1
  %5 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.164, ptr %group, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %i.164, ptr noundef nonnull @cvm_oct_do_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %napi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx11, align 8
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, i32 noundef %7) #7
  unreachable

if.end24:                                         ; preds = %if.end10
  tail call void @disable_irq_nosync(i32 noundef %7) #4
  %call.i60 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #4
  br i1 %call.i60, label %if.then.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %napi) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end24.cleanup_crit_edge, %for.body7.cleanup_crit_edge
  %inc36 = add nuw nsw i32 %i.164, 1
  %exitcond.not = icmp eq i32 %inc36, 16
  br i1 %exitcond.not, label %for.end37, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.end37:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @oct_rx_ready, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr nonnull @oct_rx_ready, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @oct_rx_ready, ptr nonnull @oct_rx_ready, i32 1, ptr nonnull elementtype(i32) @oct_rx_ready) #4, !srcloc !39
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_napi_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr nonnull @cvm_oct_device) #4, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp.i = icmp sgt i32 %budget, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %napi, i32 -8
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr null) #4, !srcloc !38
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  tail call void @enable_irq(i32 noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_do_interrupt(i32 noundef %irq, ptr noundef %napi_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_id) #4
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__napi_schedule(ptr noundef %napi_id) #4
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_rx_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pow_receive_groups to i32))
  %0 = load i32, ptr @pow_receive_groups, align 4
  %shl = shl nuw nsw i32 1, %i.07
  %and = and i32 %0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [16 x %struct.oct_rx_group], ptr @oct_rx_group, i32 0, i32 %i.07
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 8
  %call = tail call ptr @free_irq(i32 noundef %2, ptr noundef nonnull @cvm_oct_device) #4
  %napi = getelementptr [16 x %struct.oct_rx_group], ptr @oct_rx_group, i32 0, i32 %i.07, i32 2
  tail call void @__netif_napi_del(ptr noundef %napi) #4
  tail call void @synchronize_net() #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 464, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 481, i32 7}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 483, i32 10}
!6 = !{ptr @oct_rx_group, !7, !"oct_rx_group", i1 false, i1 false}
!7 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 38, i32 3}
!8 = !{ptr @oct_rx_ready, !9, !"oct_rx_ready", i1 false, i1 false}
!9 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 32, i32 17}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 366, i32 4}
!12 = distinct !{null, !11, !"_rs", i1 false, i1 false}
!13 = !{ptr @__func__.cvm_oct_poll, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cvm_oct_poll._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @cvm_oct_poll._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"_rs", i1 false, i1 false}
!19 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 129, i32 4}
!20 = !{ptr @__func__.cvm_oct_check_rcv_error, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cvm_oct_check_rcv_error._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @cvm_oct_check_rcv_error._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/staging/octeon/ethernet-rx.c", i32 136, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cvm_oct_check_rcv_error._entry.8, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @cvm_oct_check_rcv_error._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 849888}
!39 = !{i64 2148351600, i64 2148351626, i64 2148351655, i64 2148351689, i64 2148351720, i64 2148351743}
