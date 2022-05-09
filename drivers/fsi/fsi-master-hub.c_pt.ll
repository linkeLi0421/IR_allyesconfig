; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-master-hub.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-hub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsi_device_id = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.fsi_master_hub = type { %struct.fsi_master, ptr, i32, i32 }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_fsi_master_hub__184_297_hub_master_driver_init6 = internal global ptr @hub_master_driver_init, section ".initcall6.init", align 4
@hub_master_driver = internal global { %struct.fsi_driver, [48 x i8] } { %struct.fsi_driver { %struct.device_driver { ptr @.str, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @hub_master_probe, ptr null, ptr @hub_master_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hub_master_ids }, [48 x i8] zeroinitializer }, align 32
@__exitcall_hub_master_driver_exit = internal global ptr @hub_master_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file185 = internal constant [47 x i8] c"fsi_master_hub.file=drivers/fsi/fsi-master-hub\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [27 x i8] c"fsi_master_hub.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi-master-hub\00", [17 x i8] zeroinitializer }, align 32
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@hub_master_ids = internal constant { [2 x %struct.fsi_device_id], [28 x i8] } { [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 28, i8 0 }, %struct.fsi_device_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@hub_master_probe.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi_master_hub\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hub_master_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/fsi/fsi-master-hub.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hub version %08x (%d links)\0A\00", [35 x i8] zeroinitializer }, align 32
@hub_master_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't claim slave address range for links\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hub_master_probe._entry_ptr = internal global ptr @hub_master_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"hub_master_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 287, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 290, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"hub_master_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 279, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 209, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [32 x i8] c"../drivers/fsi/fsi-master-hub.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 214, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_hub_master_driver_exit, ptr @__initcall__kmod_fsi_master_hub__184_297_hub_master_driver_init6, ptr @hub_master_driver_exit, ptr @hub_master_probe._entry, ptr @hub_master_probe._entry_ptr, ptr @hub_master_driver, ptr @.str, ptr @hub_master_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_master_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_master_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_master_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fsi_driver_register(ptr noundef nonnull @hub_master_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hub_master_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @fsi_driver_unregister(ptr noundef nonnull @hub_master_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_probe(ptr noundef %dev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %__reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__reg) #6
  %0 = ptrtoint ptr %__reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %__reg, align 4, !annotation !33
  %call = call i32 @fsi_device_read(ptr noundef %dev, i32 noundef 116, ptr noundef nonnull %__reg, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %__reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %__reg, align 4
  %shr = lshr i32 %2, 8
  %and = and i32 %shr, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hub_master_probe.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hub_master_probe, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !34

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hub_master_probe.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %and) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %slave = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave, align 4
  %mul = shl nuw nsw i32 %and, 19
  %call8 = call i32 @fsi_slave_claim_range(ptr noundef %4, i32 noundef 524288, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1072) #10
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.err_release_crit_edge, label %if.end18

if.end14.err_release_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release

if.end18:                                         ; preds = %if.end14
  %addr = getelementptr inbounds %struct.fsi_master_hub, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 524288, ptr %addr, align 4
  %size = getelementptr inbounds %struct.fsi_master_hub, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %size, align 8
  %upstream = getelementptr inbounds %struct.fsi_master_hub, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %upstream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %upstream, align 8
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hub_master_release, ptr %release, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end18.dev_of_node.exit_crit_edge, label %if.end.i

if.end18.dev_of_node.exit_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %if.end18.dev_of_node.exit_crit_edge
  %retval.0.i81 = phi ptr [ %12, %if.end.i ], [ null, %if.end18.dev_of_node.exit_crit_edge ]
  %call24 = call ptr @of_node_get(ptr noundef %retval.0.i81) #6
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %of_node, align 8
  %n_links = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %n_links to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %n_links, align 4
  %read = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hub_master_read, ptr %read, align 8
  %write = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hub_master_write, ptr %write, align 4
  %send_break = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %send_break to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hub_master_break, ptr %send_break, align 4
  %link_enable = getelementptr inbounds %struct.fsi_master, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %link_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hub_master_link_enable, ptr %link_enable, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %20 = ptrtoint ptr %upstream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %upstream, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1006632960, ptr %reg.i, align 4
  %call.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 208, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i82 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i82, label %if.end.i83, label %dev_of_node.exit.hub_master_init.exit_crit_edge

dev_of_node.exit.hub_master_init.exit_crit_edge:  ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end.i83:                                       ; preds = %dev_of_node.exit
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1006632960, ptr %reg.i, align 4
  %call1.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 208, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i83.hub_master_init.exit_crit_edge

if.end.i83.hub_master_init.exit_crit_edge:        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end4.i:                                        ; preds = %if.end.i83
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 49152, ptr %reg.i, align 4
  %call5.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 736, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.hub_master_init.exit_crit_edge

if.end4.i.hub_master_init.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end8.i:                                        ; preds = %if.end4.i
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -805043952, ptr %reg.i, align 4
  %call13.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end8.i.hub_master_init.exit_crit_edge

if.end8.i.hub_master_init.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end16.i:                                       ; preds = %if.end8.i
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -65536, ptr %reg.i, align 4
  %call17.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 4, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.hub_master_init.exit_crit_edge

if.end16.i.hub_master_init.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end20.i:                                       ; preds = %if.end16.i
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %reg.i, align 4
  %call21.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 24, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %while.body.preheader.i, label %if.end20.i.hub_master_init.exit_crit_edge

if.end20.i.hub_master_init.exit_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

while.body.preheader.i:                           ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #6
  %call26.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 32, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %while.body.preheader.i.hub_master_init.exit_crit_edge

while.body.preheader.i.hub_master_init.exit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end29.i:                                       ; preds = %while.body.preheader.i
  %call30.i = call i32 @fsi_device_read(ptr noundef %21, i32 noundef 112, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.hub_master_init.exit_crit_edge

if.end29.i.hub_master_init.exit_crit_edge:        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end33.i:                                       ; preds = %if.end29.i
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 805306368, ptr %reg.i, align 4
  %call34.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 208, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.hub_master_init.exit_crit_edge

if.end33.i.hub_master_init.exit_crit_edge:        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = call i32 @fsi_device_read(ptr noundef %21, i32 noundef 24, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.hub_master_init.exit_crit_edge

if.end37.i.hub_master_init.exit_crit_edge:        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end41.i:                                       ; preds = %if.end37.i
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2147483648, ptr %reg.i, align 4
  %call42.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 464, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end41.i.hub_master_init.exit_crit_edge

if.end41.i.hub_master_init.exit_crit_edge:        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hub_master_init.exit

if.end45.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1073741824, ptr %reg.i, align 4
  %call46.i = call i32 @fsi_device_write(ptr noundef %21, i32 noundef 464, ptr noundef nonnull %reg.i, i32 noundef 4) #6
  br label %hub_master_init.exit

hub_master_init.exit:                             ; preds = %if.end45.i, %if.end41.i.hub_master_init.exit_crit_edge, %if.end37.i.hub_master_init.exit_crit_edge, %if.end33.i.hub_master_init.exit_crit_edge, %if.end29.i.hub_master_init.exit_crit_edge, %while.body.preheader.i.hub_master_init.exit_crit_edge, %if.end20.i.hub_master_init.exit_crit_edge, %if.end16.i.hub_master_init.exit_crit_edge, %if.end8.i.hub_master_init.exit_crit_edge, %if.end4.i.hub_master_init.exit_crit_edge, %if.end.i83.hub_master_init.exit_crit_edge, %dev_of_node.exit.hub_master_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %call34 = call i32 @fsi_master_register(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %hub_master_init.exit.err_release_crit_edge

hub_master_init.exit.err_release_crit_edge:       ; preds = %hub_master_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release

if.end37:                                         ; preds = %hub_master_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call ptr @get_device(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

err_release:                                      ; preds = %hub_master_init.exit.err_release_crit_edge, %if.end14.err_release_crit_edge
  %rc.0 = phi i32 [ %call34, %hub_master_init.exit.err_release_crit_edge ], [ -12, %if.end14.err_release_crit_edge ]
  %41 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave, align 4
  call void @fsi_slave_release_range(ptr noundef %42, i32 noundef 524288, i32 noundef %mul) #6
  br label %cleanup

cleanup:                                          ; preds = %err_release, %if.end37, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end13 ], [ %rc.0, %err_release ], [ 0, %if.end37 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @fsi_master_unregister(ptr noundef %1) #6
  %upstream = getelementptr inbounds %struct.fsi_master_hub, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %upstream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upstream, align 8
  %slave = getelementptr inbounds %struct.fsi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %addr = getelementptr inbounds %struct.fsi_master_hub, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %size = getelementptr inbounds %struct.fsi_master_hub, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  tail call void @fsi_slave_release_range(ptr noundef %5, i32 noundef %7, i32 noundef %9) #6
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %11) #6
  tail call void @put_device(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_claim_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hub_master_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_read(ptr nocapture noundef readonly %master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %id)
  %cmp.not = icmp eq i8 %id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %addr2 = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr2, align 4
  %mul = shl i32 %link, 19
  %add = add i32 %mul, %addr
  %add3 = add i32 %add, %1
  %upstream = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 1
  %2 = ptrtoint ptr %upstream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upstream, align 8
  %slave = getelementptr inbounds %struct.fsi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %call = tail call i32 @fsi_slave_read(ptr noundef %5, i32 noundef %add3, ptr noundef %val, i32 noundef %size) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_write(ptr nocapture noundef readonly %master, i32 noundef %link, i8 noundef zeroext %id, i32 noundef %addr, ptr noundef %val, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %id)
  %cmp.not = icmp eq i8 %id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %addr2 = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 2
  %0 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr2, align 4
  %mul = shl i32 %link, 19
  %add = add i32 %mul, %addr
  %add3 = add i32 %add, %1
  %upstream = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 1
  %2 = ptrtoint ptr %upstream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upstream, align 8
  %slave = getelementptr inbounds %struct.fsi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %call = tail call i32 @fsi_slave_write(ptr noundef %5, i32 noundef %add3, ptr noundef %val, i32 noundef %size) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_break(ptr nocapture noundef readonly %master, i32 noundef %link) #2 align 64 {
entry:
  %cmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #6
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1059192832, ptr %cmd, align 4
  %addr2.i = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 2
  %1 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr2.i, align 4
  %mul.i = shl i32 %link, 19
  %add.i = or i32 %mul.i, 4
  %add3.i = add i32 %add.i, %2
  %upstream.i = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 1
  %3 = ptrtoint ptr %upstream.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %upstream.i, align 8
  %slave.i = getelementptr inbounds %struct.fsi_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slave.i, align 4
  %call.i = call i32 @fsi_slave_write(ptr noundef %6, i32 noundef %add3.i, ptr noundef nonnull %cmd, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hub_master_link_enable(ptr nocapture noundef readonly %master, i32 noundef %link, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %div = sdiv i32 %link, 32
  %rem17 = and i32 %link, 31
  %shr = lshr i32 -2147483648, %rem17
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %shr, ptr %reg, align 4
  %upstream1 = getelementptr inbounds %struct.fsi_master_hub, ptr %master, i32 0, i32 1
  %1 = ptrtoint ptr %upstream1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %upstream1, align 8
  %mul2 = shl nsw i32 %div, 2
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nsw i32 %mul2, 32
  %call = call i32 @fsi_device_write(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %reg, i32 noundef 4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add nsw i32 %mul2, 24
  %call4 = call i32 @fsi_device_write(ptr noundef %2, i32 noundef %add3, ptr noundef nonnull %reg, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.preheader, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %while.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_slave_release_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_fsi_master_hub__184_297_hub_master_driver_init6, !1, !"__initcall__kmod_fsi_master_hub__184_297_hub_master_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fsi/fsi-master-hub.c", i32 297, i32 1}
!2 = !{ptr @__exitcall_hub_master_driver_exit, !1, !"__exitcall_hub_master_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file185, !4, !"__UNIQUE_ID_file185", i1 false, i1 false}
!4 = !{!"../drivers/fsi/fsi-master-hub.c", i32 298, i32 1}
!5 = !{ptr @__UNIQUE_ID_license186, !4, !"__UNIQUE_ID_license186", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/fsi/fsi-master-hub.c", i32 290, i32 11}
!8 = !{ptr @hub_master_driver, !9, !"hub_master_driver", i1 false, i1 false}
!9 = !{!"../drivers/fsi/fsi-master-hub.c", i32 287, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fsi/fsi-master-hub.c", i32 209, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hub_master_probe.__UNIQUE_ID_ddebug183, !11, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fsi/fsi-master-hub.c", i32 214, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hub_master_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @hub_master_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hub_master_ids, !23, !"hub_master_ids", i1 false, i1 false}
!23 = !{!"../drivers/fsi/fsi-master-hub.c", i32 279, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = !{i64 2148762245, i64 2148762250, i64 2148762263, i64 2148762307, i64 2148762341, i64 2148762362}
