; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/base.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_revision_info = type { i16, i16, i8, i8, i32, [16 x i8], [16 x i8] }
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
%struct.scmi_msg_resp_base_attributes = type { i8, i8, i16 }
%struct.scmi_msg_resp_base_discover_agent = type { i32, [16 x i8] }
%struct.scmi_base_error_report = type { i64, i32, i8, i32, [0 x i64] }
%struct.scmi_base_error_notify_payld = type { i32, i32, [1024 x i64] }

@scmi_base = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 16, ptr null, ptr @scmi_base_protocol_init, ptr null, ptr null, ptr @base_protocol_events }, [40 x i8] zeroinitializer }, align 32
@base_protocol_events = internal constant { %struct.scmi_protocol_events, [44 x i8] } { %struct.scmi_protocol_events { i32 16384, ptr @base_event_ops, ptr @base_events, i32 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@scmi_base_protocol_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SCMI Protocol v%d.%d '%s:%s' Firmware version 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scmi_base_protocol_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/firmware/arm_scmi/base.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_base_protocol_init._entry_ptr = internal global ptr @scmi_base_protocol_init._entry, section ".printk_index", align 4
@scmi_base_protocol_init.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found %d protocol(s) %d agent(s)\0A\00", [62 x i8] zeroinitializer }, align 32
@scmi_base_protocol_init.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Agent %d: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@scmi_base_implementation_list_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 201, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No. of Protocol > MAX_PROTOCOLS_IMP\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"scmi_base_implementation_list_get\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@scmi_base_implementation_list_get._entry_ptr = internal global ptr @scmi_base_implementation_list_get._entry, section ".printk_index", align 4
@base_event_ops = internal constant { %struct.scmi_event_ops, [20 x i8] } { %struct.scmi_event_ops { ptr null, ptr @scmi_base_set_notify_enabled, ptr @scmi_base_fill_custom_report }, [20 x i8] zeroinitializer }, align 32
@base_events = internal constant { [1 x %struct.scmi_event], [20 x i8] } { [1 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 8200, i32 8216 }], [20 x i8] zeroinitializer }, align 32
@scmi_base_set_notify_enabled.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scmi_base_set_notify_enabled\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FAIL_ENABLED - evt[%X] ret:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"SCMI Notifications BASE - FAIL_ENABLED - evt[%X] ret:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"scmi_base\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 384, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"base_protocol_events\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 333, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 370, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 373, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 378, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 201, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"base_event_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 328, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"base_events\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 319, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [36 x i8] c"../drivers/firmware/arm_scmi/base.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 284, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @scmi_base_implementation_list_get._entry, ptr @scmi_base_implementation_list_get._entry_ptr, ptr @scmi_base_protocol_init._entry, ptr @scmi_base_protocol_init._entry_ptr, ptr @scmi_base_unregister, ptr @scmi_base, ptr @base_protocol_events, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @base_event_ops, ptr @base_events, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_base to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_protocol_events to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_base_protocol_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_base_implementation_list_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_event_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_events to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_base_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_base) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_base_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_base) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_base_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %t.i177 = alloca ptr, align 4
  %t.i168 = alloca ptr, align 4
  %t.i154 = alloca ptr, align 4
  %t.i136 = alloca ptr, align 4
  %t.i126 = alloca ptr, align 4
  %t.i = alloca ptr, align 4
  %version = alloca i32, align 4
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #8
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #8
  %1 = call ptr @memset(ptr %name, i32 255, i32 16)
  %2 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ph, align 4
  %call = tail call ptr @scmi_revision_area_get(ptr noundef %ph) #8
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %4 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = call i32 %7(ptr noundef %ph, ptr noundef nonnull %version) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18:                                         ; preds = %if.end
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  %shr = lshr i32 %9, 16
  %conv = trunc i32 %shr to i16
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %call, align 4
  %11 = load i32, ptr %version, align 4
  %conv37 = trunc i32 %11 to i16
  %minor_ver = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %minor_ver to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv37, ptr %minor_ver, align 2
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %13 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_priv, align 4
  %call38 = call i32 %14(ptr noundef %ph, ptr noundef %call) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #8
  %15 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !45
  %get_priv.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %16 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_priv.i, align 4
  %call.i = call ptr %17(ptr noundef %ph) #8
  %18 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xfer_get_init.i, align 4
  %call1.i = call i32 %21(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end18.scmi_base_attributes_get.exit_crit_edge

do.end18.scmi_base_attributes_get.exit_crit_edge: ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_base_attributes_get.exit

if.end.i:                                         ; preds = %do.end18
  %22 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %do_xfer.i, align 4
  %26 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t.i, align 4
  %call3.i = call i32 %25(ptr noundef %ph, ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 2
  %num_protocols6.i = getelementptr inbounds %struct.scmi_revision_info, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %num_protocols6.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %num_protocols6.i, align 4
  %num_agents.i = getelementptr inbounds %struct.scmi_msg_resp_base_attributes, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %num_agents.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_agents.i, align 1
  %num_agents7.i = getelementptr inbounds %struct.scmi_revision_info, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %num_agents7.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %num_agents7.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %38 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xops, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xfer_put.i, align 4
  %42 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %t.i, align 4
  call void %41(ptr noundef %ph, ptr noundef %43) #8
  br label %scmi_base_attributes_get.exit

scmi_base_attributes_get.exit:                    ; preds = %if.end8.i, %do.end18.scmi_base_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i126) #8
  %44 = ptrtoint ptr %t.i126 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i126, align 4, !annotation !45
  %45 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_priv.i, align 4
  %call.i128 = call ptr %46(ptr noundef %ph) #8
  %vendor_id1.i = getelementptr inbounds %struct.scmi_revision_info, ptr %call.i128, i32 0, i32 5
  %47 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xops, align 4
  %xfer_get_init.i130 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %xfer_get_init.i130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xfer_get_init.i130, align 4
  %call3.i131 = call i32 %50(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %t.i126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i131)
  %tobool4.not.i132 = icmp eq i32 %call3.i131, 0
  br i1 %tobool4.not.i132, label %if.end6.i, label %scmi_base_attributes_get.exit.scmi_base_vendor_id_get.exit_crit_edge

scmi_base_attributes_get.exit.scmi_base_vendor_id_get.exit_crit_edge: ; preds = %scmi_base_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_base_vendor_id_get.exit

if.end6.i:                                        ; preds = %scmi_base_attributes_get.exit
  %51 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xops, align 4
  %do_xfer.i133 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %do_xfer.i133 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %do_xfer.i133, align 4
  %55 = ptrtoint ptr %t.i126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %t.i126, align 4
  %call8.i = call i32 %54(ptr noundef %ph, ptr noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %t.i126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %t.i126, align 4
  %rx.i134 = getelementptr inbounds %struct.scmi_xfer, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %rx.i134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx.i134, align 4
  %61 = call ptr @memcpy(ptr %vendor_id1.i, ptr %60, i32 16)
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end11.i_crit_edge
  %62 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xops, align 4
  %xfer_put.i135 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %xfer_put.i135 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xfer_put.i135, align 4
  %66 = ptrtoint ptr %t.i126 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %t.i126, align 4
  call void %65(ptr noundef %ph, ptr noundef %67) #8
  br label %scmi_base_vendor_id_get.exit

scmi_base_vendor_id_get.exit:                     ; preds = %if.end11.i, %scmi_base_attributes_get.exit.scmi_base_vendor_id_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i126) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i136) #8
  %68 = ptrtoint ptr %t.i136 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i136, align 4, !annotation !45
  %69 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_priv.i, align 4
  %call.i138 = call ptr %70(ptr noundef %ph) #8
  %sub_vendor_id.i139 = getelementptr inbounds %struct.scmi_revision_info, ptr %call.i138, i32 0, i32 6
  %71 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xops, align 4
  %xfer_get_init.i142 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %xfer_get_init.i142 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xfer_get_init.i142, align 4
  %call3.i143 = call i32 %74(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %t.i136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i143)
  %tobool4.not.i144 = icmp eq i32 %call3.i143, 0
  br i1 %tobool4.not.i144, label %if.end6.i148, label %scmi_base_vendor_id_get.exit.scmi_base_vendor_id_get.exit153_crit_edge

scmi_base_vendor_id_get.exit.scmi_base_vendor_id_get.exit153_crit_edge: ; preds = %scmi_base_vendor_id_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_base_vendor_id_get.exit153

if.end6.i148:                                     ; preds = %scmi_base_vendor_id_get.exit
  %75 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %xops, align 4
  %do_xfer.i145 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %do_xfer.i145 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %do_xfer.i145, align 4
  %79 = ptrtoint ptr %t.i136 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %t.i136, align 4
  %call8.i146 = call i32 %78(ptr noundef %ph, ptr noundef %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i146)
  %tobool9.not.i147 = icmp eq i32 %call8.i146, 0
  br i1 %tobool9.not.i147, label %if.then10.i150, label %if.end6.i148.if.end11.i152_crit_edge

if.end6.i148.if.end11.i152_crit_edge:             ; preds = %if.end6.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i152

if.then10.i150:                                   ; preds = %if.end6.i148
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %t.i136 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %t.i136, align 4
  %rx.i149 = getelementptr inbounds %struct.scmi_xfer, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %rx.i149 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rx.i149, align 4
  %85 = call ptr @memcpy(ptr %sub_vendor_id.i139, ptr %84, i32 16)
  br label %if.end11.i152

if.end11.i152:                                    ; preds = %if.then10.i150, %if.end6.i148.if.end11.i152_crit_edge
  %86 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xops, align 4
  %xfer_put.i151 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %xfer_put.i151 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xfer_put.i151, align 4
  %90 = ptrtoint ptr %t.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %t.i136, align 4
  call void %89(ptr noundef %ph, ptr noundef %91) #8
  br label %scmi_base_vendor_id_get.exit153

scmi_base_vendor_id_get.exit153:                  ; preds = %if.end11.i152, %scmi_base_vendor_id_get.exit.scmi_base_vendor_id_get.exit153_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i136) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i154) #8
  %92 = ptrtoint ptr %t.i154 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i154, align 4, !annotation !45
  %93 = ptrtoint ptr %get_priv.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %get_priv.i, align 4
  %call.i156 = call ptr %94(ptr noundef %ph) #8
  %95 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %xops, align 4
  %xfer_get_init.i158 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %xfer_get_init.i158 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xfer_get_init.i158, align 4
  %call1.i159 = call i32 %98(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %t.i154) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool.not.i160, label %if.end.i164, label %scmi_base_vendor_id_get.exit153.scmi_base_implementation_version_get.exit_crit_edge

scmi_base_vendor_id_get.exit153.scmi_base_implementation_version_get.exit_crit_edge: ; preds = %scmi_base_vendor_id_get.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_base_implementation_version_get.exit

if.end.i164:                                      ; preds = %scmi_base_vendor_id_get.exit153
  %99 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xops, align 4
  %do_xfer.i161 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %do_xfer.i161 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %do_xfer.i161, align 4
  %103 = ptrtoint ptr %t.i154 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %t.i154, align 4
  %call3.i162 = call i32 %102(ptr noundef %ph, ptr noundef %104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i162)
  %tobool4.not.i163 = icmp eq i32 %call3.i162, 0
  br i1 %tobool4.not.i163, label %if.then5.i166, label %if.end.i164.if.end7.i_crit_edge

if.end.i164.if.end7.i_crit_edge:                  ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i166:                                    ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %t.i154 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %t.i154, align 4
  %rx.i165 = getelementptr inbounds %struct.scmi_xfer, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %rx.i165 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rx.i165, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110) #8
  %impl_ver6.i = getelementptr inbounds %struct.scmi_revision_info, ptr %call.i156, i32 0, i32 4
  %112 = ptrtoint ptr %impl_ver6.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %impl_ver6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i166, %if.end.i164.if.end7.i_crit_edge
  %113 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %xops, align 4
  %xfer_put.i167 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %xfer_put.i167 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xfer_put.i167, align 4
  %117 = ptrtoint ptr %t.i154 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %t.i154, align 4
  call void %116(ptr noundef %ph, ptr noundef %118) #8
  br label %scmi_base_implementation_version_get.exit

scmi_base_implementation_version_get.exit:        ; preds = %if.end7.i, %scmi_base_vendor_id_get.exit153.scmi_base_implementation_version_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i154) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i168) #8
  %119 = ptrtoint ptr %t.i168 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i168, align 4, !annotation !45
  %120 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ph, align 4
  %122 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %xops, align 4
  %xfer_get_init.i170 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %xfer_get_init.i170 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xfer_get_init.i170, align 4
  %call.i171 = call i32 %125(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t.i168) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.end.i174, label %scmi_base_implementation_version_get.exit.scmi_base_implementation_list_get.exit_crit_edge

scmi_base_implementation_version_get.exit.scmi_base_implementation_list_get.exit_crit_edge: ; preds = %scmi_base_implementation_version_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_base_implementation_list_get.exit

if.end.i174:                                      ; preds = %scmi_base_implementation_version_get.exit
  %126 = ptrtoint ptr %t.i168 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %t.i168, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tx.i, align 4
  %rx.i173 = getelementptr inbounds %struct.scmi_xfer, ptr %127, i32 0, i32 3
  %130 = ptrtoint ptr %rx.i173 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx.i173, align 4
  %add.ptr.i = getelementptr i8, ptr %131, i32 4
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %129, align 4
  %133 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %xops, align 4
  %do_xfer.i175190 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %do_xfer.i175190 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %do_xfer.i175190, align 4
  %137 = load ptr, ptr %t.i168, align 4
  %call6.i191 = call i32 %136(ptr noundef %ph, ptr noundef %137) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i191)
  %tobool7.not.i192 = icmp eq i32 %call6.i191, 0
  br i1 %tobool7.not.i192, label %if.end.i174.if.end9.i_crit_edge, label %if.end.i174.do.end20.i_crit_edge

if.end.i174.do.end20.i_crit_edge:                 ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

if.end.i174.if.end9.i_crit_edge:                  ; preds = %if.end.i174
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i.if.end9.i_crit_edge, %if.end.i174.if.end9.i_crit_edge
  %tot_num_ret.0.i193 = phi i32 [ %add.i, %for.end.i.if.end9.i_crit_edge ], [ 0, %if.end.i174.if.end9.i_crit_edge ]
  %138 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %131, align 4
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  %add.i = add i32 %140, %tot_num_ret.0.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 16
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp131.not.i = icmp eq i32 %139, 0
  br i1 %cmp131.not.i, label %do.end20.loopexit.critedge.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = call i32 @llvm.umax.i32(i32 %140, i32 1) #8
  br label %for.body.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.8) #11
  br label %do.end20.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %loop.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %loop.02.i
  %141 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %add.ptr14.i, align 1
  %add15.i = add i32 %loop.02.i, %tot_num_ret.0.i193
  %arrayidx.i = getelementptr i8, ptr %call5.i.i, i32 %add15.i
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx.i, align 1
  %inc.i = add nuw i32 %loop.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %144 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %reset_rx_to_maxsz.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reset_rx_to_maxsz.i, align 4
  %148 = ptrtoint ptr %t.i168 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %t.i168, align 4
  call void %147(ptr noundef %ph, ptr noundef %149) #8
  %150 = call i32 @llvm.bswap.i32(i32 %add.i) #8
  %151 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %129, align 4
  %152 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %xops, align 4
  %do_xfer.i175 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %do_xfer.i175 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %do_xfer.i175, align 4
  %156 = ptrtoint ptr %t.i168 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %t.i168, align 4
  %call6.i = call i32 %155(ptr noundef %ph, ptr noundef %157) #8
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.end.i.if.end9.i_crit_edge, label %for.end.i.do.end20.i_crit_edge

for.end.i.do.end20.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

for.end.i.if.end9.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

do.end20.loopexit.critedge.i:                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz.c.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %reset_rx_to_maxsz.c.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reset_rx_to_maxsz.c.i, align 4
  %162 = ptrtoint ptr %t.i168 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %t.i168, align 4
  call void %161(ptr noundef %ph, ptr noundef %163) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end20.loopexit.critedge.i, %for.end.i.do.end20.i_crit_edge, %do.end.i, %if.end.i174.do.end20.i_crit_edge
  %164 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %xops, align 4
  %xfer_put.i176 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %xfer_put.i176 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %xfer_put.i176, align 4
  %168 = ptrtoint ptr %t.i168 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %t.i168, align 4
  call void %167(ptr noundef %ph, ptr noundef %169) #8
  br label %scmi_base_implementation_list_get.exit

scmi_base_implementation_list_get.exit:           ; preds = %do.end20.i, %scmi_base_implementation_version_get.exit.scmi_base_implementation_list_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i168) #8
  call void @scmi_setup_protocol_implemented(ptr noundef %ph, ptr noundef nonnull %call5.i.i) #8
  %170 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %call, align 4
  %conv48 = zext i16 %171 to i32
  %172 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %minor_ver, align 2
  %conv50 = zext i16 %173 to i32
  %vendor_id = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 5
  %sub_vendor_id = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 6
  %impl_ver = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 4
  %174 = ptrtoint ptr %impl_ver to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %impl_ver, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %conv48, i32 noundef %conv50, ptr noundef %vendor_id, ptr noundef %sub_vendor_id, i32 noundef %175) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_base_protocol_init.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_base_protocol_init, %if.then58)) #8
          to label %do.end63 [label %if.then58], !srcloc !46

if.then58:                                        ; preds = %scmi_base_implementation_list_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %num_protocols = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 2
  %176 = ptrtoint ptr %num_protocols to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %num_protocols, align 4
  %conv59 = zext i8 %177 to i32
  %num_agents = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 3
  %178 = ptrtoint ptr %num_agents to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %num_agents, align 1
  %conv60 = zext i8 %179 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_base_protocol_init.__UNIQUE_ID_ddebug221, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %conv59, i32 noundef %conv60) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %scmi_base_implementation_list_get.exit
  %num_agents64 = getelementptr inbounds %struct.scmi_revision_info, ptr %call, i32 0, i32 3
  %180 = ptrtoint ptr %num_agents64 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %num_agents64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp195.not = icmp eq i8 %181, 0
  br i1 %cmp195.not, label %do.end63.cleanup_crit_edge, label %do.end63.for.body_crit_edge

do.end63.for.body_crit_edge:                      ; preds = %do.end63
  br label %for.body

do.end63.cleanup_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end63.for.body_crit_edge
  %id.0196 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end63.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i177) #8
  %182 = ptrtoint ptr %t.i177 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i177, align 4, !annotation !45
  %183 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %xops, align 4
  %xfer_get_init.i179 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %xfer_get_init.i179 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %xfer_get_init.i179, align 4
  %call.i180 = call i32 %186(ptr noundef %ph, i8 noundef zeroext 7, i32 noundef 4, i32 noundef 20, ptr noundef nonnull %t.i177) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool.not.i181 = icmp eq i32 %call.i180, 0
  br i1 %tobool.not.i181, label %if.end.i184, label %for.body.scmi_base_discover_agent_get.exit_crit_edge

for.body.scmi_base_discover_agent_get.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %scmi_base_discover_agent_get.exit

if.end.i184:                                      ; preds = %for.body
  %187 = ptrtoint ptr %t.i177 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %t.i177, align 4
  %tx.i182 = getelementptr inbounds %struct.scmi_xfer, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %tx.i182 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tx.i182, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %id.0196) #8
  %192 = ptrtoint ptr %190 to i32
  call void @__asan_storeN_noabort(i32 %192, i32 4)
  store i32 %191, ptr %190, align 1
  %193 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %xops, align 4
  %do_xfer.i183 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %do_xfer.i183 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %do_xfer.i183, align 4
  %197 = ptrtoint ptr %t.i177 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %t.i177, align 4
  %call2.i = call i32 %196(ptr noundef %ph, ptr noundef %198) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i184.if.end8.i187_crit_edge

if.end.i184.if.end8.i187_crit_edge:               ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i187

if.then4.i:                                       ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %t.i177 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %t.i177, align 4
  %rx.i185 = getelementptr inbounds %struct.scmi_xfer, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %rx.i185 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rx.i185, align 4
  %name6.i = getelementptr inbounds %struct.scmi_msg_resp_base_discover_agent, ptr %202, i32 0, i32 1
  %call7.i = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef %name6.i, i32 noundef 16) #8
  br label %if.end8.i187

if.end8.i187:                                     ; preds = %if.then4.i, %if.end.i184.if.end8.i187_crit_edge
  %203 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %xops, align 4
  %xfer_put.i186 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %204, i32 0, i32 5
  %205 = ptrtoint ptr %xfer_put.i186 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %xfer_put.i186, align 4
  %207 = ptrtoint ptr %t.i177 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %t.i177, align 4
  call void %206(ptr noundef %ph, ptr noundef %208) #8
  br label %scmi_base_discover_agent_get.exit

scmi_base_discover_agent_get.exit:                ; preds = %if.end8.i187, %for.body.scmi_base_discover_agent_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i177) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_base_protocol_init.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_base_protocol_init, %if.then81)) #8
          to label %for.inc [label %if.then81], !srcloc !46

if.then81:                                        ; preds = %scmi_base_discover_agent_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_base_protocol_init.__UNIQUE_ID_ddebug222, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %id.0196, ptr noundef nonnull %name) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %scmi_base_discover_agent_get.exit
  %inc = add nuw nsw i32 %id.0196, 1
  %209 = ptrtoint ptr %num_agents64 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %num_agents64, align 1
  %conv65 = zext i8 %210 to i32
  %cmp = icmp ult i32 %inc, %conv65
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end63.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.end63.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_revision_area_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_setup_protocol_implemented(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_base_set_notify_enabled(ptr noundef %ph, i8 noundef zeroext %evt_id, i32 noundef %src_id, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #8
  %0 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !45
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %4(ptr noundef %ph, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %scmi_base_error_notify.exit, label %scmi_base_error_notify.exit.thread

scmi_base_error_notify.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  br label %do.body

scmi_base_error_notify.exit:                      ; preds = %entry
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %9 = select i1 %enable, i32 16777216, i32 0
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %11 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %do_xfer.i, align 4
  %15 = load ptr, ptr %t.i, align 4
  %call3.i = call i32 %14(ptr noundef %ph, ptr noundef %15) #8
  %16 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xfer_put.i, align 4
  %20 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t.i, align 4
  call void %19(ptr noundef %ph, ptr noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool1.not = icmp eq i32 %call3.i, 0
  br i1 %tobool1.not, label %scmi_base_error_notify.exit.if.end8_crit_edge, label %scmi_base_error_notify.exit.do.body_crit_edge

scmi_base_error_notify.exit.do.body_crit_edge:    ; preds = %scmi_base_error_notify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

scmi_base_error_notify.exit.if.end8_crit_edge:    ; preds = %scmi_base_error_notify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.body:                                          ; preds = %scmi_base_error_notify.exit.do.body_crit_edge, %scmi_base_error_notify.exit.thread
  %retval.0.i1114 = phi i32 [ %call.i, %scmi_base_error_notify.exit.thread ], [ %call3.i, %scmi_base_error_notify.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_base_set_notify_enabled.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_base_set_notify_enabled, %if.then7)) #8
          to label %if.end8 [label %if.then7], !srcloc !46

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %evt_id to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_base_set_notify_enabled.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %retval.0.i1114) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %scmi_base_error_notify.exit.if.end8_crit_edge
  %retval.0.i1115 = phi i32 [ %retval.0.i1114, %if.then7 ], [ 0, %scmi_base_error_notify.exit.if.end8_crit_edge ], [ %retval.0.i1114, %do.body ]
  ret i32 %retval.0.i1115
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_base_fill_custom_report(ptr nocapture noundef readnone %ph, i8 noundef zeroext %evt_id, i64 noundef %timestamp, ptr nocapture noundef readonly %payld, i32 noundef %payld_sz, ptr noundef %report, ptr nocapture noundef writeonly %src_id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %evt_id)
  %cmp.not = icmp ne i8 %evt_id, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %payld_sz)
  %cmp2 = icmp ugt i32 %payld_sz, 8200
  %or.cond = or i1 %cmp.not, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %timestamp, ptr %report, align 8
  %1 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payld, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %agent_id5 = getelementptr inbounds %struct.scmi_base_error_report, ptr %report, i32 0, i32 1
  %4 = ptrtoint ptr %agent_id5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %agent_id5, align 8
  %error_status = getelementptr inbounds %struct.scmi_base_error_notify_payld, ptr %payld, i32 0, i32 1
  %5 = ptrtoint ptr %error_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %error_status, align 4
  %fatal = getelementptr inbounds %struct.scmi_base_error_report, ptr %report, i32 0, i32 2
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 7
  %9 = ptrtoint ptr %fatal to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %fatal, align 4
  %10 = load i32, ptr %error_status, align 4
  %11 = and i32 %10, -16580608
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %cmd_count = getelementptr inbounds %struct.scmi_base_error_report, ptr %report, i32 0, i32 3
  %13 = ptrtoint ptr %cmd_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cmd_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2138.not = icmp eq i32 %11, 0
  br i1 %cmp2138.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scmi_base_error_notify_payld, ptr %payld, i32 0, i32 2, i32 %i.039
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %arrayidx23 = getelementptr %struct.scmi_base_error_report, ptr %report, i32 0, i32 4, i32 %i.039
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx23, align 8
  %inc = add nuw i32 %i.039, 1
  %18 = ptrtoint ptr %cmd_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_count, align 8
  %cmp21 = icmp ult i32 %inc, %19
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %20 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %src_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %report, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/base.c", i32 392, i32 1}
!2 = !{ptr @scmi_base, !3, !"scmi_base", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/base.c", i32 384, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/base.c", i32 370, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @scmi_base_protocol_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @scmi_base_protocol_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firmware/arm_scmi/base.c", i32 373, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @scmi_base_protocol_init.__UNIQUE_ID_ddebug221, !13, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/arm_scmi/base.c", i32 378, i32 3}
!18 = !{ptr @scmi_base_protocol_init.__UNIQUE_ID_ddebug222, !17, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/firmware/arm_scmi/base.c", i32 201, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @scmi_base_implementation_list_get._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @scmi_base_implementation_list_get._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @base_protocol_events, !26, !"base_protocol_events", i1 false, i1 false}
!26 = !{!"../drivers/firmware/arm_scmi/base.c", i32 333, i32 42}
!27 = !{ptr @base_event_ops, !28, !"base_event_ops", i1 false, i1 false}
!28 = !{!"../drivers/firmware/arm_scmi/base.c", i32 328, i32 36}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firmware/arm_scmi/base.c", i32 284, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @scmi_base_set_notify_enabled.__UNIQUE_ID_ddebug205, !30, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!33 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @base_events, !35, !"base_events", i1 false, i1 false}
!35 = !{!"../drivers/firmware/arm_scmi/base.c", i32 319, i32 32}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2148961109, i64 2148961114, i64 2148961127, i64 2148961171, i64 2148961205, i64 2148961226}
