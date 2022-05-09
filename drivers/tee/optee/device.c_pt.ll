; ModuleID = '/llk/IR_all_yes/drivers/tee/optee/device.c_pt.bc'
source_filename = "../drivers/tee/optee/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tee_ioctl_invoke_arg = type { i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_ioctl_param = type { i64, i64, i64, i64 }
%struct.tee_param = type { i64, %union.anon.43 }
%union.anon.43 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.tee_ioctl_open_session_arg = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_param_memref = type { i32, i32, ptr }
%struct.tee_client_device = type { %struct.tee_client_device_id, %struct.device }
%struct.tee_client_device_id = type { %struct.uuid_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@tee_bus_type = external dso_local global %struct.bus_type, align 4
@__const.__optee_enumerate_devices.pta_uuid = private unnamed_addr constant %struct.uuid_t { [16 x i8] c"p\11\A6\88\DD\DE@S\A5\A9{<M\DF\13\B8" }, align 1
@__optee_enumerate_devices._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013optee: tee_shm_alloc failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__optee_enumerate_devices\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/tee/optee/device.c\00", [37 x i8] zeroinitializer }, align 32
@__optee_enumerate_devices._entry_ptr = internal global ptr @__optee_enumerate_devices._entry, section ".printk_index", align 4
@__optee_enumerate_devices._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, align 1
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013optee: tee_shm_get_va failed\0A\00", [32 x i8] zeroinitializer }, align 32
@__optee_enumerate_devices._entry_ptr.5 = internal global ptr @__optee_enumerate_devices._entry.3, section ".printk_index", align 4
@get_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013optee: PTA_CMD_GET_DEVICES invoke function err: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_devices\00", [20 x i8] zeroinitializer }, align 32
@get_devices._entry_ptr = internal global ptr @get_devices._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"optee-ta-%pUb\00", [18 x i8] zeroinitializer }, align 32
@optee_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013optee: device registration failed, err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"optee_register_device\00", [42 x i8] zeroinitializer }, align 32
@optee_register_device._entry_ptr = internal global ptr @optee_register_device._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"optee-ta\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294901776]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294901776]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 127, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 138, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 46, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 74, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 82, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [30 x i8] c"../drivers/tee/optee/device.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 168, i32 30 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__optee_enumerate_devices._entry, ptr @__optee_enumerate_devices._entry.3, ptr @__optee_enumerate_devices._entry_ptr, ptr @__optee_enumerate_devices._entry_ptr.5, ptr @get_devices._entry, ptr @get_devices._entry_ptr, ptr @optee_register_device._entry, ptr @optee_register_device._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @optee_enumerate_devices(i32 noundef %func) local_unnamed_addr #0 align 64 {
entry:
  %inv_arg.i69.i = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param.i70.i = alloca [4 x %struct.tee_param], align 8
  %inv_arg.i.i = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param.i.i = alloca [4 x %struct.tee_param], align 8
  %sess_arg.i = alloca %struct.tee_ioctl_open_session_arg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sess_arg.i) #7
  %0 = getelementptr inbounds i8, ptr %sess_arg.i, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %call.i = tail call ptr @tee_client_open_context(ptr noundef null, ptr noundef nonnull @optee_ctx_match, ptr noundef null, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.__optee_enumerate_devices.exit_crit_edge, label %if.end.i

entry.__optee_enumerate_devices.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__optee_enumerate_devices.exit

if.end.i:                                         ; preds = %entry
  %2 = call ptr @memcpy(ptr %sess_arg.i, ptr @__const.__optee_enumerate_devices.pta_uuid, i32 16)
  %clnt_login.i = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg.i, i32 0, i32 2
  %3 = ptrtoint ptr %clnt_login.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %clnt_login.i, align 8
  %num_params.i = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg.i, i32 0, i32 7
  %4 = ptrtoint ptr %num_params.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_params.i, align 4
  %call2.i = call i32 @tee_client_open_session(ptr noundef %call.i, ptr noundef nonnull %sess_arg.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.out_ctx.i_crit_edge, label %lor.lhs.false.i

if.end.i.out_ctx.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctx.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ret.i = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg.i, i32 0, i32 5
  %5 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not.i = icmp eq i32 %6, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %lor.lhs.false.i.out_ctx.i_crit_edge

lor.lhs.false.i.out_ctx.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctx.i

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %session.i = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg.i, i32 0, i32 4
  %7 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %session.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg.i.i) #7
  %9 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i.i, i32 0, i32 3
  %11 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param.i.i) #7
  %12 = getelementptr inbounds i8, ptr %inv_arg.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  %14 = getelementptr inbounds i8, ptr %param.i.i, i32 16
  %15 = call ptr @memset(ptr %14, i32 0, i32 112)
  %16 = ptrtoint ptr %inv_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %func, ptr %inv_arg.i.i, align 8
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %9, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %11, align 4
  %19 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 6, ptr %param.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.tee_param, ptr %param.i.i, i32 0, i32 1
  %size.i.i = getelementptr inbounds %struct.tee_param_memref, ptr %u.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %size.i.i, align 4
  %21 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %u.i.i, align 8
  %call.i.i = call i32 @tee_client_invoke_func(ptr noundef %call.i, ptr noundef nonnull %inv_arg.i.i, ptr noundef nonnull %param.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i67.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i67.i, label %if.end5.i.get_devices.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end5.i.get_devices.exit.thread.i_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_devices.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end5.i
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %lor.lhs.false.i.i.get_devices.exit.thread.i_crit_edge [
    i32 0, label %lor.lhs.false.i.i.lor.lhs.false8.i_crit_edge
    i32 -65520, label %lor.lhs.false.i.i.lor.lhs.false8.i_crit_edge19
  ]

lor.lhs.false.i.i.lor.lhs.false8.i_crit_edge19:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false8.i

lor.lhs.false.i.i.lor.lhs.false8.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false8.i

lor.lhs.false.i.i.get_devices.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_devices.exit.thread.i

get_devices.exit.thread.i:                        ; preds = %lor.lhs.false.i.i.get_devices.exit.thread.i_crit_edge, %if.end5.i.get_devices.exit.thread.i_crit_edge
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %10, align 4
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %26) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i.i) #7
  br label %out_sess.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i.i.lor.lhs.false8.i_crit_edge, %lor.lhs.false.i.i.lor.lhs.false8.i_crit_edge19
  %27 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %lor.lhs.false8.i.out_sess.i_crit_edge, label %if.end10.i

lor.lhs.false8.i.out_sess.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_sess.i

if.end10.i:                                       ; preds = %lor.lhs.false8.i
  %call11.i = call ptr @tee_shm_alloc(ptr noundef %call.i, i32 noundef %28, i32 noundef 3) #7
  %cmp.i68.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %do.end.i, label %if.end16.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %29 = ptrtoint ptr %call11.i to i32
  br label %out_sess.i

if.end16.i:                                       ; preds = %if.end10.i
  %30 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %session.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg.i69.i) #7
  %32 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i69.i, i32 0, i32 1
  %33 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i69.i, i32 0, i32 3
  %34 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg.i69.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param.i70.i) #7
  %35 = getelementptr inbounds i8, ptr %inv_arg.i69.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 16)
  %37 = getelementptr inbounds i8, ptr %param.i70.i, i32 16
  %38 = call ptr @memset(ptr %37, i32 0, i32 112)
  %39 = ptrtoint ptr %inv_arg.i69.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %func, ptr %inv_arg.i69.i, align 8
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %31, ptr %32, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %34, align 4
  %42 = ptrtoint ptr %param.i70.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 6, ptr %param.i70.i, align 8
  %u.i71.i = getelementptr inbounds %struct.tee_param, ptr %param.i70.i, i32 0, i32 1
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call11.i, ptr %37, align 8
  %size.i73.i = getelementptr inbounds %struct.tee_param_memref, ptr %u.i71.i, i32 0, i32 1
  %44 = ptrtoint ptr %size.i73.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %28, ptr %size.i73.i, align 4
  %45 = ptrtoint ptr %u.i71.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %u.i71.i, align 8
  %call.i74.i = call i32 @tee_client_invoke_func(ptr noundef %call.i, ptr noundef nonnull %inv_arg.i69.i, ptr noundef nonnull %param.i70.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %cmp.i75.i = icmp slt i32 %call.i74.i, 0
  br i1 %cmp.i75.i, label %if.end16.i.get_devices.exit81.thread.i_crit_edge, label %lor.lhs.false.i76.i

if.end16.i.get_devices.exit81.thread.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_devices.exit81.thread.i

lor.lhs.false.i76.i:                              ; preds = %if.end16.i
  %46 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %33, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %47, label %lor.lhs.false.i76.i.get_devices.exit81.thread.i_crit_edge [
    i32 0, label %lor.lhs.false.i76.i.if.end21.i_crit_edge
    i32 -65520, label %lor.lhs.false.i76.i.if.end21.i_crit_edge20
  ]

lor.lhs.false.i76.i.if.end21.i_crit_edge20:       ; preds = %lor.lhs.false.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

lor.lhs.false.i76.i.if.end21.i_crit_edge:         ; preds = %lor.lhs.false.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

lor.lhs.false.i76.i.get_devices.exit81.thread.i_crit_edge: ; preds = %lor.lhs.false.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_devices.exit81.thread.i

get_devices.exit81.thread.i:                      ; preds = %lor.lhs.false.i76.i.get_devices.exit81.thread.i_crit_edge, %if.end16.i.get_devices.exit81.thread.i_crit_edge
  %49 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %33, align 4
  %call13.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %50) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i70.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i69.i) #7
  br label %out_shm.i

if.end21.i:                                       ; preds = %lor.lhs.false.i76.i.if.end21.i_crit_edge, %lor.lhs.false.i76.i.if.end21.i_crit_edge20
  %51 = ptrtoint ptr %size.i73.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i73.i, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param.i70.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg.i69.i) #7
  %call22.i = call ptr @tee_shm_get_va(ptr noundef %call11.i, i32 noundef 0) #7
  %cmp.i82.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82.i, label %do.end27.i, label %if.end31.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  %53 = ptrtoint ptr %call22.i to i32
  br label %out_shm.i

if.end31.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %52)
  %cmp3299.not.i = icmp ult i32 %52, 16
  br i1 %cmp3299.not.i, label %if.end31.i.out_shm.i_crit_edge, label %for.body.preheader.i

if.end31.i.out_shm.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_shm.i

for.body.preheader.i:                             ; preds = %if.end31.i
  %div66.i = lshr i32 %52, 4
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end6.i.i
  %inc.i = add nuw nsw i32 %idx.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div66.i
  br i1 %exitcond.not.i, label %for.cond.i.out_shm.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.out_shm.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_shm.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %idx.0100.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.uuid_t, ptr %call22.i, i32 %idx.0100.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 944) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.out_shm.i_crit_edge, label %if.end.i83.i

for.body.i.out_shm.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_shm.i

if.end.i83.i:                                     ; preds = %for.body.i
  %dev.i.i = getelementptr inbounds %struct.tee_client_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %bus.i.i = getelementptr inbounds %struct.tee_client_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 5
  %55 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @tee_bus_type, ptr %bus.i.i, align 8
  %release.i.i = getelementptr inbounds %struct.tee_client_device, ptr %call7.i.i.i.i, i32 0, i32 1, i32 35
  %56 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @optee_release_device, ptr %release.i.i, align 4
  %call3.i.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i.i, ptr noundef nonnull @.str.8, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i83.i.cleanup.sink.split.i.i_crit_edge

if.end.i83.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end.i83.i
  %57 = call ptr @memcpy(ptr %call7.i.i.i.i, ptr %arrayidx.i, i32 16)
  %call8.i.i = call i32 @device_register(ptr noundef %dev.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %for.cond.i, label %do.end.i84.i

do.end.i84.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call8.i.i) #10
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %do.end.i84.i, %if.end.i83.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ %call8.i.i, %do.end.i84.i ], [ -12, %if.end.i83.i.cleanup.sink.split.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %out_shm.i

out_shm.i:                                        ; preds = %cleanup.sink.split.i.i, %for.body.i.out_shm.i_crit_edge, %for.cond.i.out_shm.i_crit_edge, %if.end31.i.out_shm.i_crit_edge, %do.end27.i, %get_devices.exit81.thread.i
  %rc.1.i = phi i32 [ %53, %do.end27.i ], [ -22, %get_devices.exit81.thread.i ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ], [ 0, %if.end31.i.out_shm.i_crit_edge ], [ -12, %for.body.i.out_shm.i_crit_edge ], [ 0, %for.cond.i.out_shm.i_crit_edge ]
  call void @tee_shm_free(ptr noundef %call11.i) #7
  br label %out_sess.i

out_sess.i:                                       ; preds = %out_shm.i, %do.end.i, %lor.lhs.false8.i.out_sess.i_crit_edge, %get_devices.exit.thread.i
  %rc.2.i = phi i32 [ %29, %do.end.i ], [ %rc.1.i, %out_shm.i ], [ 0, %lor.lhs.false8.i.out_sess.i_crit_edge ], [ -22, %get_devices.exit.thread.i ]
  %58 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %session.i, align 8
  %call38.i = call i32 @tee_client_close_session(ptr noundef %call.i, i32 noundef %59) #7
  br label %out_ctx.i

out_ctx.i:                                        ; preds = %out_sess.i, %lor.lhs.false.i.out_ctx.i_crit_edge, %if.end.i.out_ctx.i_crit_edge
  %rc.3.i = phi i32 [ %rc.2.i, %out_sess.i ], [ 0, %lor.lhs.false.i.out_ctx.i_crit_edge ], [ 0, %if.end.i.out_ctx.i_crit_edge ]
  call void @tee_client_close_context(ptr noundef %call.i) #7
  br label %__optee_enumerate_devices.exit

__optee_enumerate_devices.exit:                   ; preds = %out_ctx.i, %entry.__optee_enumerate_devices.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.3.i, %out_ctx.i ], [ -19, %entry.__optee_enumerate_devices.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sess_arg.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @optee_unregister_devices() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_for_each_dev(ptr noundef nonnull @tee_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @__optee_unregister_device) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__optee_unregister_device(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 @strncmp(ptr noundef %retval.0.i, ptr noundef nonnull dereferenceable(9) @.str.11, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %dev_name.exit.if.end_crit_edge

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @device_unregister(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_name.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_client_open_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @optee_ctx_match(ptr nocapture noundef readonly %ver, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_open_session(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_va(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_close_session(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_client_close_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_invoke_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optee_release_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tee/optee/device.c", i32 127, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__optee_enumerate_devices._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__optee_enumerate_devices._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tee/optee/device.c", i32 138, i32 3}
!8 = !{ptr @__optee_enumerate_devices._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @__optee_enumerate_devices._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tee/optee/device.c", i32 46, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @get_devices._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @get_devices._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tee/optee/device.c", i32 74, i32 39}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tee/optee/device.c", i32 82, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @optee_register_device._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @optee_register_device._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tee/optee/device.c", i32 168, i32 30}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
