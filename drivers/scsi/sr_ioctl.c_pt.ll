; ModuleID = '/llk/IR_all_yes/drivers/scsi/sr_ioctl.c_pt.bc'
source_filename = "../drivers/scsi/sr_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_cd = type { ptr, i32, ptr, i32, i32, i8, i32, i8, %struct.cdrom_device_info, %struct.mutex, %struct.kref, ptr }
%struct.cdrom_device_info = type { ptr, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [20 x i8], i8, i32, i8, i8, i16, i32, ptr, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.packet_command = type { [12 x i8], ptr, i32, i32, ptr, i8, i32, i32, [1 x ptr] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.media_event_desc = type { i16, i8, i8 }
%struct.cdrom_tocentry = type { i8, i8, i8, %union.cdrom_addr, i8 }
%union.cdrom_addr = type { i32 }
%struct.cdrom_msf0 = type { i8, i8, i8 }
%struct.cdrom_multisession = type { %union.cdrom_addr, i8, i8 }
%struct.cdrom_tochdr = type { i8, i8 }
%struct.cdrom_ti = type { i8, i8, i8, i8 }

@__param_str_xa_test = internal constant [15 x i8] c"sr_mod.xa_test\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@xa_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_xa_test = internal constant %struct.kernel_param { ptr @__param_str_xa_test, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @xa_test } }, section "__param", align 4
@__UNIQUE_ID_xa_testtype281 = internal constant [28 x i8] c"sr_mod.parmtype=xa_test:int\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disc change detected.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CDROM not ready yet.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"CDROM not ready.  Make sure there is a disc in the drive.\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CDROM doesn't support READ CD (0xbe) command\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 21252, i64 21253, i64 21254]
@___asan_gen_.6 = private unnamed_addr constant [8 x i8] c"xa_test\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 32, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 213, i32 5 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 224, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 237, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [27 x i8] c"../drivers/scsi/sr_ioctl.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 525, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_xa_testtype281, ptr @__param_xa_test, ptr @xa_test, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_do_ioctl(ptr noundef %cd, ptr noundef %cgc) local_unnamed_addr #0 align 64 {
entry:
  %local_sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_sshdr) #6
  %device = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 2
  %0 = ptrtoint ptr %local_sshdr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %local_sshdr, align 8
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 8
  %sshdr1 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 4
  %3 = ptrtoint ptr %sshdr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sshdr1, align 4
  %tobool.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool.not, ptr %local_sshdr, ptr %4
  %call105 = call i32 @scsi_block_when_processing_errors(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool3.not106 = icmp eq i32 %call105, 0
  br i1 %tobool3.not106, label %entry.out_crit_edge, label %do.end.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end.lr.ph:                                     ; preds = %entry
  %5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %local_sshdr, i32 0, i32 3
  %6 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %local_sshdr, i32 0, i32 2
  %7 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %local_sshdr, i32 0, i32 1
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %buffer = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %.sroa.gep103 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 1
  %spec.select.sroa.sel104 = select i1 %tobool.not, ptr %7, ptr %.sroa.gep103
  %.sroa.gep94 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 2
  %spec.select.sroa.sel95 = select i1 %tobool.not, ptr %6, ptr %.sroa.gep94
  %.sroa.gep = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 3
  %spec.select.sroa.sel = select i1 %tobool.not, ptr %5, ptr %.sroa.gep
  %quiet31 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 6
  %name36 = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 8, i32 11
  %changed = getelementptr inbounds %struct.scsi_device, ptr %2, i32 0, i32 41
  br label %do.end

do.end:                                           ; preds = %retry.backedge.do.end_crit_edge, %do.end.lr.ph
  %retries.0107 = phi i32 [ 0, %do.end.lr.ph ], [ %retries.0.be, %retry.backedge.do.end_crit_edge ]
  %8 = ptrtoint ptr %data_direction to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data_direction, align 4
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buflen, align 4
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout, align 4
  %call6 = call i32 @__scsi_execute(ptr noundef %2, ptr noundef %cgc, i32 noundef %conv, ptr noundef %11, i32 noundef %13, ptr noundef null, ptr noundef nonnull %spec.select, i32 noundef %15, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end9

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %do.end
  %and.i = and i32 %call6, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp1.i.not = icmp eq i32 %and.i, 2
  br i1 %cmp1.i.not, label %if.then12, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then12:                                        ; preds = %if.end9
  %16 = ptrtoint ptr %spec.select.sroa.sel104 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %spec.select.sroa.sel104, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.then12.out_crit_edge [
    i8 6, label %sw.bb
    i8 2, label %sw.bb23
    i8 5, label %sw.bb52
  ]

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %if.then12
  %19 = ptrtoint ptr %changed to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load = load i64, ptr %changed, align 4
  %bf.set = or i64 %bf.load, 4611686018427387904
  store i64 %bf.set, ptr %changed, align 4
  %20 = ptrtoint ptr %quiet31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quiet31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.then15, label %sw.bb.if.end18_crit_edge

sw.bb.if.end18_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %23, ptr noundef %name36, ptr noundef nonnull @.str.1) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %sw.bb.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retries.0107)
  %cmp19 = icmp ult i32 %retries.0107, 10
  br i1 %cmp19, label %if.end18.retry.backedge_crit_edge, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18.retry.backedge_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry.backedge

sw.bb23:                                          ; preds = %if.then12
  %24 = ptrtoint ptr %spec.select.sroa.sel95 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spec.select.sroa.sel95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp25 = icmp eq i8 %25, 4
  br i1 %cmp25, label %land.lhs.true, label %sw.bb23.if.end43_crit_edge

sw.bb23.if.end43_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

land.lhs.true:                                    ; preds = %sw.bb23
  %26 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %spec.select.sroa.sel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp28 = icmp eq i8 %27, 1
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then30:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %quiet31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quiet31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool32.not = icmp eq i32 %29, 0
  br i1 %tobool32.not, label %if.then33, label %if.then30.if.end38_crit_edge

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %31, ptr noundef %name36, ptr noundef nonnull @.str.2) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then30.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retries.0107)
  %cmp40 = icmp ult i32 %retries.0107, 10
  br i1 %cmp40, label %if.then42, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 2000) #6
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then42, %if.end18.retry.backedge_crit_edge
  %retries.0.be = add nuw nsw i32 %retries.0107, 1
  %call = call i32 @scsi_block_when_processing_errors(ptr noundef %2) #6
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %retry.backedge.out_crit_edge, label %retry.backedge.do.end_crit_edge

retry.backedge.do.end_crit_edge:                  ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

retry.backedge.out_crit_edge:                     ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %sw.bb23.if.end43_crit_edge
  %32 = ptrtoint ptr %quiet31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quiet31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool45.not = icmp eq i32 %33, 0
  br i1 %tobool45.not, label %if.then46, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %35, ptr noundef %name36, ptr noundef nonnull @.str.3) #6
  br label %out

sw.bb52:                                          ; preds = %if.then12
  %36 = ptrtoint ptr %spec.select.sroa.sel95 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %spec.select.sroa.sel95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp55 = icmp eq i8 %37, 32
  br i1 %cmp55, label %land.lhs.true57, label %sw.bb52.out_crit_edge

sw.bb52.out_crit_edge:                            ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true57:                                  ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spec.select.sroa.sel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp60 = icmp eq i8 %39, 0
  %spec.select92 = select i1 %cmp60, i32 -95, i32 -5
  br label %out

out:                                              ; preds = %land.lhs.true57, %sw.bb52.out_crit_edge, %if.then46, %if.end43.out_crit_edge, %retry.backedge.out_crit_edge, %if.end38.out_crit_edge, %if.end18.out_crit_edge, %if.then12.out_crit_edge, %if.end9.out_crit_edge, %do.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -5, %sw.bb52.out_crit_edge ], [ -123, %if.then46 ], [ -123, %if.end43.out_crit_edge ], [ %spec.select92, %land.lhs.true57 ], [ -19, %entry.out_crit_edge ], [ 0, %if.end9.out_crit_edge ], [ -19, %retry.backedge.out_crit_edge ], [ %call6, %do.end.out_crit_edge ], [ -123, %if.end18.out_crit_edge ], [ -123, %if.end38.out_crit_edge ], [ -5, %if.then12.out_crit_edge ]
  %stat = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 3
  %40 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %err.0, ptr %stat, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_sshdr) #6
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_tray_move(ptr nocapture noundef readonly %cdi, i32 noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #6
  %2 = call ptr @memset(ptr %cgc, i32 0, i32 44)
  %3 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 27, ptr %cgc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos)
  %cmp = icmp eq i32 %pos, 0
  %conv = select i1 %cmp, i8 3, i8 2
  %arrayidx2 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx2, align 4
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %5 = ptrtoint ptr %data_direction to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %data_direction, align 4
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3000, ptr %timeout, align 4
  %call = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_lock_door(ptr nocapture noundef readonly %cdi, i32 noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp ne i32 %lock, 0
  %conv = zext i1 %tobool.not to i8
  %call = tail call i32 @scsi_set_medium_removal(ptr noundef %3, i8 noundef zeroext %conv) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_set_medium_removal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_drive_status(ptr noundef %cdi, i32 noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  %med = alloca %struct.media_event_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #6
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %3 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %4 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %5 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %sshdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %med) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 2147483647
  %6 = ptrtoint ptr %med to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %med, align 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 8
  %call = call i32 @scsi_test_unit_ready(ptr noundef %8, i32 noundef 3000, i32 noundef 3, ptr noundef nonnull %sshdr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sshdr, align 8
  %11 = and i8 %10, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %11)
  %cmp.i = icmp eq i8 %11, 112
  br i1 %cmp.i, label %land.lhs.true, label %if.end2.if.end15_crit_edge

if.end2.if.end15_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp4 = icmp eq i8 %13, 2
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true6:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp8 = icmp eq i8 %15, 4
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true6.if.end15_crit_edge

land.lhs.true6.if.end15_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp12 = icmp eq i8 %17, 1
  br i1 %cmp12, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end15_crit_edge

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true10.if.end15_crit_edge, %land.lhs.true6.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end2.if.end15_crit_edge
  %call16 = call i32 @cdrom_get_media_event(ptr noundef %cdi, ptr noundef nonnull %med) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end15
  %18 = ptrtoint ptr %med to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %med, align 4
  %19 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool19.not = icmp eq i16 %19, 0
  br i1 %tobool19.not, label %if.else, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %bf.cast2370 = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.cast2370)
  %tobool24.not = icmp eq i16 %bf.cast2370, 0
  %. = select i1 %tobool24.not, i32 1, i32 2
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sshdr, align 8
  %22 = and i8 %21, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %22)
  %cmp.i71 = icmp eq i8 %22, 112
  br i1 %cmp.i71, label %land.lhs.true30, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true30:                                  ; preds = %if.end27
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp33 = icmp eq i8 %24, 2
  br i1 %cmp33, label %land.lhs.true35, label %land.lhs.true30.land.lhs.true60thread-pre-split_crit_edge

land.lhs.true30.land.lhs.true60thread-pre-split_crit_edge: ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true60thread-pre-split

land.lhs.true35:                                  ; preds = %land.lhs.true30
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp38 = icmp eq i8 %26, 4
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true35.land.lhs.true60_crit_edge

land.lhs.true35.land.lhs.true60_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true60

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp43 = icmp eq i8 %28, 2
  br i1 %cmp43, label %land.lhs.true40.cleanup_crit_edge, label %land.lhs.true40.if.end46_crit_edge

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %if.end27.if.end46_crit_edge
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp49 = icmp eq i8 %.pr, 2
  br i1 %cmp49, label %land.lhs.true51, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true51:                                  ; preds = %if.end46
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr76 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr76)
  %cmp54 = icmp eq i8 %.pr76, 4
  br i1 %cmp54, label %land.lhs.true51.cleanup_crit_edge, label %land.lhs.true51.if.end57_crit_edge

land.lhs.true51.if.end57_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true51.if.end57_crit_edge, %if.end46.if.end57_crit_edge
  br i1 %cmp.i71, label %if.end57.land.lhs.true60thread-pre-split_crit_edge, label %if.end57.if.else66_crit_edge

if.end57.if.else66_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else66

if.end57.land.lhs.true60thread-pre-split_crit_edge: ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true60thread-pre-split

land.lhs.true60thread-pre-split:                  ; preds = %if.end57.land.lhs.true60thread-pre-split_crit_edge, %land.lhs.true30.land.lhs.true60thread-pre-split_crit_edge
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %.pr78 = load i8, ptr %3, align 2
  br label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true60thread-pre-split, %land.lhs.true35.land.lhs.true60_crit_edge
  %32 = phi i8 [ %.pr78, %land.lhs.true60thread-pre-split ], [ %26, %land.lhs.true35.land.lhs.true60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %32)
  %cmp63 = icmp eq i8 %32, 58
  br i1 %cmp63, label %land.lhs.true60.cleanup_crit_edge, label %land.lhs.true60.if.else66_crit_edge

land.lhs.true60.if.else66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else66

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else66:                                        ; preds = %land.lhs.true60.if.else66_crit_edge, %if.end57.if.else66_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else66, %land.lhs.true60.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %land.lhs.true40.cleanup_crit_edge, %if.else, %if.then18.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.else66 ], [ -22, %entry.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ], [ 3, %land.lhs.true10.cleanup_crit_edge ], [ 4, %if.then18.cleanup_crit_edge ], [ %., %if.else ], [ 2, %land.lhs.true40.cleanup_crit_edge ], [ 4, %land.lhs.true51.cleanup_crit_edge ], [ 1, %land.lhs.true60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %med) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdrom_get_media_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_disk_status(ptr nocapture noundef readonly %cdi) local_unnamed_addr #0 align 64 {
entry:
  %cgc.i = alloca %struct.packet_command, align 4
  %toc_e = alloca %struct.cdrom_tocentry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %toc_e) #6
  %2 = call ptr @memset(ptr %toc_e, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sr_read_tochdr.exit.thread, label %sr_read_tochdr.exit

sr_read_tochdr.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #6
  br label %if.then

sr_read_tochdr.exit:                              ; preds = %entry
  %4 = call ptr @memset(ptr %cgc.i, i32 0, i32 44)
  %timeout.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 7
  %5 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3000, ptr %timeout.i, align 4
  %6 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 67, ptr %cgc.i, align 4
  %arrayidx2.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %arrayidx2.i, align 4
  %buffer3.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 1
  %8 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %buffer3.i, align 4
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 2
  %9 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %buflen.i, align 4
  %quiet.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 6
  %10 = ptrtoint ptr %quiet.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %quiet.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 5
  %11 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %data_direction.i, align 4
  %call4.i = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc.i) #6
  %arrayidx5.i = getelementptr i8, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.i, align 2
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %sr_read_tochdr.exit.if.then_crit_edge

sr_read_tochdr.exit.if.then_crit_edge:            ; preds = %sr_read_tochdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %sr_read_tochdr.exit.if.then_crit_edge, %sr_read_tochdr.exit.thread
  %retval.0.i34 = phi i32 [ -12, %sr_read_tochdr.exit.thread ], [ %call4.i, %sr_read_tochdr.exit.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -123, i32 %retval.0.i34)
  %cmp = icmp eq i32 %retval.0.i34, -123
  %cond = zext i1 %cmp to i32
  br label %cleanup

if.end:                                           ; preds = %sr_read_tochdr.exit
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp2.not35 = icmp ugt i8 %13, %15
  br i1 %cmp2.not35, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %conv1 = zext i8 %15 to i32
  %conv = zext i8 %13 to i32
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, ptr %toc_e, i32 0, i32 2
  %cdte_ctrl = getelementptr inbounds %struct.cdrom_tocentry, ptr %toc_e, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end8
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond = icmp eq i32 %i.036, %conv1
  br i1 %exitcond, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv4 = trunc i32 %i.036 to i8
  %16 = ptrtoint ptr %toc_e to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4, ptr %toc_e, align 4
  %17 = ptrtoint ptr %cdte_format to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cdte_format, align 2
  %call5 = call fastcc i32 @sr_read_tocentry(ptr noundef %cdi, ptr noundef nonnull %toc_e)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %18 = ptrtoint ptr %cdte_ctrl to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %cdte_ctrl, align 1
  %19 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool10.not = icmp eq i8 %19, 0
  br i1 %tobool10.not, label %for.cond, label %if.end15

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %xa_flag = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %xa_flag to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load16 = load i8, ptr %xa_flag, align 4
  %21 = and i8 %bf.load16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  %. = select i1 %tobool18.not, i32 101, i32 103
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %., %if.end15 ], [ 100, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 100, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %toc_e) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr_read_tocentry(ptr nocapture noundef readonly %cdi, ptr nocapture noundef %tocentry) unnamed_addr #0 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %cgc, i32 0, i32 44)
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3000, ptr %timeout, align 4
  %5 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 67, ptr %cgc, align 4
  %cdte_format = getelementptr inbounds %struct.cdrom_tocentry, ptr %tocentry, i32 0, i32 2
  %6 = ptrtoint ptr %cdte_format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cdte_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  %cond = select i1 %cmp, i8 2, i8 0
  %arrayidx3 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cond, ptr %arrayidx3, align 1
  %9 = ptrtoint ptr %tocentry to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tocentry, align 4
  %arrayidx7 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx7, align 2
  %arrayidx9 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %arrayidx9, align 4
  %buffer10 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %13 = ptrtoint ptr %buffer10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %buffer10, align 4
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %14 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 12, ptr %buflen, align 4
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %15 = ptrtoint ptr %data_direction to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %data_direction, align 4
  %call11 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc)
  %arrayidx12 = getelementptr i8, ptr %call7.i, i32 5
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12, align 1
  %cdte_ctrl = getelementptr inbounds %struct.cdrom_tocentry, ptr %tocentry, i32 0, i32 1
  %18 = ptrtoint ptr %cdte_ctrl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %cdte_ctrl, align 1
  %19 = lshr i8 %17, 2
  %.lobit = and i8 %19, 1
  %cdte_datamode = getelementptr inbounds %struct.cdrom_tocentry, ptr %tocentry, i32 0, i32 4
  %20 = ptrtoint ptr %cdte_datamode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit, ptr %cdte_datamode, align 4
  %21 = ptrtoint ptr %cdte_format to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cdte_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp32 = icmp eq i8 %22, 2
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx35 = getelementptr i8, ptr %call7.i, i32 9
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  %cdte_addr = getelementptr inbounds %struct.cdrom_tocentry, ptr %tocentry, i32 0, i32 3
  %25 = ptrtoint ptr %cdte_addr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %cdte_addr, align 4
  %arrayidx36 = getelementptr i8, ptr %call7.i, i32 10
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx36, align 2
  %second = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr, i32 0, i32 1
  %28 = ptrtoint ptr %second to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %second, align 1
  %arrayidx38 = getelementptr i8, ptr %call7.i, i32 11
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx38, align 1
  %frame = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr, i32 0, i32 2
  %31 = ptrtoint ptr %frame to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %frame, align 2
  br label %if.end53

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx40 = getelementptr i8, ptr %call7.i, i32 8
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 8
  %conv41 = zext i8 %33 to i32
  %arrayidx42 = getelementptr i8, ptr %call7.i, i32 9
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %35 to i32
  %36 = shl nuw nsw i32 %conv41, 16
  %37 = shl nuw nsw i32 %conv43, 8
  %shl44 = or i32 %37, %36
  %arrayidx45 = getelementptr i8, ptr %call7.i, i32 10
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx45, align 2
  %conv46 = zext i8 %39 to i32
  %add47 = or i32 %shl44, %conv46
  %shl48 = shl nuw i32 %add47, 8
  %arrayidx49 = getelementptr i8, ptr %call7.i, i32 11
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %41 to i32
  %add51 = or i32 %shl48, %conv50
  %cdte_addr52 = getelementptr inbounds %struct.cdrom_tocentry, ptr %tocentry, i32 0, i32 3
  %42 = ptrtoint ptr %cdte_addr52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add51, ptr %cdte_addr52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then34
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end53 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sr_get_last_session(ptr nocapture noundef readonly %cdi, ptr nocapture noundef writeonly %ms_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %ms_offset = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ms_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ms_offset, align 8
  %4 = ptrtoint ptr %ms_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ms_info, align 4
  %xa_flag = getelementptr inbounds %struct.scsi_cd, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %xa_flag to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %xa_flag, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ms_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ms_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp ne i32 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %9 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp, %lor.rhs ]
  %conv = zext i1 %9 to i8
  %xa_flag2 = getelementptr inbounds %struct.cdrom_multisession, ptr %ms_info, i32 0, i32 1
  %10 = ptrtoint ptr %xa_flag2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %xa_flag2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_get_mcn(ptr nocapture noundef readonly %cdi, ptr nocapture noundef writeonly %mcn) local_unnamed_addr #0 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call ptr @memset(ptr %cgc, i32 0, i32 44)
  %4 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 66, ptr %cgc, align 4
  %arrayidx2 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %arrayidx2, align 2
  %arrayidx4 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %arrayidx6, align 4
  %buffer7 = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 1
  %8 = ptrtoint ptr %buffer7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %buffer7, align 4
  %buflen = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 2
  %9 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 24, ptr %buflen, align 4
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %10 = ptrtoint ptr %data_direction to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %data_direction, align 4
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3000, ptr %timeout, align 4
  %call8 = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc)
  %add.ptr = getelementptr i8, ptr %call7.i, i32 9
  %12 = call ptr @memcpy(ptr %mcn, ptr %add.ptr, i32 13)
  %arrayidx10 = getelementptr [14 x i8], ptr %mcn, i32 0, i32 13
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx10, align 1
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sr_reset(ptr nocapture noundef readnone %cdi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_select_speed(ptr nocapture noundef readonly %cdi, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  %cgc = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed)
  %cmp = icmp eq i32 %speed, 0
  %mul = mul i32 %speed, 177
  %speed.addr.0 = select i1 %cmp, i32 65535, i32 %mul
  %2 = call ptr @memset(ptr %cgc, i32 0, i32 44)
  %3 = ptrtoint ptr %cgc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -69, ptr %cgc, align 4
  %4 = lshr i32 %speed.addr.0, 8
  %conv = trunc i32 %4 to i8
  %arrayidx2 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx2, align 2
  %conv4 = trunc i32 %speed.addr.0 to i8
  %arrayidx6 = getelementptr inbounds [12 x i8], ptr %cgc, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx6, align 1
  %data_direction = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 5
  %7 = ptrtoint ptr %data_direction to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %data_direction, align 4
  %timeout = getelementptr inbounds %struct.packet_command, ptr %cgc, i32 0, i32 7
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3000, ptr %timeout, align 4
  %call = call i32 @sr_do_ioctl(ptr noundef %1, ptr noundef nonnull %cgc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %retval.0 = select i1 %tobool.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_audio_ioctl(ptr nocapture noundef readonly %cdi, i32 noundef %cmd, ptr nocapture noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %cgc.i.i.i = alloca %struct.packet_command, align 4
  %trk0_te.i.i = alloca %struct.cdrom_tocentry, align 4
  %trk1_te.i.i = alloca %struct.cdrom_tocentry, align 4
  %cgc.i.i = alloca %struct.packet_command, align 4
  %cgc.i9 = alloca %struct.packet_command, align 4
  %cgc.i = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 21253, label %sw.bb
    i32 21254, label %sw.bb1
    i32 21252, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %handle.i = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %1 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handle.i, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.sr_read_tochdr.exit_crit_edge, label %if.end.i

sw.bb.sr_read_tochdr.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sr_read_tochdr.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memset(ptr %cgc.i, i32 0, i32 44)
  %timeout.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 7
  %5 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3000, ptr %timeout.i, align 4
  %6 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 67, ptr %cgc.i, align 4
  %arrayidx2.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 12, ptr %arrayidx2.i, align 4
  %buffer3.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 1
  %8 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %buffer3.i, align 4
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 2
  %9 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %buflen.i, align 4
  %quiet.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 6
  %10 = ptrtoint ptr %quiet.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %quiet.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 5
  %11 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %data_direction.i, align 4
  %call4.i = call i32 @sr_do_ioctl(ptr noundef %2, ptr noundef nonnull %cgc.i) #6
  %arrayidx5.i = getelementptr i8, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5.i, align 2
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arg, align 1
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i, i32 3
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6.i, align 1
  %cdth_trk1.i = getelementptr inbounds %struct.cdrom_tochdr, ptr %arg, i32 0, i32 1
  %17 = ptrtoint ptr %cdth_trk1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %cdth_trk1.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %sr_read_tochdr.exit

sr_read_tochdr.exit:                              ; preds = %if.end.i, %sw.bb.sr_read_tochdr.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ -12, %sw.bb.sr_read_tochdr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @sr_read_tocentry(ptr noundef %cdi, ptr noundef %arg)
  br label %return

sw.bb3:                                           ; preds = %entry
  %handle.i10 = getelementptr inbounds %struct.cdrom_device_info, ptr %cdi, i32 0, i32 3
  %18 = ptrtoint ptr %handle.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i10, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i9) #6
  %20 = call ptr @memset(ptr %cgc.i9, i32 0, i32 44)
  %timeout.i11 = getelementptr inbounds %struct.packet_command, ptr %cgc.i9, i32 0, i32 7
  %21 = ptrtoint ptr %timeout.i11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3000, ptr %timeout.i11, align 4
  %22 = ptrtoint ptr %cgc.i9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 72, ptr %cgc.i9, align 4
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arg, align 1
  %arrayidx2.i12 = getelementptr inbounds [12 x i8], ptr %cgc.i9, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx2.i12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx2.i12, align 4
  %cdti_ind0.i = getelementptr inbounds %struct.cdrom_ti, ptr %arg, i32 0, i32 1
  %26 = ptrtoint ptr %cdti_ind0.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cdti_ind0.i, align 1
  %arrayidx4.i = getelementptr inbounds [12 x i8], ptr %cgc.i9, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx4.i, align 1
  %cdti_trk1.i = getelementptr inbounds %struct.cdrom_ti, ptr %arg, i32 0, i32 2
  %29 = ptrtoint ptr %cdti_trk1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cdti_trk1.i, align 1
  %arrayidx6.i13 = getelementptr inbounds [12 x i8], ptr %cgc.i9, i32 0, i32 7
  %31 = ptrtoint ptr %arrayidx6.i13 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx6.i13, align 1
  %cdti_ind1.i = getelementptr inbounds %struct.cdrom_ti, ptr %arg, i32 0, i32 3
  %32 = ptrtoint ptr %cdti_ind1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cdti_ind1.i, align 1
  %arrayidx8.i = getelementptr inbounds [12 x i8], ptr %cgc.i9, i32 0, i32 8
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx8.i, align 4
  %data_direction.i14 = getelementptr inbounds %struct.packet_command, ptr %cgc.i9, i32 0, i32 5
  %35 = ptrtoint ptr %data_direction.i14 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %data_direction.i14, align 4
  %call.i = call i32 @sr_do_ioctl(ptr noundef %19, ptr noundef nonnull %cgc.i9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -95
  br i1 %cmp.i, label %if.then.i, label %sw.bb3.sr_play_trkind.exit_crit_edge

sw.bb3.sr_play_trkind.exit_crit_edge:             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sr_play_trkind.exit

if.then.i:                                        ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %trk0_te.i.i) #6
  %36 = call ptr @memset(ptr %trk0_te.i.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %trk1_te.i.i) #6
  %37 = call ptr @memset(ptr %trk1_te.i.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i.i) #6
  %38 = ptrtoint ptr %handle.i10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handle.i10, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 32) #9
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sr_read_tochdr.exit.thread.i.i, label %sr_read_tochdr.exit.i.i

sr_read_tochdr.exit.thread.i.i:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i.i.i) #6
  br label %sr_fake_playtrkind.exit.i

sr_read_tochdr.exit.i.i:                          ; preds = %if.then.i
  %41 = call ptr @memset(ptr %cgc.i.i.i, i32 0, i32 44)
  %timeout.i.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3000, ptr %timeout.i.i.i, align 4
  %43 = ptrtoint ptr %cgc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 67, ptr %cgc.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 12, ptr %arrayidx2.i.i.i, align 4
  %buffer3.i.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i.i, ptr %buffer3.i.i.i, align 4
  %buflen.i.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 12, ptr %buflen.i.i.i, align 4
  %quiet.i.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %quiet.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %quiet.i.i.i, align 4
  %data_direction.i.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %data_direction.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %data_direction.i.i.i, align 4
  %call4.i.i.i = call i32 @sr_do_ioctl(ptr noundef %39, ptr noundef nonnull %cgc.i.i.i) #6
  %arrayidx5.i.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 2
  %49 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx5.i.i.i, align 2
  %arrayidx6.i.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 3
  %51 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx6.i.i.i, align 1
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sr_read_tochdr.exit.i.i.sr_fake_playtrkind.exit.i_crit_edge

sr_read_tochdr.exit.i.i.sr_fake_playtrkind.exit.i_crit_edge: ; preds = %sr_read_tochdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sr_fake_playtrkind.exit.i

if.end.i.i:                                       ; preds = %sr_read_tochdr.exit.i.i
  %conv.i.i = zext i8 %52 to i32
  %conv1.i.i = zext i8 %50 to i32
  %sub.i.i = sub nsw i32 1, %conv1.i.i
  %add.i.i = add nsw i32 %sub.i.i, %conv.i.i
  %53 = ptrtoint ptr %cdti_trk1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %cdti_trk1.i, align 1
  %conv2.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv2.i.i)
  %cmp.i.i = icmp eq i32 %add.i.i, %conv2.i.i
  br i1 %cmp.i.i, label %if.end.i.i.if.end13.sink.split.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end13.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %54)
  %cmp8.not.i.i = icmp eq i8 %54, -86
  br i1 %cmp8.not.i.i, label %if.else.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.else.i.i.if.end13.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i = add i8 %54, 1
  br label %if.end13.sink.split.i.i

if.end13.sink.split.i.i:                          ; preds = %if.then10.i.i, %if.end.i.i.if.end13.sink.split.i.i_crit_edge
  %inc.sink.i.i = phi i8 [ %inc.i.i, %if.then10.i.i ], [ -86, %if.end.i.i.if.end13.sink.split.i.i_crit_edge ]
  %55 = ptrtoint ptr %cdti_trk1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %inc.sink.i.i, ptr %cdti_trk1.i, align 1
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end13.sink.split.i.i, %if.else.i.i.if.end13.i.i_crit_edge
  %56 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arg, align 1
  %58 = ptrtoint ptr %trk0_te.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %trk0_te.i.i, align 4
  %cdte_format.i.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %cdte_format.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %cdte_format.i.i, align 2
  %60 = ptrtoint ptr %cdti_trk1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cdti_trk1.i, align 1
  %62 = ptrtoint ptr %trk1_te.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %trk1_te.i.i, align 4
  %cdte_format16.i.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %cdte_format16.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %cdte_format16.i.i, align 2
  %call17.i.i = call fastcc i32 @sr_read_tocentry(ptr noundef %cdi, ptr noundef nonnull %trk0_te.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end13.i.i.sr_fake_playtrkind.exit.i_crit_edge

if.end13.i.i.sr_fake_playtrkind.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sr_fake_playtrkind.exit.i

if.end20.i.i:                                     ; preds = %if.end13.i.i
  %call21.i.i = call fastcc i32 @sr_read_tocentry(ptr noundef %cdi, ptr noundef nonnull %trk1_te.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end24.i.i, label %if.end20.i.i.sr_fake_playtrkind.exit.i_crit_edge

if.end20.i.i.sr_fake_playtrkind.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sr_fake_playtrkind.exit.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = call ptr @memset(ptr %cgc.i.i, i32 0, i32 44)
  %65 = ptrtoint ptr %cgc.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 71, ptr %cgc.i.i, align 4
  %cdte_addr.i.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk0_te.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %cdte_addr.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cdte_addr.i.i, align 4
  %arrayidx26.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx26.i.i, align 1
  %second.i.i = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %second.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %second.i.i, align 1
  %arrayidx29.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx29.i.i, align 4
  %frame.i.i = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %frame.i.i, align 2
  %arrayidx32.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 5
  %74 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayidx32.i.i, align 1
  %cdte_addr33.i.i = getelementptr inbounds %struct.cdrom_tocentry, ptr %trk1_te.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %cdte_addr33.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cdte_addr33.i.i, align 4
  %arrayidx36.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx36.i.i, align 2
  %second38.i.i = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr33.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %second38.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %second38.i.i, align 1
  %arrayidx40.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx40.i.i, align 1
  %frame42.i.i = getelementptr inbounds %struct.cdrom_msf0, ptr %cdte_addr33.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %frame42.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %frame42.i.i, align 2
  %arrayidx44.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 8
  %83 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx44.i.i, align 4
  %data_direction.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %data_direction.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %data_direction.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 7
  %85 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3000, ptr %timeout.i.i, align 4
  %86 = ptrtoint ptr %handle.i10 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %handle.i10, align 8
  %call45.i.i = call i32 @sr_do_ioctl(ptr noundef %87, ptr noundef nonnull %cgc.i.i) #6
  br label %sr_fake_playtrkind.exit.i

sr_fake_playtrkind.exit.i:                        ; preds = %if.end24.i.i, %if.end20.i.i.sr_fake_playtrkind.exit.i_crit_edge, %if.end13.i.i.sr_fake_playtrkind.exit.i_crit_edge, %sr_read_tochdr.exit.i.i.sr_fake_playtrkind.exit.i_crit_edge, %sr_read_tochdr.exit.thread.i.i
  %retval.0.i.i = phi i32 [ %call45.i.i, %if.end24.i.i ], [ %call4.i.i.i, %sr_read_tochdr.exit.i.i.sr_fake_playtrkind.exit.i_crit_edge ], [ %call17.i.i, %if.end13.i.i.sr_fake_playtrkind.exit.i_crit_edge ], [ %call21.i.i, %if.end20.i.i.sr_fake_playtrkind.exit.i_crit_edge ], [ -12, %sr_read_tochdr.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %trk1_te.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %trk0_te.i.i) #6
  br label %sr_play_trkind.exit

sr_play_trkind.exit:                              ; preds = %sr_fake_playtrkind.exit.i, %sw.bb3.sr_play_trkind.exit_crit_edge
  %result.0.i = phi i32 [ %retval.0.i.i, %sr_fake_playtrkind.exit.i ], [ %call.i, %sw.bb3.sr_play_trkind.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i9) #6
  br label %return

return:                                           ; preds = %sr_play_trkind.exit, %sw.bb1, %sr_read_tochdr.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %result.0.i, %sr_play_trkind.exit ], [ %call2, %sw.bb1 ], [ %retval.0.i, %sr_read_tochdr.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sr_is_xa(ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %cgc.i.i = alloca %struct.packet_command, align 4
  %cgc.i = alloca %struct.packet_command, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xa_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 2048) #9
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ms_offset = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 4
  %2 = ptrtoint ptr %ms_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ms_offset, align 8
  %add = add i32 %3, 16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i) #6
  %readcd_known.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 5
  %4 = ptrtoint ptr %readcd_known.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %readcd_known.i, align 4
  %5 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end3.if.end5.i_crit_edge, label %if.then.i

if.end3.if.end5.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cgc.i.i) #6
  %6 = getelementptr inbounds i8, ptr %cgc.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %cgc.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -66, ptr %cgc.i.i, align 4
  %arrayidx2.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %10 = lshr i32 %add, 24
  %conv6.i.i = trunc i32 %10 to i8
  %arrayidx8.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6.i.i, ptr %arrayidx8.i.i, align 2
  %12 = lshr i32 %add, 16
  %conv13.i.i = trunc i32 %12 to i8
  %arrayidx15.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13.i.i, ptr %arrayidx15.i.i, align 1
  %14 = lshr i32 %add, 8
  %conv20.i.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20.i.i, ptr %6, align 4
  %conv26.i.i = trunc i32 %add to i8
  %arrayidx28.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv26.i.i, ptr %arrayidx28.i.i, align 1
  %arrayidx30.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx30.i.i, align 4
  %arrayidx35.i.i = getelementptr inbounds [12 x i8], ptr %cgc.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 120, ptr %arrayidx35.i.i, align 1
  %buffer.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %buffer.i.i, align 4
  %buflen.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2340, ptr %buflen.i.i, align 4
  %data_direction.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %data_direction.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %data_direction.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3000, ptr %timeout.i.i, align 4
  %call.i.i = call i32 @sr_do_ioctl(ptr noundef %cd, ptr noundef nonnull %cgc.i.i) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, -95
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.sr_read_sector.exit_crit_edge

if.then.i.sr_read_sector.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sr_read_sector.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %readcd_known.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load3.i = load i8, ptr %readcd_known.i, align 4
  %bf.clear4.i = and i8 %bf.load3.i, -17
  store i8 %bf.clear4.i, ptr %readcd_known.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 2
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device.i, align 8
  %name.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 8, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str, ptr noundef %25, ptr noundef %name.i, ptr noundef nonnull @.str.4) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end3.if.end5.i_crit_edge
  %device6.i = getelementptr inbounds %struct.scsi_cd, ptr %cd, i32 0, i32 2
  %26 = ptrtoint ptr %device6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device6.i, align 8
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sector_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2340, i32 %29)
  %cmp7.not.i = icmp eq i32 %29, 2340
  br i1 %cmp7.not.i, label %if.end5.i.if.end13.i_crit_edge, label %if.then8.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  %call9.i = call i32 @sr_set_blocklength(ptr noundef %cd, i32 noundef 2340) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.then8.i.if.end13.i_crit_edge, label %sr_read_sector.exit.thread

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

sr_read_sector.exit.thread:                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #6
  br label %if.end8

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %30 = call ptr @memset(ptr %cgc.i, i32 0, i32 44)
  %31 = ptrtoint ptr %cgc.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 40, ptr %cgc.i, align 4
  %32 = lshr i32 %add, 24
  %conv15.i = trunc i32 %32 to i8
  %arrayidx17.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv15.i, ptr %arrayidx17.i, align 2
  %34 = lshr i32 %add, 16
  %conv22.i = trunc i32 %34 to i8
  %arrayidx24.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv22.i, ptr %arrayidx24.i, align 1
  %36 = lshr i32 %add, 8
  %conv29.i = trunc i32 %36 to i8
  %arrayidx31.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv29.i, ptr %arrayidx31.i, align 4
  %conv35.i = trunc i32 %add to i8
  %arrayidx37.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv35.i, ptr %arrayidx37.i, align 1
  %arrayidx39.i = getelementptr inbounds [12 x i8], ptr %cgc.i, i32 0, i32 8
  %39 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %arrayidx39.i, align 4
  %buffer.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 1
  %40 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i, ptr %buffer.i, align 4
  %buflen.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 2
  %41 = ptrtoint ptr %buflen.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2340, ptr %buflen.i, align 4
  %data_direction.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 5
  %42 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %data_direction.i, align 4
  %timeout.i = getelementptr inbounds %struct.packet_command, ptr %cgc.i, i32 0, i32 7
  %43 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3000, ptr %timeout.i, align 4
  %call40.i = call i32 @sr_do_ioctl(ptr noundef %cd, ptr noundef nonnull %cgc.i) #6
  %call44.i = call i32 @sr_set_blocklength(ptr noundef %cd, i32 noundef 2048) #6
  %or.i = or i32 %call44.i, %call40.i
  br label %sr_read_sector.exit

sr_read_sector.exit:                              ; preds = %if.end13.i, %if.then.i.sr_read_sector.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end13.i ], [ %call.i.i, %if.then.i.sr_read_sector.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cgc.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.then5, label %sr_read_sector.exit.if.end8_crit_edge

sr_read_sector.exit.if.end8_crit_edge:            ; preds = %sr_read_sector.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %sr_read_sector.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %call7.i, i32 3
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp6 = icmp eq i8 %45, 2
  %cond = zext i1 %cmp6 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %sr_read_sector.exit.if.end8_crit_edge, %sr_read_sector.exit.thread
  %is_xa.0 = phi i32 [ %cond, %if.then5 ], [ -1, %sr_read_sector.exit.if.end8_crit_edge ], [ -1, %sr_read_sector.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %is_xa.0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sr_set_blocklength(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__param_xa_test, !1, !"__param_xa_test", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sr_ioctl.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_xa_testtype281, !1, !"__UNIQUE_ID_xa_testtype281", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/sr_ioctl.c", i32 213, i32 5}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/sr_ioctl.c", i32 224, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/sr_ioctl.c", i32 237, i32 5}
!10 = !{ptr @__param_str_xa_test, !1, !"__param_str_xa_test", i1 false, i1 false}
!11 = !{ptr @xa_test, !12, !"xa_test", i1 false, i1 false}
!12 = !{!"../drivers/scsi/sr_ioctl.c", i32 32, i32 12}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/sr_ioctl.c", i32 525, i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
