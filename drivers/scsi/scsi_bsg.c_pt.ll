; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_bsg.c_pt.bc'
source_filename = "../drivers/scsi/scsi_bsg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sg_io_v4 = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.70, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.77, %union.anon.78, %union.anon.79, %union.anon.82, ptr, ptr }
%union.anon.70 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, ptr }
%union.anon.82 = type { i64, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@scsi_bsg_sg_io_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@scsi_bsg_sg_io_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014BIDI support in bsg has been removed.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_bsg_sg_io_fn\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/scsi/scsi_bsg.c\00", [40 x i8] zeroinitializer }, align 32
@scsi_bsg_sg_io_fn._entry_ptr = internal global ptr @scsi_bsg_sg_io_fn._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private constant [27 x i8] c"../drivers/scsi/scsi_bsg.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 24, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 230, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 214, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 156, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @scsi_bsg_sg_io_fn._entry, ptr @scsi_bsg_sg_io_fn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_bsg_sg_io_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_bsg_register_queue(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %init_name.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %sdev_gendev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev_gendev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @bsg_register_queue(ptr noundef %1, ptr noundef %sdev_gendev, ptr noundef %retval.0.i, ptr noundef nonnull @scsi_bsg_sg_io_fn) #6
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsg_register_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bsg_sg_io_fn(ptr noundef %q, ptr nocapture noundef %hdr, i32 noundef %mode, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %subprotocol = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %subprotocol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subprotocol, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dout_xfer_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 12
  %4 = ptrtoint ptr %dout_xfer_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dout_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %din_xfer_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 14
  %6 = ptrtoint ptr %din_xfer_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %din_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end18_crit_edge, label %land.end

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.end:                                         ; preds = %land.lhs.true
  %.b194 = load i1, ptr @scsi_bsg_sg_io_fn.__already_done, align 1
  br i1 %.b194, label %land.end.cleanup_crit_edge, label %if.then9, !prof !24

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @scsi_bsg_sg_io_fn.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %cond = phi i32 [ 35, %land.lhs.true.if.end18_crit_edge ], [ 34, %if.end.if.end18_crit_edge ]
  %call21 = tail call ptr @scsi_alloc_request(ptr noundef %q, i32 noundef %cond, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %timeout26 = getelementptr inbounds %struct.request, ptr %call21, i32 0, i32 7
  %9 = ptrtoint ptr %timeout26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %timeout, ptr %timeout26, align 4
  %add.ptr.i.i210 = getelementptr %struct.request, ptr %call21, i32 1
  %request_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %request_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %request_len, align 4
  %conv = trunc i32 %11 to i16
  %cmd_len = getelementptr %struct.request, ptr %call21, i32 1, i32 5
  %12 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %cmd_len, align 4
  %conv29 = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv29)
  %cmp30 = icmp ugt i32 %conv29, 16
  br i1 %cmp30, label %if.end8.i.i215, label %if.end25.if.end40_crit_edge

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end8.i.i215:                                   ; preds = %if.end25
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv29, i32 noundef 3520) #10
  %cmd = getelementptr %struct.request, ptr %call21, i32 1, i32 4
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %cmd, align 4
  %tobool37.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool37.not, label %if.end8.i.i215.out_put_request_crit_edge, label %if.end8.i.i215.if.end40_crit_edge

if.end8.i.i215.if.end40_crit_edge:                ; preds = %if.end8.i.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end8.i.i215.out_put_request_crit_edge:         ; preds = %if.end8.i.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_request

if.end40:                                         ; preds = %if.end8.i.i215.if.end40_crit_edge, %if.end25.if.end40_crit_edge
  %cmd41 = getelementptr %struct.request, ptr %call21, i32 1, i32 4
  %14 = ptrtoint ptr %cmd41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd41, align 4
  %request = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 4
  %16 = ptrtoint ptr %request to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %request, align 8
  %conv42 = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv42 to ptr
  %19 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cmd_len, align 4
  %conv44 = zext i16 %20 to i32
  tail call void @__check_object_size(ptr noundef %15, i32 noundef %conv44, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end40.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end40.if.end.i.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end40
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %conv44, i32 -1226833920) #11, !srcloc !25
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !24

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef %conv44) #6
  %22 = tail call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !26
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %15, ptr noundef %18, i32 noundef %conv44) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end40.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv44, %if.end40.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv44, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end48, label %if.then11.i.i, !prof !24

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %conv44, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out_free_cmd

if.end48:                                         ; preds = %if.end.i.i
  %26 = ptrtoint ptr %cmd41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd41, align 4
  %call50 = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %27, i32 noundef %mode) #6
  br i1 %call50, label %if.end52, label %if.end48.out_free_cmd_crit_edge

if.end48.out_free_cmd_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_cmd

if.end52:                                         ; preds = %if.end48
  %28 = ptrtoint ptr %dout_xfer_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dout_xfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool54.not = icmp eq i32 %29, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call21, align 8
  %dout_xferp = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 15
  %32 = ptrtoint ptr %dout_xferp to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %dout_xferp, align 8
  %conv57 = trunc i64 %33 to i32
  %34 = inttoptr i32 %conv57 to ptr
  %call59 = tail call i32 @blk_rq_map_user(ptr noundef %31, ptr noundef %call21, ptr noundef null, ptr noundef %34, i32 noundef %29, i32 noundef 3264) #6
  br label %if.end68

if.else:                                          ; preds = %if.end52
  %din_xfer_len60 = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 14
  %35 = ptrtoint ptr %din_xfer_len60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %din_xfer_len60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool61.not = icmp eq i32 %36, 0
  br i1 %tobool61.not, label %if.else.if.end71_crit_edge, label %if.then62

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call21, align 8
  %din_xferp = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 16
  %39 = ptrtoint ptr %din_xferp to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %din_xferp, align 8
  %conv64 = trunc i64 %40 to i32
  %41 = inttoptr i32 %conv64 to ptr
  %call66 = tail call i32 @blk_rq_map_user(ptr noundef %38, ptr noundef %call21, ptr noundef null, ptr noundef %41, i32 noundef %36, i32 noundef 3264) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.then55
  %ret.0 = phi i32 [ %call59, %if.then55 ], [ %call66, %if.then62 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool69.not = icmp eq i32 %ret.0, 0
  br i1 %tobool69.not, label %if.end68.if.end71_crit_edge, label %if.end68.out_free_cmd_crit_edge

if.end68.out_free_cmd_crit_edge:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_cmd

if.end68.if.end71_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.end71:                                         ; preds = %if.end68.if.end71_crit_edge, %if.else.if.end71_crit_edge
  %bio72 = getelementptr inbounds %struct.request, ptr %call21, i32 0, i32 10
  %42 = ptrtoint ptr %bio72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bio72, align 8
  %flags = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 18
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool73.not = icmp eq i32 %and, 0
  %call76 = tail call zeroext i8 @blk_execute_rq(ptr noundef %call21, i1 noundef zeroext %tobool73.not) #6
  %result = getelementptr %struct.request, ptr %call21, i32 1, i32 6
  %46 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %result, align 4
  %and77 = and i32 %47, 255
  %device_status = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 23
  %48 = ptrtoint ptr %device_status to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and77, ptr %device_status, align 4
  %49 = load i32, ptr %result, align 4
  %50 = lshr i32 %49, 16
  %and79 = and i32 %50, 255
  %transport_status = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 22
  %51 = ptrtoint ptr %transport_status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and79, ptr %transport_status, align 8
  %driver_status = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 21
  %52 = ptrtoint ptr %driver_status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %driver_status, align 4
  %53 = load i32, ptr %result, align 4
  %54 = and i32 %53, -2147483394
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %.not = icmp eq i32 %54, 2
  %spec.store.select = select i1 %.not, i32 8, i32 0
  %55 = ptrtoint ptr %driver_status to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select, ptr %driver_status, align 4
  %info = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 25
  %56 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool87.not = icmp eq i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool90.not = icmp eq i32 %and79, 0
  %or.cond = select i1 %tobool87.not, i1 %tobool90.not, i1 false
  br i1 %or.cond, label %lor.lhs.false91, label %if.end71.if.then94_crit_edge

if.end71.if.then94_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94

lor.lhs.false91:                                  ; preds = %if.end71
  %57 = ptrtoint ptr %driver_status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %driver_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool93.not = icmp eq i32 %58, 0
  br i1 %tobool93.not, label %lor.lhs.false91.if.end96_crit_edge, label %lor.lhs.false91.if.then94_crit_edge

lor.lhs.false91.if.then94_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94

lor.lhs.false91.if.end96_crit_edge:               ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then94:                                        ; preds = %lor.lhs.false91.if.then94_crit_edge, %if.end71.if.then94_crit_edge
  %59 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %info, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %lor.lhs.false91.if.end96_crit_edge
  %response_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 27
  %60 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %response_len, align 4
  %sense_len = getelementptr %struct.request, ptr %call21, i32 1, i32 7
  %61 = ptrtoint ptr %sense_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sense_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool97.not = icmp eq i32 %62, 0
  br i1 %tobool97.not, label %if.end96.if.end114_crit_edge, label %land.lhs.true98

if.end96.if.end114_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

land.lhs.true98:                                  ; preds = %if.end96
  %response = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 10
  %63 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %response, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool99.not = icmp eq i64 %64, 0
  br i1 %tobool99.not, label %land.lhs.true98.if.end114_crit_edge, label %if.then100

land.lhs.true98.if.end114_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then100:                                       ; preds = %land.lhs.true98
  %max_response_len = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 9
  %65 = ptrtoint ptr %max_response_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_response_len, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 %62)
  %conv107 = trunc i64 %64 to i32
  %68 = inttoptr i32 %conv107 to ptr
  %sense = getelementptr %struct.request, ptr %call21, i32 1, i32 9
  %69 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp9.i.i = icmp slt i32 %67, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i202

land.rhs16.i.i:                                   ; preds = %if.then100
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end114_crit_edge, label %if.then27.i.i, !prof !24

land.rhs16.i.i.if.end114_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %if.end114

if.then.i.i.i202:                                 ; preds = %if.then100
  tail call void @__check_object_size(ptr noundef %70, i32 noundef %67, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #6
  %call.i.i203 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i203, label %if.then.i.i.i202.copy_to_user.exit_crit_edge, label %if.end.i.i207

if.then.i.i.i202.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i207:                                    ; preds = %if.then.i.i.i202
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %68, i32 %67, i32 -1226833920) #11, !srcloc !29
  %asmresult.i.i205 = extractvalue { i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i205)
  %cmp.i6.i206 = icmp eq i32 %asmresult.i.i205, 0
  br i1 %cmp.i6.i206, label %if.then2.i.i, label %if.end.i.i207.copy_to_user.exit_crit_edge

if.end.i.i207.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i208 = tail call zeroext i1 @__kasan_check_read(ptr noundef %70, i32 noundef %67) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %68, ptr noundef %70, i32 noundef %67) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i207.copy_to_user.exit_crit_edge, %if.then.i.i.i202.copy_to_user.exit_crit_edge
  %n.addr.0.i209 = phi i32 [ %67, %if.then.i.i.i202.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %67, %if.end.i.i207.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i209)
  %tobool109.not = icmp eq i32 %n.addr.0.i209, 0
  br i1 %tobool109.not, label %if.else111, label %copy_to_user.exit.if.end114_crit_edge

copy_to_user.exit.if.end114_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.else111:                                       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %response_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %67, ptr %response_len, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else111, %copy_to_user.exit.if.end114_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.end114_crit_edge, %land.lhs.true98.if.end114_crit_edge, %if.end96.if.end114_crit_edge
  %ret.2 = phi i32 [ 0, %land.lhs.true98.if.end114_crit_edge ], [ 0, %if.end96.if.end114_crit_edge ], [ 0, %if.else111 ], [ -14, %copy_to_user.exit.if.end114_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end114_crit_edge ]
  %cmd_flags = getelementptr inbounds %struct.request, ptr %call21, i32 0, i32 3
  %73 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %resid_len = getelementptr %struct.request, ptr %call21, i32 1, i32 8
  %75 = ptrtoint ptr %resid_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %resid_len, align 4
  br i1 %tobool.i.not, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %din_resid = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 28
  %77 = ptrtoint ptr %din_resid to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %din_resid, align 8
  br label %if.end124

if.else122:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %dout_resid = getelementptr inbounds %struct.sg_io_v4, ptr %hdr, i32 0, i32 29
  %78 = ptrtoint ptr %dout_resid to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %dout_resid, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else122, %if.then121
  %call125 = tail call i32 @blk_rq_unmap_user(ptr noundef %43) #6
  br label %out_free_cmd

out_free_cmd:                                     ; preds = %if.end124, %if.end68.out_free_cmd_crit_edge, %if.end48.out_free_cmd_crit_edge, %if.then11.i.i
  %ret.3 = phi i32 [ %ret.0, %if.end68.out_free_cmd_crit_edge ], [ %ret.2, %if.end124 ], [ -1, %if.end48.out_free_cmd_crit_edge ], [ -14, %if.then11.i.i ]
  %79 = ptrtoint ptr %cmd41 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cmd41, align 4
  %cmp.not.i = icmp eq ptr %80, %add.ptr.i.i210
  br i1 %cmp.not.i, label %out_free_cmd.out_put_request_crit_edge, label %if.then.i217

out_free_cmd.out_put_request_crit_edge:           ; preds = %out_free_cmd
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_request

if.then.i217:                                     ; preds = %out_free_cmd
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %80) #6
  br label %out_put_request

out_put_request:                                  ; preds = %if.then.i217, %out_free_cmd.out_put_request_crit_edge, %if.end8.i.i215.out_put_request_crit_edge
  %ret.4 = phi i32 [ -12, %if.end8.i.i215.out_put_request_crit_edge ], [ %ret.3, %out_free_cmd.out_put_request_crit_edge ], [ %ret.3, %if.then.i217 ]
  tail call void @blk_mq_free_request(ptr noundef %call21) #6
  br label %cleanup

cleanup:                                          ; preds = %out_put_request, %if.then23, %if.then9, %land.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then23 ], [ %ret.4, %out_put_request ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.then9 ], [ -95, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_cmd_allowed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_bsg.c", i32 24, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @scsi_bsg_sg_io_fn._entry, !1, !"_entry", i1 false, i1 false}
!6 = !{ptr @scsi_bsg_sg_io_fn._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2152753402, i64 2152753427}
!26 = !{i64 5248957}
!27 = !{i64 5249154}
!28 = !{i64 2152734387}
!29 = !{i64 2152754083, i64 2152754108}
