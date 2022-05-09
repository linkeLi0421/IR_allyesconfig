; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/power.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_power_proto_ops = type { ptr, ptr, ptr, ptr }
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
%struct.scmi_power_info = type { i32, i32, i64, i32, ptr }
%struct.scmi_msg_resp_power_attributes = type { i16, i16, i32, i32, i32 }
%struct.power_dom_info = type { i8, i8, i8, [16 x i8] }
%struct.scmi_msg_resp_power_domain_attributes = type { i32, [16 x i8] }
%struct.scmi_power_set_state = type { i32, i32, i32 }
%struct.scmi_power_state_notify = type { i32, i32 }
%struct.scmi_power_state_changed_report = type { i64, i32, i32, i32 }
%struct.scmi_power_state_notify_payld = type { i32, i32, i32 }

@scmi_power = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 17, ptr null, ptr @scmi_power_protocol_init, ptr null, ptr @power_proto_ops, ptr @power_protocol_events }, [40 x i8] zeroinitializer }, align 32
@power_proto_ops = internal constant { %struct.scmi_power_proto_ops, [16 x i8] } { %struct.scmi_power_proto_ops { ptr @scmi_power_num_domains_get, ptr @scmi_power_name_get, ptr @scmi_power_state_set, ptr @scmi_power_state_get }, [16 x i8] zeroinitializer }, align 32
@power_protocol_events = internal constant { %struct.scmi_protocol_events, [44 x i8] } { %struct.scmi_protocol_events { i32 4096, ptr @power_event_ops, ptr @power_events, i32 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@scmi_power_protocol_init.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_power_protocol_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/firmware/arm_scmi/power.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Power Version %d.%d\0A\00", [43 x i8] zeroinitializer }, align 32
@power_event_ops = internal constant { %struct.scmi_event_ops, [20 x i8] } { %struct.scmi_event_ops { ptr @scmi_power_get_num_sources, ptr @scmi_power_set_notify_enabled, ptr @scmi_power_fill_custom_report }, [20 x i8] zeroinitializer }, align 32
@power_events = internal constant { [1 x %struct.scmi_event], [20 x i8] } { [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }], [20 x i8] zeroinitializer }, align 32
@scmi_power_set_notify_enabled.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scmi_power_set_notify_enabled\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"FAIL_ENABLE - evt[%X] dom[%d] - ret:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SCMI Notifications POWER - FAIL_ENABLE - evt[%X] dom[%d] - ret:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"scmi_power\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 314, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"power_proto_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 186, i32 42 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"power_protocol_events\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 274, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 289, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"power_event_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 268, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"power_events\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 259, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [37 x i8] c"../drivers/firmware/arm_scmi/power.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 222, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @scmi_power_unregister, ptr @scmi_power, ptr @power_proto_ops, ptr @power_protocol_events, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @power_event_ops, ptr @power_events, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_power to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_proto_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_protocol_events to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_event_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_events to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_power_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_power) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_power_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_power) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %t.i81 = alloca ptr, align 4
  %t.i = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !32
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %ph, ptr noundef nonnull %version) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_power_protocol_init.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_power_protocol_init, %if.then)) #7
          to label %do.end40 [label %if.then], !srcloc !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ph, align 4
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %shr = lshr i32 %8, 16
  %conv38 = and i32 %8, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_power_protocol_init.__UNIQUE_ID_ddebug206, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv38) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 24, i32 noundef 3520) #7
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %do.end40.cleanup_crit_edge, label %if.end45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !32
  %12 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i80 = call i32 %15(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.scmi_power_attributes_get.exit_crit_edge

if.end45.scmi_power_attributes_get.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_power_attributes_get.exit

if.end.i:                                         ; preds = %if.end45
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx.i, align 4
  %20 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %do_xfer.i, align 4
  %call2.i = call i32 %23(ptr noundef %ph, ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %19, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %conv.i = zext i16 %26 to i32
  %num_domains5.i = getelementptr inbounds %struct.scmi_power_info, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %num_domains5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %num_domains5.i, align 4
  %stats_addr_low.i = getelementptr inbounds %struct.scmi_msg_resp_power_attributes, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %stats_addr_low.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stats_addr_low.i, align 4
  %stats_addr_high.i = getelementptr inbounds %struct.scmi_msg_resp_power_attributes, ptr %19, i32 0, i32 3
  %30 = ptrtoint ptr %stats_addr_high.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats_addr_high.i, align 4
  %32 = zext i32 %31 to i64
  %33 = zext i32 %29 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %36 = call i64 @llvm.bswap.i64(i64 %35) #7
  %stats_addr.i = getelementptr inbounds %struct.scmi_power_info, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %stats_addr.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %stats_addr.i, align 8
  %stats_size.i = getelementptr inbounds %struct.scmi_msg_resp_power_attributes, ptr %19, i32 0, i32 4
  %38 = ptrtoint ptr %stats_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stats_size.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #7
  %stats_size8.i = getelementptr inbounds %struct.scmi_power_info, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %stats_size8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %stats_size8.i, align 8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then4.i, %if.end.i.if.end9.i_crit_edge
  %42 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xops, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xfer_put.i, align 4
  %46 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %t.i, align 4
  call void %45(ptr noundef %ph, ptr noundef %47) #7
  br label %scmi_power_attributes_get.exit

scmi_power_attributes_get.exit:                   ; preds = %if.end9.i, %if.end45.scmi_power_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  %num_domains = getelementptr inbounds %struct.scmi_power_info, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_domains, align 4
  %50 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 19) #7
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !34

devm_kcalloc.exit.thread:                         ; preds = %scmi_power_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dom_info92 = getelementptr inbounds %struct.scmi_power_info, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %dom_info92 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %dom_info92, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %scmi_power_attributes_get.exit
  %53 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ph, align 4
  %55 = extractvalue { i32, i1 } %50, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef %55, i32 noundef 3520) #7
  %dom_info = getelementptr inbounds %struct.scmi_power_info, ptr %call.i, i32 0, i32 4
  %56 = ptrtoint ptr %dom_info to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %dom_info, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %57 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp94 = icmp sgt i32 %58, 0
  br i1 %cmp94, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %scmi_power_domain_attributes_get.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %domain.095 = phi i32 [ %inc, %scmi_power_domain_attributes_get.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %59 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dom_info, align 4
  %add.ptr = getelementptr %struct.power_dom_info, ptr %60, i32 %domain.095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i81) #7
  %61 = ptrtoint ptr %t.i81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i81, align 4, !annotation !32
  %62 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xops, align 4
  %xfer_get_init.i83 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %xfer_get_init.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xfer_get_init.i83, align 4
  %call.i84 = call i32 %65(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %t.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i88, label %for.body.scmi_power_domain_attributes_get.exit_crit_edge

for.body.scmi_power_domain_attributes_get.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_power_domain_attributes_get.exit

if.end.i88:                                       ; preds = %for.body
  %66 = ptrtoint ptr %t.i81 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %t.i81, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx.i, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %domain.095) #7
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %69, align 1
  %72 = ptrtoint ptr %t.i81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %t.i81, align 4
  %rx.i86 = getelementptr inbounds %struct.scmi_xfer, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %rx.i86 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx.i86, align 4
  %76 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xops, align 4
  %do_xfer.i87 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %do_xfer.i87 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %do_xfer.i87, align 4
  %call3.i = call i32 %79(ptr noundef %ph, ptr noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i88.if.end17.i_crit_edge

if.end.i88.if.end17.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then5.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %75, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81) #7
  %state_set_notify.i = getelementptr %struct.power_dom_info, ptr %60, i32 %domain.095, i32 2
  %.lobit.i = lshr i32 %82, 31
  %83 = trunc i32 %.lobit.i to i8
  %84 = ptrtoint ptr %state_set_notify.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %state_set_notify.i, align 1
  %state_set_async.i = getelementptr %struct.power_dom_info, ptr %60, i32 %domain.095, i32 1
  %and8.i = lshr i32 %82, 30
  %85 = trunc i32 %and8.i to i8
  %86 = and i8 %85, 1
  %87 = ptrtoint ptr %state_set_async.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %state_set_async.i, align 1
  %and11.i = lshr i32 %82, 29
  %88 = trunc i32 %and11.i to i8
  %89 = and i8 %88, 1
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %add.ptr, align 1
  %name.i = getelementptr %struct.power_dom_info, ptr %60, i32 %domain.095, i32 3
  %name14.i = getelementptr inbounds %struct.scmi_msg_resp_power_domain_attributes, ptr %75, i32 0, i32 1
  %call16.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name14.i, i32 noundef 16) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then5.i, %if.end.i88.if.end17.i_crit_edge
  %91 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %xops, align 4
  %xfer_put.i89 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %xfer_put.i89 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %xfer_put.i89, align 4
  %95 = ptrtoint ptr %t.i81 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %t.i81, align 4
  call void %94(ptr noundef %ph, ptr noundef %96) #7
  br label %scmi_power_domain_attributes_get.exit

scmi_power_domain_attributes_get.exit:            ; preds = %if.end17.i, %for.body.scmi_power_domain_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i81) #7
  %inc = add nuw nsw i32 %domain.095, 1
  %97 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc, %98
  br i1 %cmp, label %scmi_power_domain_attributes_get.exit.for.body_crit_edge, label %scmi_power_domain_attributes_get.exit.for.end_crit_edge

scmi_power_domain_attributes_get.exit.for.end_crit_edge: ; preds = %scmi_power_domain_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

scmi_power_domain_attributes_get.exit.for.body_crit_edge: ; preds = %scmi_power_domain_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %scmi_power_domain_attributes_get.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %99 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %version, align 4
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %call.i, align 8
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %102 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %set_priv, align 4
  %call58 = call i32 %103(ptr noundef %ph, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %for.end ], [ -12, %do.end40.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_num_domains_get(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %num_domains = getelementptr inbounds %struct.scmi_power_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_power_name_get(ptr noundef %ph, i32 noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %dom_info = getelementptr inbounds %struct.scmi_power_info, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %name = getelementptr %struct.power_dom_info, ptr %3, i32 %domain, i32 3
  ret ptr %name
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_state_set(ptr noundef %ph, i32 noundef %domain, i32 noundef %state) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !32
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %domain)
  %domain1 = getelementptr inbounds %struct.scmi_power_set_state, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %domain1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %domain1, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %state)
  %state2 = getelementptr inbounds %struct.scmi_power_set_state, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %state2, align 4
  %14 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %do_xfer, align 4
  %18 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t, align 4
  %call4 = call i32 %17(ptr noundef %ph, ptr noundef %19) #7
  %20 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer_put, align 4
  %24 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t, align 4
  call void %23(ptr noundef %ph, ptr noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_state_get(ptr noundef %ph, i32 noundef %domain, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !32
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %domain) #7
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %8, align 1
  %11 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %do_xfer, align 4
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t, align 4
  %call2 = call i32 %14(ptr noundef %ph, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %20, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %state, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %25 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xfer_put, align 4
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t, align 4
  call void %28(ptr noundef %ph, ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end7 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_get_num_sources(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num_domains = getelementptr inbounds %struct.scmi_power_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_power_set_notify_enabled(ptr noundef %ph, i8 noundef zeroext %evt_id, i32 noundef %src_id, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !32
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %4(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %scmi_power_request_notify.exit, label %scmi_power_request_notify.exit.thread

scmi_power_request_notify.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %do.body

scmi_power_request_notify.exit:                   ; preds = %entry
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %src_id) #7
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %cond.i = select i1 %enable, i32 16777216, i32 0
  %notify_enable.i = getelementptr inbounds %struct.scmi_power_state_notify, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %notify_enable.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %notify_enable.i, align 4
  %12 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %do_xfer.i, align 4
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t.i, align 4
  %call4.i = call i32 %15(ptr noundef %ph, ptr noundef %17) #7
  %18 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfer_put.i, align 4
  %22 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t.i, align 4
  call void %21(ptr noundef %ph, ptr noundef %23) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool1.not = icmp eq i32 %call4.i, 0
  br i1 %tobool1.not, label %scmi_power_request_notify.exit.if.end8_crit_edge, label %scmi_power_request_notify.exit.do.body_crit_edge

scmi_power_request_notify.exit.do.body_crit_edge: ; preds = %scmi_power_request_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

scmi_power_request_notify.exit.if.end8_crit_edge: ; preds = %scmi_power_request_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %scmi_power_request_notify.exit.do.body_crit_edge, %scmi_power_request_notify.exit.thread
  %retval.0.i1215 = phi i32 [ %call.i, %scmi_power_request_notify.exit.thread ], [ %call4.i, %scmi_power_request_notify.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_power_set_notify_enabled.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_power_set_notify_enabled, %if.then7)) #7
          to label %if.end8 [label %if.then7], !srcloc !33

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %evt_id to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_power_set_notify_enabled.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %src_id, i32 noundef %retval.0.i1215) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %scmi_power_request_notify.exit.if.end8_crit_edge
  %retval.0.i1216 = phi i32 [ %retval.0.i1215, %if.then7 ], [ 0, %scmi_power_request_notify.exit.if.end8_crit_edge ], [ %retval.0.i1215, %do.body ]
  ret i32 %retval.0.i1216
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @scmi_power_fill_custom_report(ptr nocapture noundef readnone %ph, i8 noundef zeroext %evt_id, i64 noundef %timestamp, ptr nocapture noundef readonly %payld, i32 noundef %payld_sz, ptr noundef writeonly %report, ptr nocapture noundef writeonly %src_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %evt_id)
  %cmp.not = icmp eq i8 %evt_id, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %payld_sz)
  %cmp2.not = icmp eq i32 %payld_sz, 12
  %or.cond = and i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %timestamp, ptr %report, align 8
  %1 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payld, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %agent_id5 = getelementptr inbounds %struct.scmi_power_state_changed_report, ptr %report, i32 0, i32 1
  %4 = ptrtoint ptr %agent_id5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %agent_id5, align 8
  %domain_id = getelementptr inbounds %struct.scmi_power_state_notify_payld, ptr %payld, i32 0, i32 1
  %5 = ptrtoint ptr %domain_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %domain_id, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %domain_id6 = getelementptr inbounds %struct.scmi_power_state_changed_report, ptr %report, i32 0, i32 2
  %8 = ptrtoint ptr %domain_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %domain_id6, align 4
  %power_state = getelementptr inbounds %struct.scmi_power_state_notify_payld, ptr %payld, i32 0, i32 2
  %9 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power_state, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %power_state7 = getelementptr inbounds %struct.scmi_power_state_changed_report, ptr %report, i32 0, i32 3
  %12 = ptrtoint ptr %power_state7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %power_state7, align 8
  %13 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %src_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %report, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/power.c", i32 322, i32 1}
!2 = !{ptr @scmi_power, !3, !"scmi_power", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/power.c", i32 314, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/power.c", i32 289, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_power_protocol_init.__UNIQUE_ID_ddebug206, !5, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!10 = !{ptr @power_proto_ops, !11, !"power_proto_ops", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/power.c", i32 186, i32 42}
!12 = !{ptr @power_protocol_events, !13, !"power_protocol_events", i1 false, i1 false}
!13 = !{!"../drivers/firmware/arm_scmi/power.c", i32 274, i32 42}
!14 = !{ptr @power_event_ops, !15, !"power_event_ops", i1 false, i1 false}
!15 = !{!"../drivers/firmware/arm_scmi/power.c", i32 268, i32 36}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/power.c", i32 222, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @scmi_power_set_notify_enabled.__UNIQUE_ID_ddebug205, !17, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @power_events, !22, !"power_events", i1 false, i1 false}
!22 = !{!"../drivers/firmware/arm_scmi/power.c", i32 259, i32 32}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i64 2148959076, i64 2148959081, i64 2148959094, i64 2148959138, i64 2148959172, i64 2148959193}
!34 = !{!"branch_weights", i32 1, i32 2000}
