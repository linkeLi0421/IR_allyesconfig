; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/clock.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_clk_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.clock_info = type { i32, i32, i32, %struct.atomic_t, ptr }
%struct.scmi_msg_resp_clock_protocol_attributes = type { i16, i8, i8 }
%struct.scmi_clock_info = type { [16 x i8], i8, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { i32, [16 x i64] }
%struct.scmi_msg_resp_clock_attributes = type { i32, [16 x i8] }
%struct.scmi_msg_clock_describe_rates = type { i32, i32 }
%struct.scmi_msg_resp_clock_describe_rates = type { i32, [0 x %struct.anon.48] }
%struct.anon.48 = type { i32, i32 }
%struct.scmi_clock_set_rate = type { i32, i32, i32, i32 }
%struct.scmi_clock_set_config = type { i32, i32 }

@scmi_clock = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 20, ptr null, ptr @scmi_clock_protocol_init, ptr null, ptr @clk_proto_ops, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_proto_ops = internal constant { %struct.scmi_clk_proto_ops, [40 x i8] } { %struct.scmi_clk_proto_ops { ptr @scmi_clock_count_get, ptr @scmi_clock_info_get, ptr @scmi_clock_rate_get, ptr @scmi_clock_rate_set, ptr @scmi_clock_enable, ptr @scmi_clock_disable }, [40 x i8] zeroinitializer }, align 32
@scmi_clock_protocol_init.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_clock_protocol_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/firmware/arm_scmi/clock.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Clock Version %d.%d\0A\00", [43 x i8] zeroinitializer }, align 32
@scmi_clock_describe_rates_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No. of rates > MAX_NUM_RATES\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scmi_clock_describe_rates_get\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_clock_describe_rates_get._entry_ptr = internal global ptr @scmi_clock_describe_rates_get._entry, section ".printk_index", align 4
@scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Min %llu Max %llu Step %llu Hz\0A\00", [32 x i8] zeroinitializer }, align 32
@scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rate %llu Hz\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"scmi_clock\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 369, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"clk_proto_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 326, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 343, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 176, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 184, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [37 x i8] c"../drivers/firmware/arm_scmi/clock.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 193, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @scmi_clock_describe_rates_get._entry, ptr @scmi_clock_describe_rates_get._entry_ptr, ptr @scmi_clock_unregister, ptr @scmi_clock, ptr @clk_proto_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_clock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_proto_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_clock_describe_rates_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_clock_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_clock) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_clock_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_clock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clock_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %t.i90 = alloca ptr, align 4
  %t.i = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #9
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !34
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %ph, ptr noundef nonnull %version) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_clock_protocol_init.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_clock_protocol_init, %if.then)) #9
          to label %do.end40 [label %if.then], !srcloc !35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ph, align 4
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %shr = lshr i32 %8, 16
  %conv38 = and i32 %8, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_clock_protocol_init.__UNIQUE_ID_ddebug207, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv38) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 20, i32 noundef 3520) #9
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %do.end40.cleanup_crit_edge, label %if.end45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !34
  %12 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i89 = call i32 %15(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.scmi_clock_protocol_attributes_get.exit_crit_edge

if.end45.scmi_clock_protocol_attributes_get.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_clock_protocol_attributes_get.exit

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
  %call2.i = call i32 %23(ptr noundef %ph, ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %19, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #9
  %conv.i = zext i16 %26 to i32
  %num_clocks5.i = getelementptr inbounds %struct.clock_info, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %num_clocks5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %num_clocks5.i, align 4
  %max_async_req.i = getelementptr inbounds %struct.scmi_msg_resp_clock_protocol_attributes, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %max_async_req.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_async_req.i, align 2
  %conv6.i = zext i8 %29 to i32
  %max_async_req7.i = getelementptr inbounds %struct.clock_info, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %max_async_req7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv6.i, ptr %max_async_req7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.end.i.if.end8.i_crit_edge
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
  call void %34(ptr noundef %ph, ptr noundef %36) #9
  br label %scmi_clock_protocol_attributes_get.exit

scmi_clock_protocol_attributes_get.exit:          ; preds = %if.end8.i, %if.end45.scmi_clock_protocol_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  %num_clocks = getelementptr inbounds %struct.clock_info, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_clocks, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 160) #9
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !36

devm_kcalloc.exit.thread:                         ; preds = %scmi_clock_protocol_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %clk102 = getelementptr inbounds %struct.clock_info, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %clk102 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %clk102, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %scmi_clock_protocol_attributes_get.exit
  %42 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ph, align 4
  %44 = extractvalue { i32, i1 } %39, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %44, i32 noundef 3520) #9
  %clk = getelementptr inbounds %struct.clock_info, ptr %call.i, i32 0, i32 4
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call5.i.i, ptr %clk, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %46 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp106 = icmp sgt i32 %47, 0
  br i1 %cmp106, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %clkid.0107 = phi i32 [ %inc, %if.end61.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  %add.ptr = getelementptr %struct.scmi_clock_info, ptr %49, i32 %clkid.0107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i90) #9
  %50 = ptrtoint ptr %t.i90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i90, align 4, !annotation !34
  %51 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xops, align 4
  %xfer_get_init.i92 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %xfer_get_init.i92 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xfer_get_init.i92, align 4
  %call.i93 = call i32 %54(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %t.i90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i97, label %scmi_clock_attributes_get.exit.thread

scmi_clock_attributes_get.exit.thread:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i90) #9
  br label %if.end61

if.end.i97:                                       ; preds = %for.body
  %55 = ptrtoint ptr %t.i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %t.i90, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx.i, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %clkid.0107) #9
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %58, align 1
  %61 = ptrtoint ptr %t.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %t.i90, align 4
  %rx.i95 = getelementptr inbounds %struct.scmi_xfer, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %rx.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx.i95, align 4
  %65 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xops, align 4
  %do_xfer.i96 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %do_xfer.i96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %do_xfer.i96, align 4
  %call3.i = call i32 %68(ptr noundef %ph, ptr noundef %62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #11
  %name6.i = getelementptr inbounds %struct.scmi_msg_resp_clock_attributes, ptr %64, i32 0, i32 1
  %call8.i = call i32 @strlcpy(ptr noundef %add.ptr, ptr noundef %name6.i, i32 noundef 16) #9
  %69 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xops, align 4
  %xfer_put.i98.c = getelementptr inbounds %struct.scmi_xfer_ops, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %xfer_put.i98.c to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xfer_put.i98.c, align 4
  %73 = ptrtoint ptr %t.i90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %t.i90, align 4
  call void %72(ptr noundef %ph, ptr noundef %74) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i90) #9
  call fastcc void @scmi_clock_describe_rates_get(ptr noundef %ph, i32 noundef %clkid.0107, ptr noundef %add.ptr)
  br label %if.end61

if.else.i:                                        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %add.ptr, align 8
  %76 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %xops, align 4
  %xfer_put.i98.c109 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %xfer_put.i98.c109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xfer_put.i98.c109, align 4
  %80 = ptrtoint ptr %t.i90 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %t.i90, align 4
  call void %79(ptr noundef %ph, ptr noundef %81) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i90) #9
  br label %if.end61

if.end61:                                         ; preds = %if.else.i, %if.then5.i, %scmi_clock_attributes_get.exit.thread
  %inc = add nuw nsw i32 %clkid.0107, 1
  %82 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_clocks, align 4
  %cmp = icmp slt i32 %inc, %83
  br i1 %cmp, label %if.end61.for.body_crit_edge, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end61.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %84 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %version, align 4
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %call.i, align 4
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %87 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_priv, align 4
  %call63 = call i32 %88(ptr noundef %ph, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call63, %for.end ], [ -12, %do.end40.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_clock_describe_rates_get(ptr noundef %ph, i32 noundef %clk_id, ptr noundef %clk) unnamed_addr #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #9
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !34
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %clk_id)
  %rate_index = getelementptr inbounds %struct.scmi_msg_clock_describe_rates, ptr %8, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.end
  %tot_rate_cnt.0 = phi i32 [ 0, %if.end ], [ %add, %for.end.do.body_crit_edge ]
  %rate.0 = phi ptr [ null, %if.end ], [ %rate.1.lcssa, %for.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %8, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %tot_rate_cnt.0)
  %14 = ptrtoint ptr %rate_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rate_index, align 4
  %15 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %do_xfer, align 4
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t, align 4
  %call3 = call i32 %18(ptr noundef %ph, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.body.err_crit_edge

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end6:                                          ; preds = %do.body
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %10, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %and = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %conv9 = and i32 %23, 4095
  %add = add i32 %conv9, %tot_rate_cnt.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp = icmp ugt i32 %add, 16
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %and.lobit.le35 = lshr exact i32 %and, 12
  %24 = trunc i32 %and.lobit.le35 to i8
  %25 = xor i8 %24, 1
  %26 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4) #12
  %phi.bo = xor i1 %tobool7.not, true
  br label %do.end96

if.end14:                                         ; preds = %if.end6
  br i1 %tobool7.not, label %if.end56, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %and.lobit.le33 = lshr exact i32 %and, 12
  %28 = trunc i32 %and.lobit.le33 to i8
  %29 = xor i8 %28, 1
  %rate17 = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 0, i32 1
  %30 = ptrtoint ptr %rate17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %x.sroa.0.0.copyload = load i32, ptr %rate17, align 4
  %x.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 2
  %31 = ptrtoint ptr %x.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %x.sroa.5.0.copyload = load i32, ptr %x.sroa.5.0.arrayidx.sroa_idx, align 4
  %32 = zext i32 %x.sroa.5.0.copyload to i64
  %33 = zext i32 %x.sroa.0.0.copyload to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  %37 = getelementptr inbounds %struct.scmi_clock_info, ptr %clk, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %36, ptr %37, align 8
  %arrayidx22 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 3
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %x20.sroa.0.0.copyload = load i32, ptr %arrayidx22, align 4
  %x20.sroa.5.0.arrayidx22.sroa_idx = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 4
  %40 = ptrtoint ptr %x20.sroa.5.0.arrayidx22.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %x20.sroa.5.0.copyload = load i32, ptr %x20.sroa.5.0.arrayidx22.sroa_idx, align 4
  %41 = zext i32 %x20.sroa.5.0.copyload to i64
  %42 = zext i32 %x20.sroa.0.0.copyload to i64
  %43 = shl nuw i64 %42, 32
  %44 = or i64 %43, %41
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %max_rate = getelementptr inbounds %struct.scmi_clock_info, ptr %clk, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %max_rate to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %max_rate, align 8
  %arrayidx32 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 5
  %47 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %x30.sroa.0.0.copyload = load i32, ptr %arrayidx32, align 4
  %x30.sroa.5.0.arrayidx32.sroa_idx = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 6
  %48 = ptrtoint ptr %x30.sroa.5.0.arrayidx32.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %x30.sroa.5.0.copyload = load i32, ptr %x30.sroa.5.0.arrayidx32.sroa_idx, align 4
  %49 = zext i32 %x30.sroa.5.0.copyload to i64
  %50 = zext i32 %x30.sroa.0.0.copyload to i64
  %51 = shl nuw i64 %50, 32
  %52 = or i64 %51, %49
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %step_size = getelementptr inbounds %struct.scmi_clock_info, ptr %clk, i32 0, i32 2, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %step_size to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %step_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_clock_describe_rates_get, %do.end96.thread)) #9
          to label %do.end96 [label %do.end96.thread], !srcloc !35

do.end96.thread:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ph, align 4
  %57 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %37, align 8
  %59 = ptrtoint ptr %max_rate to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %max_rate, align 8
  %61 = ptrtoint ptr %step_size to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %step_size, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug205, ptr noundef %56, ptr noundef nonnull @.str.8, i64 noundef %58, i64 noundef %60, i64 noundef %62) #9
  br label %if.end101

if.end56:                                         ; preds = %if.end14
  %arrayidx57 = getelementptr %struct.scmi_clock_info, ptr %clk, i32 0, i32 2, i32 0, i32 1, i32 %tot_rate_cnt.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp5925.not = icmp eq i32 %conv9, 0
  br i1 %cmp5925.not, label %if.end56.for.end_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  br label %for.body

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end56.for.body_crit_edge
  %rate.127 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %arrayidx57, %if.end56.for.body_crit_edge ]
  %cnt.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end56.for.body_crit_edge ]
  %arrayidx63 = getelementptr %struct.scmi_msg_resp_clock_describe_rates, ptr %10, i32 0, i32 1, i32 %cnt.026
  %63 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %x61.sroa.0.0.copyload = load i32, ptr %arrayidx63, align 4
  %x61.sroa.5.0.arrayidx63.sroa_idx = getelementptr inbounds i8, ptr %arrayidx63, i32 4
  %64 = ptrtoint ptr %x61.sroa.5.0.arrayidx63.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %x61.sroa.5.0.copyload = load i32, ptr %x61.sroa.5.0.arrayidx63.sroa_idx, align 4
  %65 = zext i32 %x61.sroa.5.0.copyload to i64
  %66 = zext i32 %x61.sroa.0.0.copyload to i64
  %67 = shl nuw i64 %66, 32
  %68 = or i64 %67, %65
  %69 = call i64 @llvm.bswap.i64(i64 %68)
  %70 = ptrtoint ptr %rate.127 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %rate.127, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_clock_describe_rates_get, %if.then83)) #9
          to label %for.inc [label %if.then83], !srcloc !35

if.then83:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ph, align 4
  %73 = ptrtoint ptr %rate.127 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %rate.127, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug206, ptr noundef %72, ptr noundef nonnull @.str.9, i64 noundef %74) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then83, %for.body
  %inc = add nuw nsw i32 %cnt.026, 1
  %incdec.ptr = getelementptr i64, ptr %rate.127, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end56.for.end_crit_edge
  %rate.1.lcssa = phi ptr [ %arrayidx57, %if.end56.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %75 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz = getelementptr inbounds %struct.scmi_xfer_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %reset_rx_to_maxsz to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reset_rx_to_maxsz, align 4
  %79 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %t, align 4
  call void %78(ptr noundef %ph, ptr noundef %80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %23)
  %tobool95.not = icmp ult i32 %23, 65536
  %or.cond = or i1 %tobool95.not, %cmp5925.not
  br i1 %or.cond, label %for.end.do.end96_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end.do.end96_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end96

do.end96:                                         ; preds = %for.end.do.end96_crit_edge, %if.then16, %do.end
  %tobool7.not47 = phi i1 [ %phi.bo, %do.end ], [ true, %if.then16 ], [ false, %for.end.do.end96_crit_edge ]
  %81 = phi i8 [ %25, %do.end ], [ %29, %if.then16 ], [ 1, %for.end.do.end96_crit_edge ]
  %tot_rate_cnt.1 = phi i32 [ %tot_rate_cnt.0, %do.end ], [ %tot_rate_cnt.0, %if.then16 ], [ %add, %for.end.do.end96_crit_edge ]
  %rate.2 = phi ptr [ %rate.0, %do.end ], [ %rate.0, %if.then16 ], [ %rate.1.lcssa, %for.end.do.end96_crit_edge ]
  %tobool99.not = icmp eq ptr %rate.2, null
  %or.cond1 = select i1 %tobool7.not47, i1 true, i1 %tobool99.not
  br i1 %or.cond1, label %do.end96.if.end101_crit_edge, label %if.then100

do.end96.if.end101_crit_edge:                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  %82 = getelementptr inbounds %struct.scmi_clock_info, ptr %clk, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %tot_rate_cnt.1, ptr %82, align 8
  call void @sort(ptr noundef nonnull %rate.2, i32 noundef %tot_rate_cnt.1, i32 noundef 8, ptr noundef nonnull @rate_cmp_func, ptr noundef null) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %do.end96.if.end101_crit_edge, %do.end96.thread
  %84 = phi i8 [ %29, %do.end96.thread ], [ %81, %if.then100 ], [ %81, %do.end96.if.end101_crit_edge ]
  %rate_discrete103 = getelementptr inbounds %struct.scmi_clock_info, ptr %clk, i32 0, i32 1
  %85 = ptrtoint ptr %rate_discrete103 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %rate_discrete103, align 8
  br label %err

err:                                              ; preds = %if.end101, %do.body.err_crit_edge
  %86 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xfer_put, align 4
  %90 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %t, align 4
  call void %89(ptr noundef %ph, ptr noundef %91) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rate_cmp_func(ptr nocapture noundef readonly %_r1, ptr nocapture noundef readonly %_r2) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_r1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %_r1, align 8
  %2 = ptrtoint ptr %_r2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %_r2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp1 = icmp ne i64 %1, %3
  %. = zext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clock_count_get(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %num_clocks = getelementptr inbounds %struct.clock_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_clock_info_get(ptr noundef %ph, i32 noundef %clk_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %clk1 = getelementptr inbounds %struct.clock_info, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk1, align 4
  %add.ptr = getelementptr %struct.scmi_clock_info, ptr %3, i32 %clk_id
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %.add.ptr = select i1 %tobool.not, ptr null, ptr %add.ptr
  ret ptr %.add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clock_rate_get(ptr noundef %ph, i32 noundef %clk_id, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #9
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !34
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %t) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %clk_id) #9
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
  %call2 = call i32 %14(ptr noundef %ph, ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 1
  %23 = call i64 @llvm.bswap.i64(i64 %22) #9
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %value, align 8
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
  call void %28(ptr noundef %ph, ptr noundef %30) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end7 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clock_rate_set(ptr noundef %ph, i32 noundef %clk_id, i64 noundef %rate) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #9
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !34
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %2(ptr noundef %ph) #9
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %3 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xfer_get_init, align 4
  %call1 = call i32 %6(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %t) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_async_req = getelementptr inbounds %struct.clock_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %max_async_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_async_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cur_async_req = getelementptr inbounds %struct.clock_info, ptr %call, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cur_async_req, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @llvm.prefetch.p0(ptr %cur_async_req, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_async_req, ptr %cur_async_req, i32 1, ptr elementtype(i32) %cur_async_req) #9, !srcloc !38
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  %10 = ptrtoint ptr %max_async_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_async_req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %11)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, %11
  %not.cmp = xor i1 %cmp, true
  %spec.select48 = select i1 %cmp, i32 16777216, i32 0
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end.if.end6_crit_edge
  %tobool10.not = phi i1 [ true, %if.end.if.end6_crit_edge ], [ %not.cmp, %land.lhs.true ]
  %flags.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %spec.select48, %land.lhs.true ]
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags.0, ptr %15, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %clk_id)
  %id = getelementptr inbounds %struct.scmi_clock_set_rate, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %id, align 4
  %conv = trunc i64 %rate to i32
  %19 = call i32 @llvm.bswap.i32(i32 %conv)
  %value_low = getelementptr inbounds %struct.scmi_clock_set_rate, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %value_low to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %value_low, align 4
  %shr = lshr i64 %rate, 32
  %conv8 = trunc i64 %shr to i32
  %21 = call i32 @llvm.bswap.i32(i32 %conv8)
  %value_high = getelementptr inbounds %struct.scmi_clock_set_rate, ptr %15, i32 0, i32 3
  %22 = ptrtoint ptr %value_high to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %value_high, align 4
  %23 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xops, align 4
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %do_xfer_with_response = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %do_xfer_with_response to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %do_xfer_with_response, align 4
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t, align 4
  %call13 = call i32 %26(ptr noundef %ph, ptr noundef %28) #9
  br label %if.end16

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %do_xfer, align 4
  %31 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t, align 4
  %call15 = call i32 %30(ptr noundef %ph, ptr noundef %32) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %ret.0 = phi i32 [ %call13, %if.then11 ], [ %call15, %if.else ]
  %33 = ptrtoint ptr %max_async_req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_async_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool18.not = icmp eq i32 %34, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %cur_async_req20 = getelementptr inbounds %struct.clock_info, ptr %call, i32 0, i32 3
  %call.i.i49 = call zeroext i1 @__kasan_check_write(ptr noundef %cur_async_req20, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %cur_async_req20, i32 1, i32 3, i32 1) #9
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cur_async_req20, ptr %cur_async_req20, i32 1, ptr elementtype(i32) %cur_async_req20) #9, !srcloc !40
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %36 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xfer_put, align 4
  %40 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %t, align 4
  call void %39(ptr noundef %ph, ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end21 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clock_enable(ptr noundef %ph, i32 noundef %clk_id) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !34
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %4(ptr noundef %ph, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.scmi_clock_config_set.exit_crit_edge

entry.scmi_clock_config_set.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_clock_config_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %clk_id) #9
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %attributes.i = getelementptr inbounds %struct.scmi_clock_set_config, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %attributes.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %attributes.i, align 4
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
  %call2.i = call i32 %15(ptr noundef %ph, ptr noundef %17) #9
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
  call void %21(ptr noundef %ph, ptr noundef %23) #9
  br label %scmi_clock_config_set.exit

scmi_clock_config_set.exit:                       ; preds = %if.end.i, %entry.scmi_clock_config_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.scmi_clock_config_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clock_disable(ptr noundef %ph, i32 noundef %clk_id) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !34
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %4(ptr noundef %ph, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.scmi_clock_config_set.exit_crit_edge

entry.scmi_clock_config_set.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_clock_config_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %clk_id) #9
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %attributes.i = getelementptr inbounds %struct.scmi_clock_set_config, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %attributes.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %attributes.i, align 4
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
  %call2.i = call i32 %15(ptr noundef %ph, ptr noundef %17) #9
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
  call void %21(ptr noundef %ph, ptr noundef %23) #9
  br label %scmi_clock_config_set.exit

scmi_clock_config_set.exit:                       ; preds = %if.end.i, %entry.scmi_clock_config_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.scmi_clock_config_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 376, i32 1}
!2 = !{ptr @scmi_clock, !3, !"scmi_clock", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 369, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 343, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_clock_protocol_init.__UNIQUE_ID_ddebug207, !5, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 176, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @scmi_clock_describe_rates_get._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @scmi_clock_describe_rates_get._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 184, i32 4}
!19 = !{ptr @scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug205, !18, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 193, i32 4}
!22 = !{ptr @scmi_clock_describe_rates_get.__UNIQUE_ID_ddebug206, !21, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!23 = !{ptr @clk_proto_ops, !24, !"clk_proto_ops", i1 false, i1 false}
!24 = !{!"../drivers/firmware/arm_scmi/clock.c", i32 326, i32 40}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i64 2148960027, i64 2148960032, i64 2148960045, i64 2148960089, i64 2148960123, i64 2148960144}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2148432085}
!38 = !{i64 2148347370, i64 2148347402, i64 2148347431, i64 2148347465, i64 2148347496, i64 2148347519}
!39 = !{i64 2148432314}
!40 = !{i64 2148349115, i64 2148349141, i64 2148349170, i64 2148349204, i64 2148349235, i64 2148349258}
