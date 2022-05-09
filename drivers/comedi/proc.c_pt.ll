; ModuleID = '/llk/IR_all_yes/drivers/comedi/proc.c_pt.bc'
source_filename = "../drivers/comedi/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"comedi\00", [25 x i8] zeroinitializer }, align 32
@comedi_proc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014comedi: unable to create proc entry\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"comedi_proc_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/comedi/proc.c\00", [42 x i8] zeroinitializer }, align 32
@comedi_proc_init._entry_ptr = internal global ptr @comedi_proc_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"comedi version 0.7.76\0Aformat string: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\22%2d: %-20s %-20s %4d\22, i, driver_name, board_name, n_subdevices\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%2d: %-20s %-20s %4d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no devices\0A\00", [20 x i8] zeroinitializer }, align 32
@comedi_drivers_list_lock = external dso_local global %struct.mutex, align 4
@comedi_drivers = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 67, i32 7 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 68, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 27, i32 16 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 28, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 39, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 47, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 51, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [25 x i8] c"../drivers/comedi/proc.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 53, i32 18 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @comedi_proc_init._entry, ptr @comedi_proc_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comedi_proc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_proc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @comedi_read, ptr noundef null) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comedi_read(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %devices_q.058 = phi i32 [ 0, %entry ], [ %devices_q.2, %cleanup.for.body_crit_edge ]
  %i.055 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %call = tail call ptr @comedi_dev_get_from_minor(i32 noundef %i.055) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %attach_lock = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 13
  tail call void @down_read(ptr noundef %attach_lock) #4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %driver = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver, align 4
  %driver_name = getelementptr inbounds %struct.comedi_driver, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_name, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %board_name, align 4
  %n_subdevices = getelementptr inbounds %struct.comedi_device, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %n_subdevices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_subdevices, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %i.055, ptr noundef %4, ptr noundef %6, i32 noundef %8) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %devices_q.1 = phi i32 [ 1, %if.then2 ], [ %devices_q.058, %if.end.if.end3_crit_edge ]
  tail call void @up_read(ptr noundef %attach_lock) #4
  %call5 = tail call i32 @comedi_dev_put(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.body.cleanup_crit_edge
  %devices_q.2 = phi i32 [ %devices_q.1, %if.end3 ], [ %devices_q.058, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devices_q.2)
  %tobool6.not = icmp eq i32 %devices_q.2, 0
  br i1 %tobool6.not, label %if.then7, label %for.end.if.end8_crit_edge

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end.if.end8_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @comedi_drivers_list_lock, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @comedi_drivers to i32))
  %driv.061 = load ptr, ptr @comedi_drivers, align 4
  %tobool10.not62 = icmp eq ptr %driv.061, null
  br i1 %tobool10.not62, label %if.end8.for.end26_crit_edge, label %if.end8.for.body11_crit_edge

if.end8.for.body11_crit_edge:                     ; preds = %if.end8
  br label %for.body11

if.end8.for.end26_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26

for.body11:                                       ; preds = %for.inc25.for.body11_crit_edge, %if.end8.for.body11_crit_edge
  %driv.063 = phi ptr [ %driv.0, %for.inc25.for.body11_crit_edge ], [ %driv.061, %if.end8.for.body11_crit_edge ]
  %driver_name12 = getelementptr inbounds %struct.comedi_driver, ptr %driv.063, i32 0, i32 1
  %9 = ptrtoint ptr %driver_name12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_name12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef %10) #4
  %num_names = getelementptr inbounds %struct.comedi_driver, ptr %driv.063, i32 0, i32 6
  %11 = ptrtoint ptr %num_names to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1459.not = icmp eq i32 %12, 0
  br i1 %cmp1459.not, label %for.body11.if.then22_crit_edge, label %for.body15.lr.ph

for.body11.if.then22_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

for.body15.lr.ph:                                 ; preds = %for.body11
  %board_name16 = getelementptr inbounds %struct.comedi_driver, ptr %driv.063, i32 0, i32 7
  %offset = getelementptr inbounds %struct.comedi_driver, ptr %driv.063, i32 0, i32 8
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.lr.ph
  %i.160 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc18, %for.body15.for.body15_crit_edge ]
  %13 = ptrtoint ptr %board_name16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board_name16, align 4
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %mul = mul i32 %16, %i.160
  %add.ptr = getelementptr i8, ptr %14, i32 %mul
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %18) #4
  %inc18 = add nuw i32 %i.160, 1
  %19 = ptrtoint ptr %num_names to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_names, align 4
  %cmp14 = icmp ult i32 %inc18, %20
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.end19

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body15

for.end19:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %for.end19.if.then22_crit_edge, label %for.end19.for.inc25_crit_edge

for.end19.for.inc25_crit_edge:                    ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc25

for.end19.if.then22_crit_edge:                    ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.then22:                                        ; preds = %for.end19.if.then22_crit_edge, %for.body11.if.then22_crit_edge
  %21 = ptrtoint ptr %driver_name12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_name12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %22) #4
  br label %for.inc25

for.inc25:                                        ; preds = %if.then22, %for.end19.for.inc25_crit_edge
  %23 = ptrtoint ptr %driv.063 to i32
  call void @__asan_load4_noabort(i32 %23)
  %driv.0 = load ptr, ptr %driv.063, align 4
  %tobool10.not = icmp eq ptr %driv.0, null
  br i1 %tobool10.not, label %for.inc25.for.end26_crit_edge, label %for.inc25.for.body11_crit_edge

for.inc25.for.body11_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body11

for.inc25.for.end26_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26

for.end26:                                        ; preds = %for.inc25.for.end26_crit_edge, %if.end8.for.end26_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @comedi_drivers_list_lock) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_proc_cleanup() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_dev_get_from_minor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/comedi/proc.c", i32 67, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/comedi/proc.c", i32 68, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @comedi_proc_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @comedi_proc_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/comedi/proc.c", i32 27, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/proc.c", i32 28, i32 6}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/comedi/proc.c", i32 39, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/proc.c", i32 47, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/proc.c", i32 51, i32 17}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/proc.c", i32 53, i32 18}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
