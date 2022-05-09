; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/system.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/system.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.scmi_system_power_state_notifier_report = type { i64, i32, i32, i32 }
%struct.scmi_system_power_state_notifier_payld = type { i32, i32, i32 }

@scmi_system = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 18, ptr null, ptr @scmi_system_protocol_init, ptr null, ptr null, ptr @system_protocol_events }, [40 x i8] zeroinitializer }, align 32
@system_protocol_events = internal constant { %struct.scmi_protocol_events, [44 x i8] } { %struct.scmi_protocol_events { i32 4096, ptr @system_event_ops, ptr @system_events, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@scmi_system_protocol_init.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scmi_system_protocol_init\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/arm_scmi/system.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"System Power Version %d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@system_event_ops = internal constant { %struct.scmi_event_ops, [20 x i8] } { %struct.scmi_event_ops { ptr null, ptr @scmi_system_set_notify_enabled, ptr @scmi_system_fill_custom_report }, [20 x i8] zeroinitializer }, align 32
@system_events = internal constant { [1 x %struct.scmi_event], [20 x i8] } { [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }], [20 x i8] zeroinitializer }, align 32
@scmi_system_set_notify_enabled.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scmi_system_set_notify_enabled\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FAIL_ENABLE - evt[%X] - ret:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"SCMI Notifications SYSTEM - FAIL_ENABLE - evt[%X] - ret:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"scmi_system\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 132, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"system_protocol_events\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 106, i32 42 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 121, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"system_event_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 101, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"system_events\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 91, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [38 x i8] c"../drivers/firmware/arm_scmi/system.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 64, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @scmi_system_unregister, ptr @scmi_system, ptr @system_protocol_events, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @system_event_ops, ptr @system_events, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_system to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_protocol_events to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_event_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_events to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_system_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_system) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_system_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_system) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_system_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #6
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !30
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %ph, ptr noundef nonnull %version) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_system_protocol_init.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_system_protocol_init, %if.then)) #6
          to label %do.end40 [label %if.then], !srcloc !31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ph, align 4
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %shr = lshr i32 %8, 16
  %conv38 = and i32 %8, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_system_protocol_init.__UNIQUE_ID_ddebug206, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv38) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 4, i32 noundef 3520) #6
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %do.end40.cleanup_crit_edge, label %if.end45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %14 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_priv, align 4
  %call47 = call i32 %15(ptr noundef %ph, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end45 ], [ -12, %do.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_system_set_notify_enabled(ptr noundef %ph, i8 noundef zeroext %evt_id, i32 noundef %src_id, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #6
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !30
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %4(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %scmi_system_request_notify.exit, label %scmi_system_request_notify.exit.thread

scmi_system_request_notify.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #6
  br label %do.body

scmi_system_request_notify.exit:                  ; preds = %entry
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %cond.i = select i1 %enable, i32 16777216, i32 0
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %8, align 4
  %10 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %do_xfer.i, align 4
  %14 = load ptr, ptr %t.i, align 4
  %call3.i = call i32 %13(ptr noundef %ph, ptr noundef %14) #6
  %15 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfer_put.i, align 4
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.i, align 4
  call void %18(ptr noundef %ph, ptr noundef %20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool1.not = icmp eq i32 %call3.i, 0
  br i1 %tobool1.not, label %scmi_system_request_notify.exit.if.end8_crit_edge, label %scmi_system_request_notify.exit.do.body_crit_edge

scmi_system_request_notify.exit.do.body_crit_edge: ; preds = %scmi_system_request_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

scmi_system_request_notify.exit.if.end8_crit_edge: ; preds = %scmi_system_request_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.body:                                          ; preds = %scmi_system_request_notify.exit.do.body_crit_edge, %scmi_system_request_notify.exit.thread
  %retval.0.i1114 = phi i32 [ %call.i, %scmi_system_request_notify.exit.thread ], [ %call3.i, %scmi_system_request_notify.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_system_set_notify_enabled.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_system_set_notify_enabled, %if.then7)) #6
          to label %if.end8 [label %if.then7], !srcloc !31

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %evt_id to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_system_set_notify_enabled.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %retval.0.i1114) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %scmi_system_request_notify.exit.if.end8_crit_edge
  %retval.0.i1115 = phi i32 [ %retval.0.i1114, %if.then7 ], [ 0, %scmi_system_request_notify.exit.if.end8_crit_edge ], [ %retval.0.i1114, %do.body ]
  ret i32 %retval.0.i1115
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @scmi_system_fill_custom_report(ptr nocapture noundef readnone %ph, i8 noundef zeroext %evt_id, i64 noundef %timestamp, ptr nocapture noundef readonly %payld, i32 noundef %payld_sz, ptr noundef writeonly %report, ptr nocapture noundef writeonly %src_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %evt_id)
  %cmp.not = icmp eq i8 %evt_id, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %payld_sz)
  %cmp2.not = icmp eq i32 %payld_sz, 12
  %or.cond = and i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %timestamp, ptr %report, align 8
  %1 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payld, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %agent_id5 = getelementptr inbounds %struct.scmi_system_power_state_notifier_report, ptr %report, i32 0, i32 1
  %4 = ptrtoint ptr %agent_id5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %agent_id5, align 8
  %flags = getelementptr inbounds %struct.scmi_system_power_state_notifier_payld, ptr %payld, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %flags6 = getelementptr inbounds %struct.scmi_system_power_state_notifier_report, ptr %report, i32 0, i32 2
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags6, align 4
  %system_state = getelementptr inbounds %struct.scmi_system_power_state_notifier_payld, ptr %payld, i32 0, i32 2
  %9 = ptrtoint ptr %system_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %system_state, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %system_state7 = getelementptr inbounds %struct.scmi_system_power_state_notifier_report, ptr %report, i32 0, i32 3
  %12 = ptrtoint ptr %system_state7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %system_state7, align 8
  %13 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %src_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %report, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/system.c", i32 140, i32 1}
!2 = !{ptr @scmi_system, !3, !"scmi_system", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/system.c", i32 132, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/system.c", i32 121, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_system_protocol_init.__UNIQUE_ID_ddebug206, !5, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!10 = !{ptr @system_protocol_events, !11, !"system_protocol_events", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/system.c", i32 106, i32 42}
!12 = !{ptr @system_event_ops, !13, !"system_event_ops", i1 false, i1 false}
!13 = !{!"../drivers/firmware/arm_scmi/system.c", i32 101, i32 36}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/arm_scmi/system.c", i32 64, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @scmi_system_set_notify_enabled.__UNIQUE_ID_ddebug205, !15, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!18 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @system_events, !20, !"system_events", i1 false, i1 false}
!20 = !{!"../drivers/firmware/arm_scmi/system.c", i32 91, i32 32}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 2148954842, i64 2148954847, i64 2148954860, i64 2148954904, i64 2148954938, i64 2148954959}
