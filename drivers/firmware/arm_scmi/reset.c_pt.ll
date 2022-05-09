; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/reset.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_reset_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.scmi_reset_info = type { i32, i32, ptr }
%struct.reset_dom_info = type { i8, i8, i32, [16 x i8] }
%struct.scmi_msg_resp_reset_domain_attributes = type { i32, i32, [16 x i8] }
%struct.scmi_msg_reset_domain_reset = type { i32, i32, i32 }
%struct.scmi_msg_reset_notify = type { i32, i32 }
%struct.scmi_reset_issued_report = type { i64, i32, i32, i32 }
%struct.scmi_reset_issued_notify_payld = type { i32, i32, i32 }

@scmi_reset = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 22, ptr null, ptr @scmi_reset_protocol_init, ptr null, ptr @reset_proto_ops, ptr @reset_protocol_events }, [40 x i8] zeroinitializer }, align 32
@reset_proto_ops = internal constant { %struct.scmi_reset_proto_ops, [40 x i8] } { %struct.scmi_reset_proto_ops { ptr @scmi_reset_num_domains_get, ptr @scmi_reset_name_get, ptr @scmi_reset_latency_get, ptr @scmi_reset_domain_reset, ptr @scmi_reset_domain_assert, ptr @scmi_reset_domain_deassert }, [40 x i8] zeroinitializer }, align 32
@reset_protocol_events = internal constant { %struct.scmi_protocol_events, [44 x i8] } { %struct.scmi_protocol_events { i32 4096, ptr @reset_event_ops, ptr @reset_events, i32 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@scmi_reset_protocol_init.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_reset_protocol_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/firmware/arm_scmi/reset.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reset Version %d.%d\0A\00", [43 x i8] zeroinitializer }, align 32
@reset_event_ops = internal constant { %struct.scmi_event_ops, [20 x i8] } { %struct.scmi_event_ops { ptr @scmi_reset_get_num_sources, ptr @scmi_reset_set_notify_enabled, ptr @scmi_reset_fill_custom_report }, [20 x i8] zeroinitializer }, align 32
@reset_events = internal constant { [1 x %struct.scmi_event], [20 x i8] } { [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }], [20 x i8] zeroinitializer }, align 32
@scmi_reset_set_notify_enabled.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scmi_reset_set_notify_enabled\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"SCMI Notifications RESET - FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"scmi_reset\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 326, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"reset_proto_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 198, i32 42 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"reset_protocol_events\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 287, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 302, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"reset_event_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 281, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"reset_events\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 273, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [37 x i8] c"../drivers/firmware/arm_scmi/reset.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 236, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @scmi_reset_unregister, ptr @scmi_reset, ptr @reset_proto_ops, ptr @reset_protocol_events, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @reset_event_ops, ptr @reset_events, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_reset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_proto_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_protocol_events to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_event_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_events to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_reset_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_reset) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_reset_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_reset) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_protocol_init(ptr noundef %ph) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_reset_protocol_init.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_reset_protocol_init, %if.then)) #7
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
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_reset_protocol_init.__UNIQUE_ID_ddebug206, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv38) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 12, i32 noundef 3520) #7
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
  %call.i80 = call i32 %15(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.scmi_reset_attributes_get.exit_crit_edge

if.end45.scmi_reset_attributes_get.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_reset_attributes_get.exit

if.end.i:                                         ; preds = %if.end45
  %16 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %do_xfer.i, align 4
  %20 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t.i, align 4
  %call2.i = call i32 %19(ptr noundef %ph, ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %25, align 1
  %28 = and i32 %27, -65536
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  %num_domains.i = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_domains.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %31 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xops, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer_put.i, align 4
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t.i, align 4
  call void %34(ptr noundef %ph, ptr noundef %36) #7
  br label %scmi_reset_attributes_get.exit

scmi_reset_attributes_get.exit:                   ; preds = %if.end6.i, %if.end45.scmi_reset_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  %num_domains = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_domains, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 24) #7
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !34

devm_kcalloc.exit.thread:                         ; preds = %scmi_reset_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dom_info92 = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %dom_info92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dom_info92, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %scmi_reset_attributes_get.exit
  %42 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ph, align 4
  %44 = extractvalue { i32, i1 } %39, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %44, i32 noundef 3520) #7
  %dom_info = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %dom_info to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5.i.i, ptr %dom_info, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %46 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp94 = icmp sgt i32 %47, 0
  br i1 %cmp94, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %scmi_reset_domain_attributes_get.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %domain.095 = phi i32 [ %inc, %scmi_reset_domain_attributes_get.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %48 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dom_info, align 4
  %add.ptr = getelementptr %struct.reset_dom_info, ptr %49, i32 %domain.095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i81) #7
  %50 = ptrtoint ptr %t.i81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i81, align 4, !annotation !32
  %51 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xops, align 4
  %xfer_get_init.i83 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %xfer_get_init.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xfer_get_init.i83, align 4
  %call.i84 = call i32 %54(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 24, ptr noundef nonnull %t.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i88, label %for.body.scmi_reset_domain_attributes_get.exit_crit_edge

for.body.scmi_reset_domain_attributes_get.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_reset_domain_attributes_get.exit

if.end.i88:                                       ; preds = %for.body
  %55 = ptrtoint ptr %t.i81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %t.i81, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %domain.095) #7
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %58, align 1
  %61 = ptrtoint ptr %t.i81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %t.i81, align 4
  %rx.i86 = getelementptr inbounds %struct.scmi_xfer, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %rx.i86 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx.i86, align 4
  %65 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xops, align 4
  %do_xfer.i87 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %do_xfer.i87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %do_xfer.i87, align 4
  %call3.i = call i32 %68(ptr noundef %ph, ptr noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i88.if.end18.i_crit_edge

if.end.i88.if.end18.i_crit_edge:                  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then5.i:                                       ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %64, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #7
  %.lobit.i = lshr i32 %71, 31
  %72 = trunc i32 %.lobit.i to i8
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %add.ptr, align 4
  %reset_notify.i = getelementptr %struct.reset_dom_info, ptr %49, i32 %domain.095, i32 1
  %and8.i = lshr i32 %71, 30
  %74 = trunc i32 %and8.i to i8
  %75 = and i8 %74, 1
  %76 = ptrtoint ptr %reset_notify.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %reset_notify.i, align 1
  %latency.i = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, ptr %64, i32 0, i32 1
  %77 = ptrtoint ptr %latency.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %latency.i, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %latency_us.i = getelementptr %struct.reset_dom_info, ptr %49, i32 %domain.095, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i = icmp eq i32 %78, -1
  %spec.select.i = select i1 %cmp.i, i32 0, i32 %79
  %80 = ptrtoint ptr %latency_us.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.select.i, ptr %latency_us.i, align 4
  %name.i = getelementptr %struct.reset_dom_info, ptr %49, i32 %domain.095, i32 3
  %name15.i = getelementptr inbounds %struct.scmi_msg_resp_reset_domain_attributes, ptr %64, i32 0, i32 2
  %call17.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name15.i, i32 noundef 16) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then5.i, %if.end.i88.if.end18.i_crit_edge
  %81 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xops, align 4
  %xfer_put.i89 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %xfer_put.i89 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xfer_put.i89, align 4
  %85 = ptrtoint ptr %t.i81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %t.i81, align 4
  call void %84(ptr noundef %ph, ptr noundef %86) #7
  br label %scmi_reset_domain_attributes_get.exit

scmi_reset_domain_attributes_get.exit:            ; preds = %if.end18.i, %for.body.scmi_reset_domain_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i81) #7
  %inc = add nuw nsw i32 %domain.095, 1
  %87 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc, %88
  br i1 %cmp, label %scmi_reset_domain_attributes_get.exit.for.body_crit_edge, label %scmi_reset_domain_attributes_get.exit.for.end_crit_edge

scmi_reset_domain_attributes_get.exit.for.end_crit_edge: ; preds = %scmi_reset_domain_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

scmi_reset_domain_attributes_get.exit.for.body_crit_edge: ; preds = %scmi_reset_domain_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %scmi_reset_domain_attributes_get.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %89 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %version, align 4
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %call.i, align 4
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %92 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_priv, align 4
  %call58 = call i32 %93(ptr noundef %ph, ptr noundef nonnull %call.i) #7
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
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_num_domains_get(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %num_domains = getelementptr inbounds %struct.scmi_reset_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_reset_name_get(ptr noundef %ph, i32 noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %dom_info = getelementptr inbounds %struct.scmi_reset_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %name = getelementptr %struct.reset_dom_info, ptr %3, i32 %domain, i32 3
  ret ptr %name
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_latency_get(ptr noundef %ph, i32 noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %dom_info = getelementptr inbounds %struct.scmi_reset_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %latency_us = getelementptr %struct.reset_dom_info, ptr %3, i32 %domain, i32 2
  %4 = ptrtoint ptr %latency_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %latency_us, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_domain_reset(ptr noundef %ph, i32 noundef %domain) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !32
  %get_priv.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv.i, align 4
  %call.i = tail call ptr %2(ptr noundef %ph) #7
  %dom_info.i = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dom_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dom_info.i, align 4
  %add.ptr.i = getelementptr %struct.reset_dom_info, ptr %4, i32 %domain
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4, !range !35
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %7 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_get_init.i, align 4
  %call1.i = call i32 %10(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.scmi_domain_reset.exit_crit_edge

entry.scmi_domain_reset.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_domain_reset.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 16777216, i32 83886080
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %domain) #7
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %14, align 4
  %flags5.i = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %flags5.i, align 4
  %reset_state.i = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reset_state.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xops.i, align 4
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %do_xfer_with_response.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %do_xfer_with_response.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %do_xfer_with_response.i, align 4
  %25 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %t.i, align 4
  %call10.i = call i32 %24(ptr noundef %ph, ptr noundef %26) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %do_xfer.i, align 4
  %29 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t.i, align 4
  %call12.i = call i32 %28(ptr noundef %ph, ptr noundef %30) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then8.i
  %ret.0.i = phi i32 [ %call10.i, %if.then8.i ], [ %call12.i, %if.else.i ]
  %31 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer_put.i, align 4
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t.i, align 4
  call void %34(ptr noundef %ph, ptr noundef %36) #7
  br label %scmi_domain_reset.exit

scmi_domain_reset.exit:                           ; preds = %if.end13.i, %entry.scmi_domain_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end13.i ], [ %call1.i, %entry.scmi_domain_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_domain_assert(ptr noundef %ph, i32 noundef %domain) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !32
  %get_priv.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv.i, align 4
  %call.i = tail call ptr %2(ptr noundef %ph) #7
  %dom_info.i = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dom_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dom_info.i, align 4
  %add.ptr.i = getelementptr %struct.reset_dom_info, ptr %4, i32 %domain
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4, !range !35
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %7 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_get_init.i, align 4
  %call1.i = call i32 %10(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.scmi_domain_reset.exit_crit_edge

entry.scmi_domain_reset.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_domain_reset.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 33554432, i32 100663296
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %domain) #7
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %14, align 4
  %flags5.i = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %flags5.i, align 4
  %reset_state.i = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reset_state.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xops.i, align 4
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %do_xfer_with_response.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %do_xfer_with_response.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %do_xfer_with_response.i, align 4
  %25 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %t.i, align 4
  %call10.i = call i32 %24(ptr noundef %ph, ptr noundef %26) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %do_xfer.i, align 4
  %29 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t.i, align 4
  %call12.i = call i32 %28(ptr noundef %ph, ptr noundef %30) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then8.i
  %ret.0.i = phi i32 [ %call10.i, %if.then8.i ], [ %call12.i, %if.else.i ]
  %31 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer_put.i, align 4
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t.i, align 4
  call void %34(ptr noundef %ph, ptr noundef %36) #7
  br label %scmi_domain_reset.exit

scmi_domain_reset.exit:                           ; preds = %if.end13.i, %entry.scmi_domain_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end13.i ], [ %call1.i, %entry.scmi_domain_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_domain_deassert(ptr noundef %ph, i32 noundef %domain) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !32
  %get_priv.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv.i, align 4
  %call.i = tail call ptr %2(ptr noundef %ph) #7
  %dom_info.i = getelementptr inbounds %struct.scmi_reset_info, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dom_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dom_info.i, align 4
  %add.ptr.i = getelementptr %struct.reset_dom_info, ptr %4, i32 %domain
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4, !range !35
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %7 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_get_init.i, align 4
  %call1.i = call i32 %10(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %entry.scmi_domain_reset.exit_crit_edge

entry.scmi_domain_reset.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_domain_reset.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 67108864
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %domain) #7
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %14, align 4
  %flags5.i = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %flags5.i, align 4
  %reset_state.i = getelementptr inbounds %struct.scmi_msg_reset_domain_reset, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %reset_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reset_state.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xops.i, align 4
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %do_xfer_with_response.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %do_xfer_with_response.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %do_xfer_with_response.i, align 4
  %25 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %t.i, align 4
  %call10.i = call i32 %24(ptr noundef %ph, ptr noundef %26) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %do_xfer.i, align 4
  %29 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t.i, align 4
  %call12.i = call i32 %28(ptr noundef %ph, ptr noundef %30) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then8.i
  %ret.0.i = phi i32 [ %call10.i, %if.then8.i ], [ %call12.i, %if.else.i ]
  %31 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xfer_put.i, align 4
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t.i, align 4
  call void %34(ptr noundef %ph, ptr noundef %36) #7
  br label %scmi_domain_reset.exit

scmi_domain_reset.exit:                           ; preds = %if.end13.i, %entry.scmi_domain_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end13.i ], [ %call1.i, %entry.scmi_domain_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_get_num_sources(ptr noundef %ph) #2 align 64 {
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
  %num_domains = getelementptr inbounds %struct.scmi_reset_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reset_set_notify_enabled(ptr noundef %ph, i8 noundef zeroext %evt_id, i32 noundef %src_id, i1 noundef zeroext %enable) #2 align 64 {
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
  %call.i = call i32 %4(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %scmi_reset_notify.exit, label %scmi_reset_notify.exit.thread

scmi_reset_notify.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %do.body

scmi_reset_notify.exit:                           ; preds = %entry
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
  %11 = select i1 %enable, i32 16777216, i32 0
  %event_control.i = getelementptr inbounds %struct.scmi_msg_reset_notify, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %event_control.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %event_control.i, align 4
  %13 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %do_xfer.i, align 4
  %17 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t.i, align 4
  %call3.i = call i32 %16(ptr noundef %ph, ptr noundef %18) #7
  %19 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfer_put.i, align 4
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t.i, align 4
  call void %22(ptr noundef %ph, ptr noundef %24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool1.not = icmp eq i32 %call3.i, 0
  br i1 %tobool1.not, label %scmi_reset_notify.exit.if.end8_crit_edge, label %scmi_reset_notify.exit.do.body_crit_edge

scmi_reset_notify.exit.do.body_crit_edge:         ; preds = %scmi_reset_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

scmi_reset_notify.exit.if.end8_crit_edge:         ; preds = %scmi_reset_notify.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %scmi_reset_notify.exit.do.body_crit_edge, %scmi_reset_notify.exit.thread
  %retval.0.i1215 = phi i32 [ %call.i, %scmi_reset_notify.exit.thread ], [ %call3.i, %scmi_reset_notify.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_reset_set_notify_enabled.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_reset_set_notify_enabled, %if.then7)) #7
          to label %if.end8 [label %if.then7], !srcloc !33

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %evt_id to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_reset_set_notify_enabled.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %src_id, i32 noundef %retval.0.i1215) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %scmi_reset_notify.exit.if.end8_crit_edge
  %retval.0.i1216 = phi i32 [ %retval.0.i1215, %if.then7 ], [ 0, %scmi_reset_notify.exit.if.end8_crit_edge ], [ %retval.0.i1215, %do.body ]
  ret i32 %retval.0.i1216
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @scmi_reset_fill_custom_report(ptr nocapture noundef readnone %ph, i8 noundef zeroext %evt_id, i64 noundef %timestamp, ptr nocapture noundef readonly %payld, i32 noundef %payld_sz, ptr noundef writeonly %report, ptr nocapture noundef writeonly %src_id) #6 align 64 {
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
  %agent_id5 = getelementptr inbounds %struct.scmi_reset_issued_report, ptr %report, i32 0, i32 1
  %4 = ptrtoint ptr %agent_id5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %agent_id5, align 8
  %domain_id = getelementptr inbounds %struct.scmi_reset_issued_notify_payld, ptr %payld, i32 0, i32 1
  %5 = ptrtoint ptr %domain_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %domain_id, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %domain_id6 = getelementptr inbounds %struct.scmi_reset_issued_report, ptr %report, i32 0, i32 2
  %8 = ptrtoint ptr %domain_id6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %domain_id6, align 4
  %reset_state = getelementptr inbounds %struct.scmi_reset_issued_notify_payld, ptr %payld, i32 0, i32 2
  %9 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reset_state, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %reset_state7 = getelementptr inbounds %struct.scmi_reset_issued_report, ptr %report, i32 0, i32 3
  %12 = ptrtoint ptr %reset_state7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reset_state7, align 8
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
!1 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 334, i32 1}
!2 = !{ptr @scmi_reset, !3, !"scmi_reset", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 326, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 302, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_reset_protocol_init.__UNIQUE_ID_ddebug206, !5, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!10 = !{ptr @reset_proto_ops, !11, !"reset_proto_ops", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 198, i32 42}
!12 = !{ptr @reset_protocol_events, !13, !"reset_protocol_events", i1 false, i1 false}
!13 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 287, i32 42}
!14 = !{ptr @reset_event_ops, !15, !"reset_event_ops", i1 false, i1 false}
!15 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 281, i32 36}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 236, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @scmi_reset_set_notify_enabled.__UNIQUE_ID_ddebug205, !17, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @reset_events, !22, !"reset_events", i1 false, i1 false}
!22 = !{!"../drivers/firmware/arm_scmi/reset.c", i32 273, i32 32}
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
!33 = !{i64 2148959532, i64 2148959537, i64 2148959550, i64 2148959594, i64 2148959628, i64 2148959649}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i8 0, i8 2}
