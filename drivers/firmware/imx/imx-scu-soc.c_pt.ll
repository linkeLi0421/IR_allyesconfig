; ModuleID = '/llk/IR_all_yes/drivers/firmware/imx/imx-scu-soc.c_pt.bc'
source_filename = "../drivers/firmware/imx/imx-scu-soc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx_sc_msg_misc_get_soc_uid = type { %struct.imx_sc_rpc_msg, i32, i32 }
%struct.imx_sc_rpc_msg = type { i8, i8, i8, i8 }
%struct.imx_sc_msg_misc_get_soc_id = type { %struct.imx_sc_rpc_msg, %union.anon.43 }
%union.anon.43 = type { %struct.anon.45, [4 x i8] }
%struct.anon.45 = type { i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@imx_sc_soc_ipc_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Freescale i.MX\00", [17 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llX\00", [24 x i8] zeroinitializer }, align 32
@imx_scu_soc_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: get soc info failed, ret %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_scu_soc_id\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/imx/imx-scu-soc.c\00", [61 x i8] zeroinitializer }, align 32
@imx_scu_soc_id._entry_ptr = internal global ptr @imx_scu_soc_id._entry, section ".printk_index", align 4
@imx_scu_soc_uid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: get soc uid failed, ret %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_scu_soc_uid\00", [16 x i8] zeroinitializer }, align 32
@imx_scu_soc_uid._entry_ptr = internal global ptr @imx_scu_soc_uid._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"imx_sc_soc_ipc_handle\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 13, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 98, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 101, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 116, i32 57 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 123, i32 59 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 129, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 74, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [38 x i8] c"../drivers/firmware/imx/imx-scu-soc.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 47, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @imx_scu_soc_id._entry, ptr @imx_scu_soc_id._entry_ptr, ptr @imx_scu_soc_uid._entry, ptr @imx_scu_soc_uid._entry_ptr, ptr @imx_sc_soc_ipc_handle, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sc_soc_ipc_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_soc_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_scu_soc_uid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_scu_soc_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %msg.i71 = alloca %struct.imx_sc_msg_misc_get_soc_uid, align 1
  %msg.i = alloca %struct.imx_sc_msg_misc_get_soc_id, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @imx_scu_get_handle(ptr noundef nonnull @imx_sc_soc_ipc_handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %family, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %1 = load ptr, ptr @of_root, align 4
  %call5 = tail call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #4
  %2 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.imx_sc_msg_misc_get_soc_id, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.imx_sc_msg_misc_get_soc_id, ptr %msg.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 23330815, ptr %6, align 4
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %msg.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %3, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %4, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %2, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 14, ptr %5, align 4
  %13 = load ptr, ptr @imx_sc_soc_ipc_handle, align 4
  %call.i70 = call i32 @imx_scu_call_rpc(ptr noundef %13, ptr noundef nonnull %msg.i, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %call.i70) #7
  br label %imx_scu_soc_id.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  br label %imx_scu_soc_id.exit

imx_scu_soc_id.exit:                              ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i70, %do.end.i ], [ %15, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %imx_scu_soc_id.exit.cleanup_crit_edge, label %if.end11

imx_scu_soc_id.exit.cleanup_crit_edge:            ; preds = %imx_scu_soc_id.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %imx_scu_soc_id.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i71) #4
  %16 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i71, i32 0, i32 1
  %17 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i71, i32 0, i32 2
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, ptr %msg.i71, i32 0, i32 3
  %19 = getelementptr inbounds i8, ptr %msg.i71, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 -1, ptr %19, align 1
  %21 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %msg.i71, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 7, ptr %17, align 1
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 19, ptr %18, align 1
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %16, align 1
  %25 = load ptr, ptr @imx_sc_soc_ipc_handle, align 4
  %call.i72 = call i32 @imx_scu_call_rpc(ptr noundef %25, ptr noundef nonnull %msg.i71, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %imx_scu_soc_uid.exit.thread, label %imx_scu_soc_uid.exit

imx_scu_soc_uid.exit.thread:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %26 = getelementptr inbounds %struct.imx_sc_msg_misc_get_soc_uid, ptr %msg.i71, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %26, align 1
  %conv.i = zext i32 %28 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %19, align 1
  %conv3.i = zext i32 %30 to i64
  %or.i = or i64 %shl.i, %conv3.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i71) #4
  br label %if.end15

imx_scu_soc_uid.exit:                             ; preds = %if.end11
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %call.i72) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i71) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp13 = icmp slt i32 %call.i72, 0
  br i1 %cmp13, label %imx_scu_soc_uid.exit.cleanup_crit_edge, label %imx_scu_soc_uid.exit.if.end15_crit_edge

imx_scu_soc_uid.exit.if.end15_crit_edge:          ; preds = %imx_scu_soc_uid.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

imx_scu_soc_uid.exit.cleanup_crit_edge:           ; preds = %imx_scu_soc_uid.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %imx_scu_soc_uid.exit.if.end15_crit_edge, %imx_scu_soc_uid.exit.thread
  %uid.078 = phi i64 [ %or.i, %imx_scu_soc_uid.exit.thread ], [ 0, %imx_scu_soc_uid.exit.if.end15_crit_edge ]
  %and = and i32 %retval.0.i, 31
  %call16 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %and) #4
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16, ptr %soc_id, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %32 = lshr i32 %retval.0.i, 5
  %33 = shl nuw nsw i32 %32, 2
  %add = and i32 %33, 48
  %shl = add nuw nsw i32 %add, 16
  %and23 = and i32 %32, 3
  %shr24 = lshr exact i32 %shl, 4
  %call27 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %shr24, i32 noundef %and23) #4
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call27, ptr %revision, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end20.cleanup_crit_edge, label %if.end31

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  %call32 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.4, i64 noundef %uid.078) #4
  %serial_number = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %serial_number to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call32, ptr %serial_number, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call ptr @soc_device_register(ptr noundef nonnull %call.i) #4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call37 to i32
  %spec.select = select i1 %cmp.i, i32 %36, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %imx_scu_soc_uid.exit.cleanup_crit_edge, %imx_scu_soc_id.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %imx_scu_soc_id.exit.cleanup_crit_edge ], [ -22, %imx_scu_soc_uid.exit.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ %spec.select, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_call_rpc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 98, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 101, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 116, i32 57}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 123, i32 59}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 129, i32 12}
!10 = !{ptr @imx_sc_soc_ipc_handle, !11, !"imx_sc_soc_ipc_handle", i1 false, i1 false}
!11 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 13, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 74, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @imx_scu_soc_id._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx_scu_soc_id._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firmware/imx/imx-scu-soc.c", i32 47, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @imx_scu_soc_uid._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @imx_scu_soc_uid._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
