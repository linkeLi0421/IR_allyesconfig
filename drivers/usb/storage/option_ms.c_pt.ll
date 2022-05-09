; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/option_ms.c_pt.bc'
source_filename = "../drivers/usb/storage/option_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@__param_str_option_zero_cd = internal constant [27 x i8] c"usb_storage.option_zero_cd\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@option_zero_cd = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_option_zero_cd = internal constant %struct.kernel_param { ptr @__param_str_option_zero_cd, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @option_zero_cd } }, section "__param", align 4
@__UNIQUE_ID_option_zero_cdtype287 = internal constant [41 x i8] c"usb_storage.parmtype=option_zero_cd:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_option_zero_cd288 = internal constant [85 x i8] c"usb_storage.parm=option_zero_cd:ZeroCD mode (1=Force Modem (default), 2=Allow CD-Rom\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Option MS: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"option_ms_init called\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"vendor is not Option or not determinable, no action taken\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"this is a genuine Option device, proceeding\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Forcing Modem Mode\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to switch to modem mode\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Allowing Mass Storage Mode if device requests it\00", [47 x i8] zeroinitializer }, align 32
@option_inquiry.inquiry_msg = internal constant { <{ [20 x i8], [11 x i8] }>, [33 x i8] } { <{ [20 x i8], [11 x i8] }> <{ [20 x i8] c"USBC\124Vx$\00\00\00\80\00\06\12\00\00\00$", [11 x i8] zeroinitializer }>, [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"device inquiry for vendor name\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Option\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ZCOPTION\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@option_rezero.rezero_msg = internal constant { <{ [16 x i8], [15 x i8] }>, [33 x i8] } { <{ [16 x i8], [15 x i8] }> <{ [16 x i8] c"USBCxV4\12\01\00\00\00\80\00\06\01", [15 x i8] zeroinitializer }>, [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEVICE MODE SWITCH\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"option_zero_cd\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 22, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 129, i32 19 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 129, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 138, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 142, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 146, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 150, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 155, i32 9 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"inquiry_msg\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 77, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 86, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 109, i32 28 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 112, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"rezero_msg\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 31, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [35 x i8] c"../drivers/usb/storage/option_ms.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 40, i32 38 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_option_zero_cd288, ptr @__UNIQUE_ID_option_zero_cdtype287, ptr @__param_option_zero_cd, ptr @option_zero_cd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @option_inquiry.inquiry_msg, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @option_rezero.rezero_msg, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @option_zero_cd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @option_inquiry.inquiry_msg to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @option_rezero.rezero_msg to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @option_ms_init(ptr noundef %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #7
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i.i, ptr @option_inquiry.inquiry_msg, i32 31)
  %send_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 6
  %2 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %send_bulk_pipe.i, align 4
  %call1.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %3, ptr noundef nonnull %call7.i.i.i, i32 noundef 31, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i.option_inquiry.exit.thread34_crit_edge

if.end.i.option_inquiry.exit.thread34_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %option_inquiry.exit.thread34

if.end4.i:                                        ; preds = %if.end.i
  %recv_bulk_pipe.i = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 7
  %4 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call5.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %5, ptr noundef nonnull %call7.i.i.i, i32 noundef 36, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end4.i.option_inquiry.exit.thread34_crit_edge

if.end4.i.option_inquiry.exit.thread34_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %option_inquiry.exit.thread34

if.end8.i:                                        ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr.i, ptr noundef nonnull dereferenceable(6) @.str.8, i32 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp10.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp10.not.i, label %if.else.critedge, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i, ptr noundef nonnull dereferenceable(8) @.str.9, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %phi.cmp = icmp eq i32 %bcmp, 0
  %6 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call16.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %7, ptr noundef nonnull %call7.i.i.i, i32 noundef 13, ptr noundef null) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br i1 %phi.cmp, label %if.then11.i.if.else_crit_edge, label %if.then11.i.if.then_crit_edge

if.then11.i.if.then_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then11.i.if.else_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

option_inquiry.exit.thread34:                     ; preds = %if.end4.i.option_inquiry.exit.thread34_crit_edge, %if.end.i.option_inquiry.exit.thread34_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %if.then

if.then:                                          ; preds = %option_inquiry.exit.thread34, %if.then11.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.else.critedge:                                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call16.i.c = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %9, ptr noundef nonnull %call7.i.i.i, i32 noundef 13, ptr noundef null) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %if.then11.i.if.else_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #4
  %10 = load i32, ptr @option_zero_cd, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.else.cleanup_crit_edge [
    i32 1, label %if.then2
    i32 2, label %if.then9
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #4
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1024) #7
  %cmp.i21 = icmp eq ptr %call7.i.i.i20, null
  br i1 %cmp.i21, label %if.then2.if.then5_crit_edge, label %if.end.i25

if.then2.if.then5_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.end.i25:                                       ; preds = %if.then2
  %13 = call ptr @memcpy(ptr %call7.i.i.i20, ptr @option_rezero.rezero_msg, i32 31)
  %14 = ptrtoint ptr %send_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %send_bulk_pipe.i, align 4
  %call1.i23 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %15, ptr noundef nonnull %call7.i.i.i20, i32 noundef 31, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %cmp2.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %cmp2.not.i24, label %option_rezero.exit.thread39, label %option_rezero.exit

option_rezero.exit.thread39:                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call5.i27 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %17, ptr noundef nonnull %call7.i.i.i20, i32 noundef 1024, ptr noundef null) #4
  %18 = ptrtoint ptr %recv_bulk_pipe.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %recv_bulk_pipe.i, align 4
  %call7.i = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %us, i32 noundef %19, ptr noundef nonnull %call7.i.i.i20, i32 noundef 13, ptr noundef null) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i20) #4
  br label %cleanup

option_rezero.exit:                               ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i20) #4
  br label %if.then5

if.then5:                                         ; preds = %option_rezero.exit, %if.then2.if.then5_crit_edge
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then5, %option_rezero.exit.thread39, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %if.then5 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then9 ], [ -5, %option_rezero.exit.thread39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__param_option_zero_cd, !1, !"__param_option_zero_cd", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/option_ms.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_option_zero_cdtype287, !1, !"__UNIQUE_ID_option_zero_cdtype287", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_option_zero_cd288, !4, !"__UNIQUE_ID_option_zero_cd288", i1 false, i1 false}
!4 = !{!"../drivers/usb/storage/option_ms.c", i32 24, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/storage/option_ms.c", i32 129, i32 19}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/option_ms.c", i32 129, i32 38}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/option_ms.c", i32 138, i32 9}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/storage/option_ms.c", i32 142, i32 9}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/storage/option_ms.c", i32 146, i32 39}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/storage/option_ms.c", i32 150, i32 10}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/storage/option_ms.c", i32 155, i32 9}
!19 = !{ptr @__param_str_option_zero_cd, !1, !"__param_str_option_zero_cd", i1 false, i1 false}
!20 = !{ptr @option_zero_cd, !21, !"option_zero_cd", i1 false, i1 false}
!21 = !{!"../drivers/usb/storage/option_ms.c", i32 22, i32 21}
!22 = !{ptr @option_inquiry.inquiry_msg, !23, !"inquiry_msg", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/option_ms.c", i32 77, i32 29}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/storage/option_ms.c", i32 86, i32 38}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/storage/option_ms.c", i32 109, i32 28}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/storage/option_ms.c", i32 112, i32 29}
!30 = !{ptr @option_rezero.rezero_msg, !31, !"rezero_msg", i1 false, i1 false}
!31 = !{!"../drivers/usb/storage/option_ms.c", i32 31, i32 29}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/storage/option_ms.c", i32 40, i32 38}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
