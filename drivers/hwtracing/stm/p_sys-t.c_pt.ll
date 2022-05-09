; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/stm/p_sys-t.c_pt.bc'
source_filename = "../drivers/hwtracing/stm/p_sys-t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stm_protocol_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.stm_output = type { %struct.spinlock, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sys_t_policy_node = type { %struct.uuid_t, i8, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.sys_t_output = type { %struct.sys_t_policy_node, i32, i32 }
%struct.stm_data = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_stm_p_sys_t__183_379_sys_t_stm_init6 = internal global ptr @sys_t_stm_init, section ".initcall6.init", align 4
@__exitcall_sys_t_stm_exit = internal global ptr @sys_t_stm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [51 x i8] c"stm_p_sys_t.file=drivers/hwtracing/stm/stm_p_sys-t\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [27 x i8] c"stm_p_sys_t.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [63 x i8] c"stm_p_sys_t.description=MIPI SyS-T STM framing protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [75 x i8] c"stm_p_sys_t.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1
@sys_t_pdrv = internal constant { %struct.stm_protocol_driver, [32 x i8] } { %struct.stm_protocol_driver { ptr null, ptr @.str, ptr @sys_t_write, ptr @sys_t_policy_node_init, ptr @sys_t_output_open, ptr @sys_t_output_close, i32 28, ptr @sys_t_policy_attrs }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p_sys-t\00", [24 x i8] zeroinitializer }, align 32
@sys_t_policy_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sys_t_policy_attr_uuid, ptr @sys_t_policy_attr_do_len, ptr @sys_t_policy_attr_ts_interval, ptr @sys_t_policy_attr_clocksync_interval, ptr null], [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sys_t_policy_attr_uuid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.1, ptr null, i16 420, ptr @sys_t_policy_uuid_show, ptr @sys_t_policy_uuid_store }, [44 x i8] zeroinitializer }, align 32
@sys_t_policy_attr_do_len = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @sys_t_policy_do_len_show, ptr @sys_t_policy_do_len_store }, [44 x i8] zeroinitializer }, align 32
@sys_t_policy_attr_ts_interval = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @sys_t_policy_ts_interval_show, ptr @sys_t_policy_ts_interval_store }, [44 x i8] zeroinitializer }, align 32
@sys_t_policy_attr_clocksync_interval = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @sys_t_policy_clocksync_interval_show, ptr @sys_t_policy_clocksync_interval_store }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uuid\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pU\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"do_len\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ts_interval\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clocksync_interval\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"sys_t_pdrv\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 358, i32 41 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 360, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"sys_t_policy_attrs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 230, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"sys_t_policy_attr_uuid\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [25 x i8] c"sys_t_policy_attr_do_len\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"sys_t_policy_attr_ts_interval\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [37 x i8] c"sys_t_policy_attr_clocksync_interval\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 141, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 123, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 166, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 148, i32 23 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 197, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 173, i32 23 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [35 x i8] c"../drivers/hwtracing/stm/p_sys-t.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 228, i32 1 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_sys_t_stm_exit, ptr @__initcall__kmod_stm_p_sys_t__183_379_sys_t_stm_init6, ptr @sys_t_pdrv, ptr @.str, ptr @sys_t_policy_attrs, ptr @sys_t_policy_attr_uuid, ptr @sys_t_policy_attr_do_len, ptr @sys_t_policy_attr_ts_interval, ptr @sys_t_policy_attr_clocksync_interval, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_t_pdrv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_t_policy_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_t_policy_attr_uuid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_t_policy_attr_do_len to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_t_policy_attr_ts_interval to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_t_policy_attr_clocksync_interval to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_stm_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stm_register_protocol(ptr noundef nonnull @sys_t_pdrv) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sys_t_stm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @stm_unregister_protocol(ptr noundef nonnull @sys_t_pdrv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_register_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_write(ptr noundef %data, ptr nocapture noundef readonly %output, i32 noundef %chan, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %header.i = alloca i32, align 4
  %nil.i = alloca i8, align 1
  %payload.i = alloca [2 x i64], align 8
  %nil = alloca i8, align 1
  %header = alloca i32, align 4
  %uuid = alloca [16 x i8], align 1
  %length = alloca i16, align 2
  %ts = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdrv_private = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 4
  %0 = ptrtoint ptr %pdrv_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdrv_private, align 4
  %channel = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 2
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %add = add i32 %3, %chan
  %master = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 1
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %master, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nil) #5
  %6 = ptrtoint ptr %nil to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %nil, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header) #5
  %7 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 25165890, ptr %header, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup54_crit_edge, label %if.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end:                                           ; preds = %entry
  %clocksync_interval.i = getelementptr inbounds %struct.sys_t_policy_node, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clocksync_interval.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clocksync_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %land.lhs.true.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.end
  %clocksync_jiffies.i = getelementptr inbounds %struct.sys_t_output, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clocksync_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clocksync_jiffies.i, align 4
  %add.i = add i32 %11, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then1, label %land.lhs.true.i.if.end5_crit_edge

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then1:                                         ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %clocksync_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %clocksync_jiffies.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i) #5
  %15 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16777224, ptr %header.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nil.i) #5
  %16 = ptrtoint ptr %nil.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %nil.i, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %payload.i) #5
  %packet.i = getelementptr inbounds %struct.stm_data, ptr %data, i32 0, i32 7
  %17 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %packet.i, align 4
  %call.i = call i32 %18(ptr noundef %data, i32 noundef %5, i32 noundef %add, i32 noundef 0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %header.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i103 = icmp slt i32 %call.i, 1
  br i1 %cmp.i103, label %if.then1.sys_t_clock_sync.exit.thread_crit_edge, label %if.end.i

if.then1.sys_t_clock_sync.exit.thread_crit_edge:  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sys_t_clock_sync.exit.thread

if.end.i:                                         ; preds = %if.then1
  %19 = getelementptr inbounds [2 x i64], ptr %payload.i, i32 0, i32 1
  %call.i.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #5
  %20 = ptrtoint ptr %payload.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i.i, ptr %payload.i, align 8
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1000000000, ptr %19, align 8
  %call3.i = call i32 @stm_data_write(ptr noundef %data, i32 noundef %5, i32 noundef %add, i1 noundef zeroext false, ptr noundef nonnull %payload.i, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 1
  br i1 %cmp4.i, label %if.end.i.sys_t_clock_sync.exit.thread_crit_edge, label %sys_t_clock_sync.exit

if.end.i.sys_t_clock_sync.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sys_t_clock_sync.exit.thread

sys_t_clock_sync.exit.thread:                     ; preds = %if.end.i.sys_t_clock_sync.exit.thread_crit_edge, %if.then1.sys_t_clock_sync.exit.thread_crit_edge
  %retval.0.i104.ph = phi i32 [ %call3.i, %if.end.i.sys_t_clock_sync.exit.thread_crit_edge ], [ %call.i, %if.then1.sys_t_clock_sync.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %payload.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nil.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i) #5
  br label %cleanup54

sys_t_clock_sync.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %packet.i, align 4
  %call8.i = call i32 %23(ptr noundef %data, i32 noundef %5, i32 noundef %add, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %nil.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %payload.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nil.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i) #5
  br label %if.end5

if.end5:                                          ; preds = %sys_t_clock_sync.exit, %land.lhs.true.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %do_len = getelementptr inbounds %struct.sys_t_policy_node, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %do_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %do_len, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool6.not = icmp eq i8 %25, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %header, align 4
  %or = or i32 %27, 512
  store i32 %or, ptr %header, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %ts_interval.i = getelementptr inbounds %struct.sys_t_policy_node, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %ts_interval.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ts_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i105 = icmp eq i32 %29, 0
  br i1 %tobool.not.i105, label %if.end8.if.end12_crit_edge, label %land.lhs.true.i109

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true.i109:                               ; preds = %if.end8
  %ts_jiffies.i = getelementptr inbounds %struct.sys_t_output, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %ts_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ts_jiffies.i, align 4
  %add.i106 = add i32 %31, %29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub.i107 = sub i32 %add.i106, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i107)
  %cmp.i108 = icmp slt i32 %sub.i107, 0
  br i1 %cmp.i108, label %if.then10, label %land.lhs.true.i109.if.end12_crit_edge

land.lhs.true.i109.if.end12_crit_edge:            ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = ptrtoint ptr %ts_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ts_jiffies.i, align 4
  %35 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %header, align 4
  %or11 = or i32 %36, 2048
  store i32 %or11, ptr %header, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.i109.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %packet = getelementptr inbounds %struct.stm_data, ptr %data, i32 0, i32 7
  %37 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %packet, align 4
  %call13 = call i32 %38(ptr noundef %data, i32 noundef %5, i32 noundef %add, i32 noundef 0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %header) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.end12.cleanup54_crit_edge, label %if.end16

if.end12.cleanup54_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end16:                                         ; preds = %if.end12
  %39 = call ptr @memcpy(ptr %uuid, ptr %1, i32 16)
  %call20 = call i32 @stm_data_write(ptr noundef %data, i32 noundef %5, i32 noundef %add, i1 noundef zeroext false, ptr noundef nonnull %uuid, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.end16.cleanup54_crit_edge, label %if.end23

if.end16.cleanup54_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end23:                                         ; preds = %if.end16
  %40 = ptrtoint ptr %do_len to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %do_len, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool26.not = icmp eq i8 %41, 0
  br i1 %tobool26.not, label %if.end23.if.end34_crit_edge, label %if.then27

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then27:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %length) #5
  %conv = trunc i32 %count to i16
  %42 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv, ptr %length, align 2
  %43 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %packet, align 4
  %call29 = call i32 %44(ptr noundef %data, i32 noundef %5, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %length) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %length) #5
  br i1 %cmp30, label %if.then27.cleanup54_crit_edge, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then27.cleanup54_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end34:                                         ; preds = %if.then27.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %45 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %header, align 4
  %and = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end34.if.end46_crit_edge, label %if.then36

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then36:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts) #5
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #5
  %47 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %call.i.i, ptr %ts, align 8
  %call38 = call i32 @stm_data_write(ptr noundef %data, i32 noundef %5, i32 noundef %add, i1 noundef zeroext false, ptr noundef nonnull %ts, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts) #5
  br i1 %cmp39, label %if.then36.cleanup54_crit_edge, label %if.then36.if.end46_crit_edge

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then36.cleanup54_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end46:                                         ; preds = %if.then36.if.end46_crit_edge, %if.end34.if.end46_crit_edge
  %call47 = call i32 @stm_data_write(ptr noundef %data, i32 noundef %5, i32 noundef %add, i1 noundef zeroext false, ptr noundef %buf, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end46.cleanup54_crit_edge

if.end46.cleanup54_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %packet, align 4
  %call52 = call i32 %49(ptr noundef %data, i32 noundef %5, i32 noundef %add, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %nil) #5
  br label %cleanup54

cleanup54:                                        ; preds = %if.then50, %if.end46.cleanup54_crit_edge, %if.then36.cleanup54_crit_edge, %if.then27.cleanup54_crit_edge, %if.end16.cleanup54_crit_edge, %if.end12.cleanup54_crit_edge, %sys_t_clock_sync.exit.thread, %entry.cleanup54_crit_edge
  %retval.3 = phi i32 [ %call38, %if.then36.cleanup54_crit_edge ], [ %call29, %if.then27.cleanup54_crit_edge ], [ -22, %entry.cleanup54_crit_edge ], [ %call13, %if.end12.cleanup54_crit_edge ], [ %call20, %if.end16.cleanup54_crit_edge ], [ %call47, %if.then50 ], [ %call47, %if.end46.cleanup54_crit_edge ], [ %retval.0.i104.ph, %sys_t_clock_sync.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nil) #5
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sys_t_policy_node_init(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @uuid_gen(ptr noundef %priv) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_output_open(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 36) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %priv, i32 28)
  %pdrv_private = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 4
  %2 = ptrtoint ptr %pdrv_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %pdrv_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sys_t_output_close(ptr nocapture noundef readonly %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdrv_private = getelementptr inbounds %struct.stm_output, ptr %output, i32 0, i32 4
  %0 = ptrtoint ptr %pdrv_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdrv_private, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm_data_write(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uuid_gen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_uuid_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_uuid_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  tail call void @mutex_lock_nested(ptr noundef %su_mutex, i32 noundef 0) #5
  %call1 = tail call i32 @uuid_parse(ptr noundef %page, ptr noundef %call) #5
  tail call void @mutex_unlock(ptr noundef %su_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  ret i32 %call1.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_pdrv_policy_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_do_len_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  %do_len = getelementptr inbounds %struct.sys_t_policy_node, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %do_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %do_len, align 4, !range !44
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_do_len_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  tail call void @mutex_lock_nested(ptr noundef %su_mutex, i32 noundef 0) #5
  %do_len = getelementptr inbounds %struct.sys_t_policy_node, ptr %call, i32 0, i32 1
  %call1 = tail call i32 @kstrtobool(ptr noundef %page, ptr noundef %do_len) #5
  tail call void @mutex_unlock(ptr noundef %su_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_ts_interval_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  %ts_interval = getelementptr inbounds %struct.sys_t_policy_node, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ts_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ts_interval, align 4
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %1) #5
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_ts_interval_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ms) #5
  %4 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ms, align 4, !annotation !45
  tail call void @mutex_lock_nested(ptr noundef %su_mutex, i32 noundef 0) #5
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %ms) #5
  call void @mutex_unlock(ptr noundef %su_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %6) #5
  %ts_interval = getelementptr inbounds %struct.sys_t_policy_node, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %ts_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %ts_interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ms) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_clocksync_interval_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  %clocksync_interval = getelementptr inbounds %struct.sys_t_policy_node, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %clocksync_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clocksync_interval, align 4
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %1) #5
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_t_policy_clocksync_interval_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  %call = tail call ptr @to_pdrv_policy_node(ptr noundef %item) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ms) #5
  %4 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ms, align 4, !annotation !45
  tail call void @mutex_lock_nested(ptr noundef %su_mutex, i32 noundef 0) #5
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %ms) #5
  call void @mutex_unlock(ptr noundef %su_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %6) #5
  %clocksync_interval = getelementptr inbounds %struct.sys_t_policy_node, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %clocksync_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %clocksync_interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ms) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stm_unregister_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_stm_p_sys_t__183_379_sys_t_stm_init6, !1, !"__initcall__kmod_stm_p_sys_t__183_379_sys_t_stm_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 379, i32 1}
!2 = !{ptr @__exitcall_sys_t_stm_exit, !3, !"__exitcall_sys_t_stm_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 380, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 382, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 383, i32 1}
!9 = !{ptr @__UNIQUE_ID_author187, !10, !"__UNIQUE_ID_author187", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 384, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 360, i32 12}
!13 = !{ptr @sys_t_pdrv, !14, !"sys_t_pdrv", i1 false, i1 false}
!14 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 358, i32 41}
!15 = !{ptr @sys_t_policy_attrs, !16, !"sys_t_policy_attrs", i1 false, i1 false}
!16 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 230, i32 35}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 141, i32 1}
!19 = !{ptr @sys_t_policy_attr_uuid, !18, !"sys_t_policy_attr_uuid", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 123, i32 23}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 166, i32 1}
!24 = !{ptr @sys_t_policy_attr_do_len, !23, !"sys_t_policy_attr_do_len", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 148, i32 23}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 197, i32 1}
!29 = !{ptr @sys_t_policy_attr_ts_interval, !28, !"sys_t_policy_attr_ts_interval", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 173, i32 23}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwtracing/stm/p_sys-t.c", i32 228, i32 1}
!34 = !{ptr @sys_t_policy_attr_clocksync_interval, !33, !"sys_t_policy_attr_clocksync_interval", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{!"auto-init"}
