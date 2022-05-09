; ModuleID = '/llk/IR_all_yes/drivers/leds/uleds.c_pt.bc'
source_filename = "../drivers/leds/uleds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uleds_device = type { %struct.uleds_user_dev, %struct.led_classdev, %struct.mutex, i32, %struct.wait_queue_head, i32, i8 }
%struct.uleds_user_dev = type { [64 x i8], i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_uleds__223_216_uleds_init6 = internal global ptr @uleds_init, section ".initcall6.init", align 4
@uleds_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @uleds_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uleds_exit = internal global ptr @uleds_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [50 x i8] c"uleds.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [57 x i8] c"uleds.description=Userspace driver for the LED subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [30 x i8] c"uleds.file=drivers/leds/uleds\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [18 x i8] c"uleds.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uleds\00", [26 x i8] zeroinitializer }, align 32
@uleds_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @uleds_read, ptr @uleds_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uleds_poll, ptr null, ptr null, ptr null, i32 0, ptr @uleds_open, ptr null, ptr @uleds_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/leds/uleds.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@uleds_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&udev->mutex\00", [19 x i8] zeroinitializer }, align 32
@uleds_open.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&udev->waitq\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"uleds_misc\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 206, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 209, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"uleds_fops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 196, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 162, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 174, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 104, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 104, i32 54 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 63, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [24 x i8] c"../drivers/leds/uleds.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 64, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_uleds_exit, ptr @__initcall__kmod_uleds__223_216_uleds_init6, ptr @uleds_exit, ptr @uleds_misc, ptr @.str, ptr @uleds_fops, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @uleds_open.__key, ptr @.str.7, ptr @uleds_open.__key.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uleds_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uleds_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uleds_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uleds_open.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uleds_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @uleds_misc) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uleds_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @misc_deregister(ptr noundef nonnull @uleds_misc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uleds_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp ult i32 %count, 4
  br i1 %cmp, label %entry.cleanup54_crit_edge, label %do.body.preheader

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

do.body.preheader:                                ; preds = %entry
  %mutex = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 2
  %state = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 3
  %new_data = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 6
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %waitq = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond51.do.body_crit_edge, %do.body.preheader
  %call = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.body.cleanup54_crit_edge

do.body.cleanup54_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

if.end3:                                          ; preds = %do.body
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4.not = icmp eq i32 %3, 1
  br i1 %cmp4.not, label %if.else, label %if.end3.if.end17.thread_crit_edge

if.end3.if.end17.thread_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread

if.else:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %new_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %new_data, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %if.else
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end21, label %land.lhs.true.if.end17.thread_crit_edge

land.lhs.true.if.end17.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.thread

if.then12:                                        ; preds = %if.else
  %brightness = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 5
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then12.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then12.copy_to_user.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then12
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 4, i32 -1226833920) #10, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %brightness, i32 noundef 4) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %brightness, i32 noundef 4) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then12.copy_to_user.exit_crit_edge
  %9 = ptrtoint ptr %new_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %new_data, align 4
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %copy_to_user.exit, %land.lhs.true.if.end17.thread_crit_edge, %if.end3.if.end17.thread_crit_edge
  %retval1.0.ph = phi i32 [ 4, %copy_to_user.exit ], [ -19, %if.end3.if.end17.thread_crit_edge ], [ -11, %land.lhs.true.if.end17.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup54

if.end21:                                         ; preds = %land.lhs.true
  call void @mutex_unlock(ptr noundef %mutex) #7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and23 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end21.do.cond51_crit_edge

if.end21.do.cond51_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond51

if.then25:                                        ; preds = %if.end21
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 164) #7
  %12 = ptrtoint ptr %new_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_data, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool31.not = icmp eq i8 %13, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.then25.do.cond51_crit_edge

if.then25.do.cond51_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond51

lor.lhs.false:                                    ; preds = %if.then25
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp33.not = icmp eq i32 %15, 1
  br i1 %cmp33.not, label %if.then34, label %lor.lhs.false.do.cond51_crit_edge

lor.lhs.false.do.cond51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond51

if.then34:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call3689 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %17 = ptrtoint ptr %new_data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %new_data, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool38.not90 = icmp eq i8 %18, 0
  br i1 %tobool38.not90, label %if.then34.lor.lhs.false39_crit_edge, label %if.then34.for.end_crit_edge

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then34.lor.lhs.false39_crit_edge:              ; preds = %if.then34
  br label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %cleanup.lor.lhs.false39_crit_edge, %if.then34.lor.lhs.false39_crit_edge
  %call3691 = phi i32 [ %call36, %cleanup.lor.lhs.false39_crit_edge ], [ %call3689, %if.then34.lor.lhs.false39_crit_edge ]
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp41.not = icmp eq i32 %20, 1
  br i1 %cmp41.not, label %if.end43, label %lor.lhs.false39.for.end_crit_edge

lor.lhs.false39.for.end_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end43:                                         ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3691)
  %tobool44.not = icmp eq i32 %call3691, 0
  br i1 %tobool44.not, label %cleanup, label %if.end43.__out_crit_edge

if.end43.__out_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end43
  call void @schedule() #7
  %call36 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %21 = ptrtoint ptr %new_data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %new_data, align 4, !range !46
  %tobool38.not = icmp eq i8 %22, 0
  br i1 %tobool38.not, label %cleanup.lor.lhs.false39_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.lor.lhs.false39_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false39

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false39.for.end_crit_edge, %if.then34.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end43.__out_crit_edge
  %__ret35.179 = phi i32 [ 0, %for.end ], [ %call3691, %if.end43.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.cond51

do.cond51:                                        ; preds = %__out, %lor.lhs.false.do.cond51_crit_edge, %if.then25.do.cond51_crit_edge, %if.end21.do.cond51_crit_edge
  %retval1.1 = phi i32 [ 0, %if.end21.do.cond51_crit_edge ], [ 0, %if.then25.do.cond51_crit_edge ], [ 0, %lor.lhs.false.do.cond51_crit_edge ], [ %__ret35.179, %__out ]
  %cmp52 = icmp eq i32 %retval1.1, 0
  br i1 %cmp52, label %do.cond51.do.body_crit_edge, label %do.cond51.cleanup54_crit_edge

do.cond51.cleanup54_crit_edge:                    ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup54

do.cond51.do.body_crit_edge:                      ; preds = %do.cond51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup54:                                        ; preds = %do.cond51.cleanup54_crit_edge, %if.end17.thread, %do.body.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup54_crit_edge ], [ %retval1.0.ph, %if.end17.thread ], [ %retval1.1, %do.cond51.cleanup54_crit_edge ], [ %call, %do.body.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uleds_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 2
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.end2.out_crit_edge, label %if.end5

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %count)
  %cmp6.not = icmp eq i32 %count, 68
  br i1 %cmp6.not, label %if.then.i, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i:                                        ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 68, i32 -1226833920) #10, !srcloc !48
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !49

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 68) #7
  %5 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !50
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %1, ptr noundef %buffer, i32 noundef 68) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #7, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !49

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 68, %if.then.i.if.then11.i.i_crit_edge ], [ 68, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 68, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %out

if.end12:                                         ; preds = %if.end.i.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  br i1 %tobool15.not, label %if.end12.out_crit_edge, label %lor.lhs.false

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %if.end12
  %call16 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(2) @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false18

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %call19 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(3) @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false18.out_crit_edge, label %lor.lhs.false21

lor.lhs.false18.out_crit_edge:                    ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call ptr @strchr(ptr noundef %1, i32 noundef 47)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false21.out_crit_edge

lor.lhs.false21.out_crit_edge:                    ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end25:                                         ; preds = %lor.lhs.false21
  %max_brightness = getelementptr inbounds %struct.uleds_user_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp27 = icmp slt i32 %12, 1
  br i1 %cmp27, label %if.end25.out_crit_edge, label %if.end29

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end29:                                         ; preds = %if.end25
  %led_cdev = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 1
  %max_brightness32 = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %max_brightness32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_brightness32, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @uleds_misc, i32 0, i32 5), align 4
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %14, ptr noundef %led_cdev, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp slt i32 %call.i, 0
  br i1 %cmp35, label %if.end29.out_crit_edge, label %if.end37

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %new_data = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %new_data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %new_data, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end37, %if.end29.out_crit_edge, %if.end25.out_crit_edge, %lor.lhs.false21.out_crit_edge, %lor.lhs.false18.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end12.out_crit_edge, %if.then11.i.i, %if.end5.out_crit_edge, %if.end2.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end29.out_crit_edge ], [ 68, %if.end37 ], [ -16, %if.end2.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ -22, %lor.lhs.false21.out_crit_edge ], [ -22, %lor.lhs.false18.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ -22, %if.end25.out_crit_edge ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uleds_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %new_data = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %new_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %new_data, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %. = select i1 %tobool.not, i32 0, i32 65
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uleds_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 624) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %led_cdev = getelementptr inbounds %struct.uleds_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %led_cdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %led_cdev, align 4
  %brightness_set = getelementptr inbounds %struct.uleds_device, ptr %call7.i.i, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @uleds_brightness_set, ptr %brightness_set, align 8
  %mutex = getelementptr inbounds %struct.uleds_device, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @uleds_open.__key) #7
  %waitq = getelementptr inbounds %struct.uleds_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.9, ptr noundef nonnull @uleds_open.__key.8) #7
  %state = getelementptr inbounds %struct.uleds_device, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call6 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uleds_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @uleds_misc, i32 0, i32 5), align 4
  %led_cdev = getelementptr inbounds %struct.uleds_device, ptr %1, i32 0, i32 1
  tail call void @devm_led_classdev_unregister(ptr noundef %5, ptr noundef %led_cdev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uleds_brightness_set(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness1 = getelementptr i8, ptr %led_cdev, i32 548
  %0 = ptrtoint ptr %brightness1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %brightness)
  %cmp.not = icmp eq i32 %1, %brightness
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %brightness1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %brightness, ptr %brightness1, align 4
  %new_data = getelementptr i8, ptr %led_cdev, i32 552
  %3 = ptrtoint ptr %new_data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %new_data, align 4
  %waitq = getelementptr i8, ptr %led_cdev, i32 496
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_led_classdev_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !33, !35}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_uleds__223_216_uleds_init6, !1, !"__initcall__kmod_uleds__223_216_uleds_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/uleds.c", i32 216, i32 1}
!2 = !{ptr @__exitcall_uleds_exit, !3, !"__exitcall_uleds_exit", i1 false, i1 false}
!3 = !{!"../drivers/leds/uleds.c", i32 222, i32 1}
!4 = !{ptr @__UNIQUE_ID_author224, !5, !"__UNIQUE_ID_author224", i1 false, i1 false}
!5 = !{!"../drivers/leds/uleds.c", i32 224, i32 1}
!6 = !{ptr @__UNIQUE_ID_description225, !7, !"__UNIQUE_ID_description225", i1 false, i1 false}
!7 = !{!"../drivers/leds/uleds.c", i32 225, i32 1}
!8 = !{ptr @__UNIQUE_ID_file226, !9, !"__UNIQUE_ID_file226", i1 false, i1 false}
!9 = !{!"../drivers/leds/uleds.c", i32 226, i32 1}
!10 = !{ptr @__UNIQUE_ID_license227, !9, !"__UNIQUE_ID_license227", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/leds/uleds.c", i32 209, i32 11}
!13 = !{ptr @uleds_misc, !14, !"uleds_misc", i1 false, i1 false}
!14 = !{!"../drivers/leds/uleds.c", i32 206, i32 26}
!15 = !{ptr @uleds_fops, !16, !"uleds_fops", i1 false, i1 false}
!16 = !{!"../drivers/leds/uleds.c", i32 196, i32 37}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/uleds.c", i32 162, i32 13}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!21 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/uleds.c", i32 104, i32 32}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/uleds.c", i32 104, i32 54}
!30 = !{ptr @uleds_open.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/leds/uleds.c", i32 63, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @uleds_open.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/leds/uleds.c", i32 64, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{i64 2152168253, i64 2152168278}
!48 = !{i64 2152167572, i64 2152167597}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 4663127}
!51 = !{i64 4663324}
!52 = !{i64 2152148557}
