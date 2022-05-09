; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/voltage.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/voltage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_voltage_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.voltage_info = type { i32, i32, ptr }
%struct.scmi_msg_resp_domain_attributes = type { i32, [16 x i8] }
%struct.scmi_voltage_info = type { i32, i8, i8, i32, [16 x i8], i32, ptr }
%struct.scmi_msg_cmd_describe_levels = type { i32, i32 }
%struct.scmi_msg_resp_describe_levels = type { i32, [0 x i32] }
%struct.scmi_msg_cmd_config_set = type { i32, i32 }
%struct.scmi_msg_cmd_level_set = type { i32, i32, i32 }

@scmi_voltage = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 23, ptr null, ptr @scmi_voltage_protocol_init, ptr null, ptr @voltage_proto_ops, ptr null }, [40 x i8] zeroinitializer }, align 32
@voltage_proto_ops = internal global { %struct.scmi_voltage_proto_ops, [40 x i8] } { %struct.scmi_voltage_proto_ops { ptr @scmi_voltage_domains_num_get, ptr @scmi_voltage_info_get, ptr @scmi_voltage_config_set, ptr @scmi_voltage_config_get, ptr @scmi_voltage_level_set, ptr @scmi_voltage_level_get }, [40 x i8] zeroinitializer }, align 32
@scmi_voltage_protocol_init.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_voltage_protocol_init\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/firmware/arm_scmi/voltage.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Voltage Version %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@scmi_voltage_protocol_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No Voltage domains found.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_voltage_protocol_init._entry_ptr = internal global ptr @scmi_voltage_protocol_init._entry, section ".printk_index", align 4
@scmi_voltage_descriptors_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 181, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No. of voltage levels can't exceed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scmi_voltage_descriptors_get\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@scmi_voltage_descriptors_get._entry_ptr = internal global ptr @scmi_voltage_descriptors_get._entry, section ".printk_index", align 4
@scmi_init_voltage_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 99, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Invalid level descriptor(%d/%d/%d) for voltage dom %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_init_voltage_levels\00", [39 x i8] zeroinitializer }, align 32
@scmi_init_voltage_levels._entry_ptr = internal global ptr @scmi_init_voltage_levels._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"scmi_voltage\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 373, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"voltage_proto_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 326, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 345, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 367, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 179, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [39 x i8] c"../drivers/firmware/arm_scmi/voltage.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 97, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @scmi_init_voltage_levels._entry, ptr @scmi_init_voltage_levels._entry_ptr, ptr @scmi_voltage_descriptors_get._entry, ptr @scmi_voltage_descriptors_get._entry_ptr, ptr @scmi_voltage_protocol_init._entry, ptr @scmi_voltage_protocol_init._entry_ptr, ptr @scmi_voltage_unregister, ptr @scmi_voltage, ptr @voltage_proto_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_voltage to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_proto_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_voltage_protocol_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_voltage_descriptors_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_init_voltage_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_voltage_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_voltage) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_voltage_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_voltage) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_voltage_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %td.i = alloca ptr, align 4
  %tl.i = alloca ptr, align 4
  %t.i = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !38
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %ph, ptr noundef nonnull %version) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_voltage_protocol_init.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_voltage_protocol_init, %if.then5)) #7
          to label %do.end43 [label %if.then5], !srcloc !39

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ph, align 4
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %shr = lshr i32 %8, 16
  %conv40 = and i32 %8, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_voltage_protocol_init.__UNIQUE_ID_ddebug220, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv40) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then5, %do.body
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 12, i32 noundef 3520) #7
  %tobool46.not = icmp eq ptr %call.i, null
  br i1 %tobool46.not, label %do.end43.cleanup_crit_edge, label %if.end48

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %do.end43
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !38
  %15 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i97 = call i32 %18(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i, label %if.end.i, label %scmi_protocol_attributes_get.exit.thread

scmi_protocol_attributes_get.exit.thread:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end48
  %19 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %do_xfer.i, align 4
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t.i, align 4
  %call2.i = call i32 %22(ptr noundef %ph, ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end16.i, label %cleanup.critedge

do.end16.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %28, align 1
  %31 = and i32 %30, -65536
  %32 = call i32 @llvm.bswap.i32(i32 %31) #7
  %num_domains.i = getelementptr inbounds %struct.voltage_info, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %num_domains.i, align 4
  %34 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xops, align 4
  %xfer_put.i.c132 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %xfer_put.i.c132 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xfer_put.i.c132, align 4
  %38 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t.i, align 4
  call void %37(ptr noundef %ph, ptr noundef %39) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  %num_domains = getelementptr inbounds %struct.voltage_info, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not = icmp eq i32 %41, 0
  br i1 %tobool54.not, label %do.end69, label %if.then55

if.then55:                                        ; preds = %do.end16.i
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 36) #7
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !40

devm_kcalloc.exit.thread:                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %domains113 = getelementptr inbounds %struct.voltage_info, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %domains113 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %domains113, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then55
  %45 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ph, align 4
  %47 = extractvalue { i32, i1 } %42, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef %47, i32 noundef 3520) #7
  %domains = getelementptr inbounds %struct.voltage_info, ptr %call.i, i32 0, i32 2
  %48 = ptrtoint ptr %domains to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5.i.i, ptr %domains, align 4
  %tobool60.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool60.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end62

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %devm_kcalloc.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %td.i) #7
  %49 = ptrtoint ptr %td.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %td.i, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tl.i) #7
  %50 = ptrtoint ptr %tl.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %tl.i, align 4, !annotation !38
  %51 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ph, align 4
  %53 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xops, align 4
  %xfer_get_init.i100 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %xfer_get_init.i100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xfer_get_init.i100, align 4
  %call.i101 = call i32 %56(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %td.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i104, label %scmi_voltage_descriptors_get.exit.thread

scmi_voltage_descriptors_get.exit.thread:         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i) #7
  br label %cleanup

if.end.i104:                                      ; preds = %if.end62
  %57 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %td.i, align 4
  %rx.i103 = getelementptr inbounds %struct.scmi_xfer, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %rx.i103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx.i103, align 4
  %61 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xops, align 4
  %xfer_get_init3.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %xfer_get_init3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xfer_get_init3.i, align 4
  %call4.i = call i32 %64(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %tl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i104.scmi_voltage_descriptors_get.exit_crit_edge

if.end.i104.scmi_voltage_descriptors_get.exit_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_voltage_descriptors_get.exit

if.end7.i:                                        ; preds = %if.end.i104
  %65 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tl.i, align 4
  %rx8.i = getelementptr inbounds %struct.scmi_xfer, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %rx8.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx8.i, align 4
  %69 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp211.not.i = icmp eq i32 %70, 0
  br i1 %cmp211.not.i, label %if.end7.i.for.end120.i_crit_edge, label %for.body.lr.ph.i

if.end7.i.for.end120.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end120.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %name16.i = getelementptr inbounds %struct.scmi_msg_resp_domain_attributes, ptr %60, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup111.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dom.0212.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc119.i, %cleanup111.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %td.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %dom.0212.i) #7
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %74, align 1
  %77 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xops, align 4
  %do_xfer.i106 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %do_xfer.i106 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %do_xfer.i106, align 4
  %81 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %td.i, align 4
  %call12.i = call i32 %80(ptr noundef %ph, ptr noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.body.i.cleanup111.i_crit_edge

for.body.i.cleanup111.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111.i

if.end15.i:                                       ; preds = %for.body.i
  %83 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %domains, align 4
  %add.ptr.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %dom.0212.i, ptr %add.ptr.i, align 4
  %86 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %60, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #7
  %attributes.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i, i32 3
  %89 = ptrtoint ptr %attributes.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %attributes.i, align 4
  %name.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i, i32 4
  %call18.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name16.i, i32 noundef 16) #7
  %90 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tl.i, align 4
  %tx19.i = getelementptr inbounds %struct.scmi_xfer, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %tx19.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tx19.i, align 4
  %level_index.i = getelementptr inbounds %struct.scmi_msg_cmd_describe_levels, ptr %93, i32 0, i32 1
  %num_levels.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i, i32 5
  %levels_uv.i.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i, i32 6
  %segmented10.i.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i, i32 1
  %negative_volts_allowed.i = getelementptr %struct.scmi_voltage_info, ptr %84, i32 %dom.0212.i, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end15.i
  %desc_index.0.i = phi i32 [ 0, %if.end15.i ], [ %add.i, %cleanup.i.do.body.i_crit_edge ]
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #7
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %93, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %desc_index.0.i) #7
  %99 = ptrtoint ptr %level_index.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %level_index.i, align 4
  %100 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %xops, align 4
  %do_xfer23.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %do_xfer23.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %do_xfer23.i, align 4
  %104 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tl.i, align 4
  %call24.i = call i32 %103(ptr noundef %ph, ptr noundef %105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %do.body.i.if.then105.i_crit_edge

do.body.i.if.then105.i_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105.i

if.end27.i:                                       ; preds = %do.body.i
  %106 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %68, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #7
  %109 = trunc i32 %108 to i16
  %conv.i = and i16 %109, 4095
  %shr59.i = lshr i32 %108, 16
  %110 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool61.not.i = icmp eq i32 %111, 0
  %conv63.i = zext i16 %conv.i to i32
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end27.i.if.end71.i_crit_edge

if.end27.i.if.end71.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

if.then62.i:                                      ; preds = %if.end27.i
  %and65.i = and i32 %108, 4096
  %and65.lobit.i = lshr exact i32 %and65.i, 12
  %112 = trunc i32 %and65.lobit.i to i8
  %add.i.i = add nuw nsw i32 %shr59.i, %conv63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %tobool.not.i.i, label %if.then62.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

if.then62.i.do.end.i.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %lor.lhs.false.i.i.devm_kcalloc.exit.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.devm_kcalloc.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %108)
  %tobool2.not.i.i = icmp ult i32 %108, 65536
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv.i)
  %cmp.not.i.i = icmp eq i16 %conv.i, 3
  %or.cond.i.i = and i1 %tobool2.not.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.devm_kcalloc.exit.i.i_crit_edge, label %land.lhs.true.i.i.do.end.i.i_crit_edge

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i.devm_kcalloc.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then62.i.do.end.i.i_crit_edge
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.10, i32 noundef %add.i.i, i32 noundef %conv63.i, i32 noundef %shr59.i, i32 noundef %114) #10
  br label %if.then105.i

devm_kcalloc.exit.i.i:                            ; preds = %land.lhs.true.i.i.devm_kcalloc.exit.i.i_crit_edge, %lor.lhs.false.i.i.devm_kcalloc.exit.i.i_crit_edge
  %115 = shl nuw nsw i32 %add.i.i, 2
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef %115, i32 noundef 3520) #7
  %116 = ptrtoint ptr %levels_uv.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call5.i.i.i.i, ptr %levels_uv.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %devm_kcalloc.exit.i.i.if.then105.i_crit_edge, label %scmi_init_voltage_levels.exit.i

devm_kcalloc.exit.i.i.if.then105.i_crit_edge:     ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105.i

scmi_init_voltage_levels.exit.i:                  ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add.i.i, ptr %num_levels.i, align 4
  %118 = ptrtoint ptr %segmented10.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %112, ptr %segmented10.i.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %scmi_init_voltage_levels.exit.i, %if.end27.i.if.end71.i_crit_edge
  %add.i = add i32 %desc_index.0.i, %conv63.i
  %119 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %120)
  %cmp74.i = icmp ugt i32 %add.i, %120
  br i1 %cmp74.i, label %do.end79.i, label %for.cond83.preheader.i

for.cond83.preheader.i:                           ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp85209.not.i = icmp eq i16 %conv.i, 0
  br i1 %cmp85209.not.i, label %for.cond83.preheader.i.cleanup.i_crit_edge, label %for.cond83.preheader.i.for.body87.i_crit_edge

for.cond83.preheader.i.for.body87.i_crit_edge:    ; preds = %for.cond83.preheader.i
  br label %for.body87.i

for.cond83.preheader.i.cleanup.i_crit_edge:       ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.end79.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.7, i32 noundef %120) #10
  br label %if.then105.i

for.body87.i:                                     ; preds = %if.end93.i.for.body87.i_crit_edge, %for.cond83.preheader.i.for.body87.i_crit_edge
  %cnt.0210.i = phi i32 [ %inc.i, %if.end93.i.for.body87.i_crit_edge ], [ 0, %for.cond83.preheader.i.for.body87.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scmi_msg_resp_describe_levels, ptr %68, i32 0, i32 1, i32 %cnt.0210.i
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #7
  %126 = ptrtoint ptr %levels_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %levels_uv.i.i, align 4
  %add88.i = add i32 %cnt.0210.i, %desc_index.0.i
  %arrayidx89.i = getelementptr i32, ptr %127, i32 %add88.i
  %128 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %125, ptr %arrayidx89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp90.i = icmp slt i32 %125, 0
  br i1 %cmp90.i, label %if.then92.i, label %for.body87.i.if.end93.i_crit_edge

for.body87.i.if.end93.i_crit_edge:                ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then92.i:                                      ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %negative_volts_allowed.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %negative_volts_allowed.i, align 1
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then92.i, %for.body87.i.if.end93.i_crit_edge
  %inc.i = add nuw nsw i32 %cnt.0210.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv63.i
  br i1 %exitcond.not.i, label %if.end93.i.cleanup.i_crit_edge, label %if.end93.i.for.body87.i_crit_edge

if.end93.i.for.body87.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body87.i

if.end93.i.cleanup.i_crit_edge:                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end93.i.cleanup.i_crit_edge, %for.cond83.preheader.i.cleanup.i_crit_edge
  %130 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %reset_rx_to_maxsz.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reset_rx_to_maxsz.i, align 4
  %134 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %tl.i, align 4
  call void %133(ptr noundef %ph, ptr noundef %135) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %108)
  %tobool102.not.i = icmp ult i32 %108, 65536
  %or.cond189.i = select i1 %cmp85209.not.i, i1 true, i1 %tobool102.not.i
  br i1 %or.cond189.i, label %cleanup.i.if.end108.i_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

cleanup.i.if.end108.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.then105.i:                                     ; preds = %do.end79.i, %devm_kcalloc.exit.i.i.if.then105.i_crit_edge, %do.end.i.i, %do.body.i.if.then105.i_crit_edge
  %ret.2.ph.i = phi i32 [ -22, %do.end79.i ], [ -22, %do.end.i.i ], [ %call24.i, %do.body.i.if.then105.i_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.if.then105.i_crit_edge ]
  %136 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %num_levels.i, align 4
  %137 = ptrtoint ptr %levels_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %levels_uv.i.i, align 4
  call void @devm_kfree(ptr noundef %52, ptr noundef %138) #7
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then105.i, %cleanup.i.if.end108.i_crit_edge
  %ret.2202205.i = phi i32 [ %ret.2.ph.i, %if.then105.i ], [ 0, %cleanup.i.if.end108.i_crit_edge ]
  %139 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz110.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %reset_rx_to_maxsz110.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reset_rx_to_maxsz110.i, align 4
  %143 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %td.i, align 4
  call void %142(ptr noundef %ph, ptr noundef %144) #7
  br label %cleanup111.i

cleanup111.i:                                     ; preds = %if.end108.i, %for.body.i.cleanup111.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2202205.i, %if.end108.i ], [ %call12.i, %for.body.i.cleanup111.i_crit_edge ]
  %inc119.i = add nuw i32 %dom.0212.i, 1
  %145 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_domains, align 4
  %cmp.i = icmp ult i32 %inc119.i, %146
  br i1 %cmp.i, label %cleanup111.i.for.body.i_crit_edge, label %cleanup111.i.for.end120.i_crit_edge

cleanup111.i.for.end120.i_crit_edge:              ; preds = %cleanup111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end120.i

cleanup111.i.for.body.i_crit_edge:                ; preds = %cleanup111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end120.i:                                     ; preds = %cleanup111.i.for.end120.i_crit_edge, %if.end7.i.for.end120.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end7.i.for.end120.i_crit_edge ], [ %ret.3.i, %cleanup111.i.for.end120.i_crit_edge ]
  %147 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %xops, align 4
  %xfer_put.i107 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %xfer_put.i107 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %xfer_put.i107, align 4
  %151 = ptrtoint ptr %tl.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tl.i, align 4
  call void %150(ptr noundef %ph, ptr noundef %152) #7
  br label %scmi_voltage_descriptors_get.exit

scmi_voltage_descriptors_get.exit:                ; preds = %for.end120.i, %if.end.i104.scmi_voltage_descriptors_get.exit_crit_edge
  %ret.4.i = phi i32 [ %call4.i, %if.end.i104.scmi_voltage_descriptors_get.exit_crit_edge ], [ %ret.0.lcssa.i, %for.end120.i ]
  %153 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %xops, align 4
  %xfer_put123.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %xfer_put123.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %xfer_put123.i, align 4
  %157 = ptrtoint ptr %td.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %td.i, align 4
  call void %156(ptr noundef %ph, ptr noundef %158) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i)
  %tobool64.not = icmp eq i32 %ret.4.i, 0
  br i1 %tobool64.not, label %scmi_voltage_descriptors_get.exit.if.end71_crit_edge, label %scmi_voltage_descriptors_get.exit.cleanup_crit_edge

scmi_voltage_descriptors_get.exit.cleanup_crit_edge: ; preds = %scmi_voltage_descriptors_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

scmi_voltage_descriptors_get.exit.if.end71_crit_edge: ; preds = %scmi_voltage_descriptors_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.end69:                                         ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.4) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %scmi_voltage_descriptors_get.exit.if.end71_crit_edge
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %161 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %set_priv, align 4
  %call72 = call i32 %162(ptr noundef %ph, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %xops, align 4
  %xfer_put.i.c = getelementptr inbounds %struct.scmi_xfer_ops, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %xfer_put.i.c to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %xfer_put.i.c, align 4
  %167 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %t.i, align 4
  call void %166(ptr noundef %ph, ptr noundef %168) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end71, %scmi_voltage_descriptors_get.exit.cleanup_crit_edge, %scmi_voltage_descriptors_get.exit.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %scmi_protocol_attributes_get.exit.thread, %do.end43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call72, %if.end71 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %do.end43.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %ret.4.i, %scmi_voltage_descriptors_get.exit.cleanup_crit_edge ], [ %call.i97, %scmi_protocol_attributes_get.exit.thread ], [ -12, %devm_kcalloc.exit.thread ], [ %call.i101, %scmi_voltage_descriptors_get.exit.thread ], [ %call2.i, %cleanup.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_voltage_domains_num_get(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %num_domains = getelementptr inbounds %struct.voltage_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_voltage_info_get(ptr noundef %ph, i32 noundef %domain_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %num_domains = getelementptr inbounds %struct.voltage_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %domain_id)
  %cmp.not = icmp ugt i32 %3, %domain_id
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %domains = getelementptr inbounds %struct.voltage_info, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domains, align 4
  %num_levels = getelementptr %struct.scmi_voltage_info, ptr %5, i32 %domain_id, i32 5
  %6 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %arrayidx = getelementptr %struct.scmi_voltage_info, ptr %5, i32 %domain_id
  %spec.select = select i1 %tobool.not, ptr null, ptr %arrayidx
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_voltage_config_set(ptr noundef %ph, i32 noundef %domain_id, i32 noundef %config) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !38
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %2(ptr noundef %ph) #7
  %num_domains = getelementptr inbounds %struct.voltage_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %domain_id)
  %cmp.not = icmp ugt i32 %4, %domain_id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %5 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfer_get_init, align 4
  %call1 = call i32 %8(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %domain_id)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %12, align 4
  %and = shl i32 %config, 24
  %15 = and i32 %and, 251658240
  %config5 = getelementptr inbounds %struct.scmi_msg_cmd_config_set, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %config5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %config5, align 4
  %17 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %do_xfer, align 4
  %21 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t, align 4
  %call7 = call i32 %20(ptr noundef %ph, ptr noundef %22) #7
  %23 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xfer_put, align 4
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t, align 4
  call void %26(ptr noundef %ph, ptr noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_voltage_config_get(ptr noundef %ph, i32 noundef %domain_id, ptr nocapture noundef writeonly %config) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !38
  %get_priv.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv.i, align 4
  %call.i = tail call ptr %2(ptr noundef %ph) #7
  %num_domains.i = getelementptr inbounds %struct.voltage_info, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %domain_id)
  %cmp.not.i = icmp ugt i32 %4, %domain_id
  br i1 %cmp.not.i, label %if.end.i, label %entry.__scmi_voltage_get_u32.exit_crit_edge

entry.__scmi_voltage_get_u32.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__scmi_voltage_get_u32.exit

if.end.i:                                         ; preds = %entry
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %5 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfer_get_init.i, align 4
  %call1.i = call i32 %8(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.__scmi_voltage_get_u32.exit_crit_edge

if.end.i.__scmi_voltage_get_u32.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__scmi_voltage_get_u32.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %domain_id) #7
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %12, align 1
  %15 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %do_xfer.i, align 4
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.i, align 4
  %call5.i = call i32 %18(ptr noundef %ph, ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end3.i.if.end10.i_crit_edge

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #7
  %28 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %config, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end3.i.if.end10.i_crit_edge
  %29 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xfer_put.i, align 4
  %33 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t.i, align 4
  call void %32(ptr noundef %ph, ptr noundef %34) #7
  br label %__scmi_voltage_get_u32.exit

__scmi_voltage_get_u32.exit:                      ; preds = %if.end10.i, %if.end.i.__scmi_voltage_get_u32.exit_crit_edge, %entry.__scmi_voltage_get_u32.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end10.i ], [ -22, %entry.__scmi_voltage_get_u32.exit_crit_edge ], [ %call1.i, %if.end.i.__scmi_voltage_get_u32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_voltage_level_set(ptr noundef %ph, i32 noundef %domain_id, i32 noundef %flags, i32 noundef %volt_uV) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !38
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %2(ptr noundef %ph) #7
  %num_domains = getelementptr inbounds %struct.voltage_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %domain_id)
  %cmp.not = icmp ugt i32 %4, %domain_id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %5 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfer_get_init, align 4
  %call1 = call i32 %8(ptr noundef %ph, i8 noundef zeroext 7, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %domain_id)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %12, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %flags)
  %flags5 = getelementptr inbounds %struct.scmi_msg_cmd_level_set, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags5, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %volt_uV)
  %voltage_level = getelementptr inbounds %struct.scmi_msg_cmd_level_set, ptr %12, i32 0, i32 2
  %18 = ptrtoint ptr %voltage_level to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %voltage_level, align 4
  %19 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %do_xfer, align 4
  %23 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t, align 4
  %call7 = call i32 %22(ptr noundef %ph, ptr noundef %24) #7
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

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_voltage_level_get(ptr noundef %ph, i32 noundef %domain_id, ptr nocapture noundef writeonly %volt_uV) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !38
  %get_priv.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv.i, align 4
  %call.i = tail call ptr %2(ptr noundef %ph) #7
  %num_domains.i = getelementptr inbounds %struct.voltage_info, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %domain_id)
  %cmp.not.i = icmp ugt i32 %4, %domain_id
  br i1 %cmp.not.i, label %if.end.i, label %entry.__scmi_voltage_get_u32.exit_crit_edge

entry.__scmi_voltage_get_u32.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__scmi_voltage_get_u32.exit

if.end.i:                                         ; preds = %entry
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %5 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfer_get_init.i, align 4
  %call1.i = call i32 %8(ptr noundef %ph, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.__scmi_voltage_get_u32.exit_crit_edge

if.end.i.__scmi_voltage_get_u32.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__scmi_voltage_get_u32.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %domain_id) #7
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %12, align 1
  %15 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %do_xfer.i, align 4
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.i, align 4
  %call5.i = call i32 %18(ptr noundef %ph, ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end3.i.if.end10.i_crit_edge

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #7
  %28 = ptrtoint ptr %volt_uV to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %volt_uV, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end3.i.if.end10.i_crit_edge
  %29 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xfer_put.i, align 4
  %33 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t.i, align 4
  call void %32(ptr noundef %ph, ptr noundef %34) #7
  br label %__scmi_voltage_get_u32.exit

__scmi_voltage_get_u32.exit:                      ; preds = %if.end10.i, %if.end.i.__scmi_voltage_get_u32.exit_crit_edge, %entry.__scmi_voltage_get_u32.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end10.i ], [ -22, %entry.__scmi_voltage_get_u32.exit_crit_edge ], [ %call1.i, %if.end.i.__scmi_voltage_get_u32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 380, i32 1}
!2 = !{ptr @scmi_voltage, !3, !"scmi_voltage", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 373, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 345, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_voltage_protocol_init.__UNIQUE_ID_ddebug220, !5, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 367, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @scmi_voltage_protocol_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @scmi_voltage_protocol_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 179, i32 5}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @scmi_voltage_descriptors_get._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @scmi_voltage_descriptors_get._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 97, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @scmi_init_voltage_levels._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @scmi_init_voltage_levels._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @voltage_proto_ops, !28, !"voltage_proto_ops", i1 false, i1 false}
!28 = !{!"../drivers/firmware/arm_scmi/voltage.c", i32 326, i32 38}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2148960631, i64 2148960636, i64 2148960649, i64 2148960693, i64 2148960727, i64 2148960748}
!40 = !{!"branch_weights", i32 1, i32 2000}
