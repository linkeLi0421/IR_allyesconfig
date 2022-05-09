; ModuleID = '/llk/IR_all_yes/drivers/pci/proc.c_pt.bc'
source_filename = "../drivers/pci/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_filp_private = type { i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }

@proc_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%04x:%02x\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@proc_bus_pci_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%02x.%x\00", [24 x i8] zeroinitializer }, align 32
@proc_bus_pci_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @proc_bus_pci_open, ptr @proc_bus_pci_read, ptr null, ptr @proc_bus_pci_write, ptr @proc_bus_pci_lseek, ptr @proc_bus_pci_release, ptr null, ptr @proc_bus_pci_ioctl, ptr @proc_bus_pci_mmap, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_proc__236_469_pci_proc_init6 = internal global ptr @pci_proc_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/pci/proc.c\00", [45 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus/pci\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@proc_bus_pci_devices_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @pci_seq_start, ptr @pci_seq_stop, ptr @pci_seq_next, ptr @show_device }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%02x%02x\09%04x%04x\09%x\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09%16llx\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1346586880, i64 1346586882]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"proc_initialized\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 423, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 426, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"proc_bus_pci_dir\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 410, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 433, i32 16 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"proc_bus_pci_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 316, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 64, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 460, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 461, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"proc_bus_pci_devices_op\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 403, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 374, i32 16 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [22 x i8] c"../drivers/pci/proc.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 385, i32 17 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_proc__236_469_pci_proc_init6, ptr @proc_initialized, ptr @.str, ptr @.str.1, ptr @proc_bus_pci_dir, ptr @.str.2, ptr @proc_bus_pci_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @proc_bus_pci_devices_op, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_bus_pci_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_bus_pci_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_bus_pci_devices_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_proc_attach_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %2 = call ptr @memset(ptr %name, i32 255, i32 16)
  %.b = load i1, ptr @proc_initialized, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %procdir = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %procdir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %procdir, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then3:                                         ; preds = %if.end
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %domain_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %number9 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %number9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %number9, align 4
  %conv10 = zext i8 %8 to i32
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %6, i32 noundef %conv10)
  br label %if.end12

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.1, i32 noundef %conv10)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %9 = load ptr, ptr @proc_bus_pci_dir, align 4
  %call14 = call ptr @proc_mkdir(ptr noundef nonnull %name, ptr noundef %9) #9
  %10 = ptrtoint ptr %procdir to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %procdir, align 8
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end12.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %12, 3
  %and = and i32 %shr, 31
  %and23 = and i32 %12, 7
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.2, i32 noundef %and, i32 noundef %and23)
  %13 = ptrtoint ptr %procdir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %procdir, align 8
  %call27 = call ptr @proc_create_data(ptr noundef nonnull %name, i16 noundef zeroext -32348, ptr noundef %14, ptr noundef nonnull @proc_bus_pci_ops, ptr noundef %dev) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end20.cleanup_crit_edge, label %if.end30

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 45
  %15 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_size, align 8
  %conv31 = sext i32 %16 to i64
  call void @proc_set_size(ptr noundef nonnull %call27, i64 noundef %conv31) #9
  %procent = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %procent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call27, ptr %procent, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -13, %entry.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_proc_detach_device(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %procent = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %procent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %procent, align 4
  tail call void @proc_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %procent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %procent, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_proc_detach_bus(ptr nocapture noundef readonly %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %procdir = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 11
  %0 = ptrtoint ptr %procdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %procdir, align 8
  tail call void @proc_remove(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_proc_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.5, ptr noundef null) #9
  store ptr %call, ptr @proc_bus_pci_dir, align 4
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.6, i16 noundef zeroext 0, ptr noundef %call, ptr noundef nonnull @proc_bus_pci_devices_op, i32 noundef 0, ptr noundef null) #9
  store i1 true, ptr @proc_initialized, align 4
  %call25 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #9
  %cmp.not6 = icmp eq ptr %call25, null
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call27 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call25, %entry.while.body_crit_edge ]
  %call3 = tail call i32 @pci_proc_attach_device(ptr noundef nonnull %call27)
  %call2 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call27) #9
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i, align 8
  %write_combine = getelementptr inbounds %struct.pci_filp_private, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %write_combine to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %write_combine, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %private_data, align 4
  %call1 = tail call ptr @iomem_get_mapping() #9
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %f_mapping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %val = alloca i8, align 1
  %val38 = alloca i16, align 2
  %val60 = alloca i32, align 4
  %val85 = alloca i16, align 2
  %val108 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %5 to i32
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_size, align 8
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hdr_type = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  %. = select i1 %cmp, i32 128, i32 64
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then
  %size.0 = phi i32 [ %7, %if.then ], [ %., %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %conv)
  %cmp8.not = icmp ugt i32 %size.0, %conv
  br i1 %cmp8.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %10 = tail call i32 @llvm.umin.i32(i32 %size.0, i32 %nbytes)
  %add = add i32 %10, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size.0)
  %cmp16 = icmp ugt i32 %add, %size.0
  %sub = sub i32 %size.0, %conv
  %nbytes.addr.1 = select i1 %cmp16, i32 %sub, i32 %10
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %nbytes.addr.1, i32 -1226833920) #13, !srcloc !39
  %asmresult = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp21 = icmp eq i32 %asmresult, 0
  br i1 %cmp21, label %if.end24, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #9
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end24.if.end31_crit_edge, label %land.lhs.true

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1)
  %tobool25.not = icmp eq i32 %nbytes.addr.1, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end128_crit_edge, label %if.then26

land.lhs.true.if.end128_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %val, align 1, !annotation !40
  %call27 = call i32 @pci_user_read_config_byte(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %val) #9
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 64) #9
  %15 = call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !41
  %and.i = and i32 %17, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %18 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i8 %14, i32 -1226833921) #9, !srcloc !44
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %inc = add nuw i32 %conv, 1
  %dec = add i32 %nbytes.addr.1, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end24.if.end31_crit_edge
  %cnt.0 = phi i32 [ %dec, %if.then26 ], [ %nbytes.addr.1, %if.end24.if.end31_crit_edge ]
  %pos.0 = phi i32 [ %inc, %if.then26 ], [ %conv, %if.end24.if.end31_crit_edge ]
  %buf.addr.0 = phi ptr [ %incdec.ptr, %if.then26 ], [ %buf, %if.end24.if.end31_crit_edge ]
  %and32 = and i32 %pos.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp ne i32 %and32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.0)
  %cmp35 = icmp ugt i32 %cnt.0, 2
  %or.cond = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %if.then37, label %if.end31.if.end57_crit_edge

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val38) #9
  %19 = ptrtoint ptr %val38 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %val38, align 2, !annotation !40
  %call39 = call i32 @pci_user_read_config_word(ptr noundef %3, i32 noundef %pos.0, ptr noundef nonnull %val38) #9
  %20 = ptrtoint ptr %val38 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val38, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 73) #9
  %23 = call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i184 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i184 to ptr
  %cpu_domain.i.i185 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i185) #7, !srcloc !41
  %and.i186 = and i32 %25, -13
  %or.i187 = or i32 %and.i186, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i187) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %26 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.0, i16 %22, i32 -1226833921) #9, !srcloc !45
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 2
  %add55 = add i32 %pos.0, 2
  %sub56 = add i32 %cnt.0, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val38) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then37, %if.end31.if.end57_crit_edge
  %cnt.1 = phi i32 [ %sub56, %if.then37 ], [ %cnt.0, %if.end31.if.end57_crit_edge ]
  %pos.1 = phi i32 [ %add55, %if.then37 ], [ %pos.0, %if.end31.if.end57_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then37 ], [ %buf.addr.0, %if.end31.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.1)
  %cmp58207 = icmp ugt i32 %cnt.1, 3
  br i1 %cmp58207, label %if.end57.while.body_crit_edge, label %if.end57.while.end_crit_edge

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end57.while.body_crit_edge
  %buf.addr.2210 = phi ptr [ %add.ptr77, %while.body.while.body_crit_edge ], [ %buf.addr.1, %if.end57.while.body_crit_edge ]
  %pos.2209 = phi i32 [ %add78, %while.body.while.body_crit_edge ], [ %pos.1, %if.end57.while.body_crit_edge ]
  %cnt.2208 = phi i32 [ %sub79, %while.body.while.body_crit_edge ], [ %cnt.1, %if.end57.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val60) #9
  %27 = ptrtoint ptr %val60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val60, align 4, !annotation !40
  %call61 = call i32 @pci_user_read_config_dword(ptr noundef %3, i32 noundef %pos.2209, ptr noundef nonnull %val60) #9
  %28 = ptrtoint ptr %val60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val60, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 82) #9
  %31 = call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i188 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i188 to ptr
  %cpu_domain.i.i189 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i189) #7, !srcloc !41
  %and.i190 = and i32 %33, -13
  %or.i191 = or i32 %and.i190, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i191) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %34 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.2210, i32 %30, i32 -1226833921) #9, !srcloc !46
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %add.ptr77 = getelementptr i8, ptr %buf.addr.2210, i32 4
  %add78 = add i32 %pos.2209, 4
  %sub79 = add i32 %cnt.2208, -4
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 86, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val60) #9
  %cmp58 = icmp ugt i32 %sub79, 3
  br i1 %cmp58, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end57.while.end_crit_edge
  %cnt.2.lcssa = phi i32 [ %cnt.1, %if.end57.while.end_crit_edge ], [ %sub79, %while.body.while.end_crit_edge ]
  %pos.2.lcssa = phi i32 [ %pos.1, %if.end57.while.end_crit_edge ], [ %add78, %while.body.while.end_crit_edge ]
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1, %if.end57.while.end_crit_edge ], [ %add.ptr77, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.2.lcssa)
  %cmp82 = icmp ugt i32 %cnt.2.lcssa, 1
  br i1 %cmp82, label %if.then84, label %while.end.if.end105_crit_edge

while.end.if.end105_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then84:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val85) #9
  %35 = ptrtoint ptr %val85 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %val85, align 2, !annotation !40
  %call86 = call i32 @pci_user_read_config_word(ptr noundef %3, i32 noundef %pos.2.lcssa, ptr noundef nonnull %val85) #9
  %36 = ptrtoint ptr %val85 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %val85, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 92) #9
  %39 = call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i192 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i192 to ptr
  %cpu_domain.i.i193 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i193) #7, !srcloc !41
  %and.i194 = and i32 %41, -13
  %or.i195 = or i32 %and.i194, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i195) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.2.lcssa, i16 %38, i32 -1226833921) #9, !srcloc !47
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %add.ptr102 = getelementptr i8, ptr %buf.addr.2.lcssa, i32 2
  %add103 = add i32 %pos.2.lcssa, 2
  %sub104 = add nsw i32 %cnt.2.lcssa, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val85) #9
  br label %if.end105

if.end105:                                        ; preds = %if.then84, %while.end.if.end105_crit_edge
  %cnt.3 = phi i32 [ %sub104, %if.then84 ], [ %cnt.2.lcssa, %while.end.if.end105_crit_edge ]
  %pos.3 = phi i32 [ %add103, %if.then84 ], [ %pos.2.lcssa, %while.end.if.end105_crit_edge ]
  %buf.addr.3 = phi ptr [ %add.ptr102, %if.then84 ], [ %buf.addr.2.lcssa, %while.end.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.3)
  %tobool106.not = icmp eq i32 %cnt.3, 0
  br i1 %tobool106.not, label %if.end105.if.end128_crit_edge, label %if.then107

if.end105.if.end128_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val108) #9
  %43 = ptrtoint ptr %val108 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %val108, align 1, !annotation !40
  %call109 = call i32 @pci_user_read_config_byte(ptr noundef %3, i32 noundef %pos.3, ptr noundef nonnull %val108) #9
  %44 = ptrtoint ptr %val108 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val108, align 1
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 101) #9
  %46 = call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i196 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i196 to ptr
  %cpu_domain.i.i197 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i197) #7, !srcloc !41
  %and.i198 = and i32 %48, -13
  %or.i199 = or i32 %and.i198, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i199) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %49 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.3, i8 %45, i32 -1226833921) #9, !srcloc !48
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #9, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %inc126 = add i32 %pos.3, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val108) #9
  br label %if.end128

if.end128:                                        ; preds = %if.then107, %if.end105.if.end128_crit_edge, %land.lhs.true.if.end128_crit_edge
  %pos.4 = phi i32 [ %inc126, %if.then107 ], [ %pos.3, %if.end105.if.end128_crit_edge ], [ %conv, %land.lhs.true.if.end128_crit_edge ]
  call void @pci_config_pm_runtime_put(ptr noundef %3) #9
  %conv129 = zext i32 %pos.4 to i64
  %50 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv129, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %nbytes.addr.1, %if.end128 ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %5 to i32
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cfg_size, align 8
  %call2 = tail call i32 @security_locked_down(i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp sgt i32 %7, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %nbytes)
  %add = add i32 %8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp10 = icmp ugt i32 %add, %7
  %sub = sub i32 %7, %conv
  %nbytes.addr.1 = select i1 %cmp10, i32 %sub, i32 %8
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %nbytes.addr.1, i32 -1226833920) #13, !srcloc !49
  %asmresult = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp15 = icmp eq i32 %asmresult, 0
  br i1 %cmp15, label %if.end18, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  tail call void @pci_config_pm_runtime_get(ptr noundef %3) #9
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end29_crit_edge, label %land.lhs.true

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.addr.1)
  %tobool20.not = icmp eq i32 %nbytes.addr.1, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end115_crit_edge, label %if.then21

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 141) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !41
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf, i32 -1226833921) #9, !srcloc !50
  %asmresult25 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %conv26 = trunc i32 %asmresult25 to i8
  %call28 = tail call i32 @pci_user_write_config_byte(ptr noundef %3, i32 noundef %conv, i8 noundef zeroext %conv26) #9
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %inc = add nsw i32 %conv, 1
  %dec = add i32 %nbytes.addr.1, -1
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.end18.if.end29_crit_edge
  %cnt.0 = phi i32 [ %dec, %if.then21 ], [ %nbytes.addr.1, %if.end18.if.end29_crit_edge ]
  %pos.0 = phi i32 [ %inc, %if.then21 ], [ %conv, %if.end18.if.end29_crit_edge ]
  %buf.addr.0 = phi ptr [ %incdec.ptr, %if.then21 ], [ %buf, %if.end18.if.end29_crit_edge ]
  %and30 = and i32 %pos.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp ne i32 %and30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.0)
  %cmp33 = icmp sgt i32 %cnt.0, 2
  %or.cond = select i1 %tobool31.not, i1 %cmp33, i1 false
  br i1 %or.cond, label %if.then35, label %if.end29.if.end53_crit_edge

if.end29.if.end53_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 150) #9
  %14 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i177 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i177 to ptr
  %cpu_domain.i.i178 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i178) #7, !srcloc !41
  %and.i179 = and i32 %16, -13
  %or.i180 = or i32 %and.i179, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i180) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.0, i32 -1226833921) #9, !srcloc !51
  %asmresult47 = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %conv48 = trunc i32 %asmresult47 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv48)
  %call50 = tail call i32 @pci_user_write_config_word(ptr noundef %3, i32 noundef %pos.0, i16 noundef zeroext %18) #9
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 2
  %add51 = add i32 %pos.0, 2
  %sub52 = add nsw i32 %cnt.0, -2
  br label %if.end53

if.end53:                                         ; preds = %if.then35, %if.end29.if.end53_crit_edge
  %cnt.1 = phi i32 [ %sub52, %if.then35 ], [ %cnt.0, %if.end29.if.end53_crit_edge ]
  %pos.1 = phi i32 [ %add51, %if.then35 ], [ %pos.0, %if.end29.if.end53_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.then35 ], [ %buf.addr.0, %if.end29.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.1)
  %cmp54201 = icmp sgt i32 %cnt.1, 3
  br i1 %cmp54201, label %if.end53.while.body_crit_edge, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end53.while.body_crit_edge:                    ; preds = %if.end53
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end53.while.body_crit_edge
  %buf.addr.2204 = phi ptr [ %add.ptr70, %while.body.while.body_crit_edge ], [ %buf.addr.1, %if.end53.while.body_crit_edge ]
  %pos.2203 = phi i32 [ %add71, %while.body.while.body_crit_edge ], [ %pos.1, %if.end53.while.body_crit_edge ]
  %cnt.2202 = phi i32 [ %sub72, %while.body.while.body_crit_edge ], [ %cnt.1, %if.end53.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 159) #9
  %19 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i181 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i181 to ptr
  %cpu_domain.i.i182 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i182) #7, !srcloc !41
  %and.i183 = and i32 %21, -13
  %or.i184 = or i32 %and.i183, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i184) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.2204, i32 -1226833921) #9, !srcloc !52
  %asmresult67 = extractvalue { i32, i32 } %22, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %23 = tail call i32 @llvm.bswap.i32(i32 %asmresult67)
  %call69 = tail call i32 @pci_user_write_config_dword(ptr noundef %3, i32 noundef %pos.2203, i32 noundef %23) #9
  %add.ptr70 = getelementptr i8, ptr %buf.addr.2204, i32 4
  %add71 = add i32 %pos.2203, 4
  %sub72 = add nsw i32 %cnt.2202, -4
  %cmp54 = icmp ugt i32 %cnt.2202, 7
  br i1 %cmp54, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end53.while.end_crit_edge
  %cnt.2.lcssa = phi i32 [ %cnt.1, %if.end53.while.end_crit_edge ], [ %sub72, %while.body.while.end_crit_edge ]
  %pos.2.lcssa = phi i32 [ %pos.1, %if.end53.while.end_crit_edge ], [ %add71, %while.body.while.end_crit_edge ]
  %buf.addr.2.lcssa = phi ptr [ %buf.addr.1, %if.end53.while.end_crit_edge ], [ %add.ptr70, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.2.lcssa)
  %cmp73 = icmp sgt i32 %cnt.2.lcssa, 1
  br i1 %cmp73, label %if.then75, label %while.end.if.end94_crit_edge

while.end.if.end94_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then75:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 168) #9
  %24 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i185 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i185 to ptr
  %cpu_domain.i.i186 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i186) #7, !srcloc !41
  %and.i187 = and i32 %26, -13
  %or.i188 = or i32 %and.i187, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i188) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.2.lcssa, i32 -1226833921) #9, !srcloc !53
  %asmresult87 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %conv88 = trunc i32 %asmresult87 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv88)
  %call90 = tail call i32 @pci_user_write_config_word(ptr noundef %3, i32 noundef %pos.2.lcssa, i16 noundef zeroext %28) #9
  %add.ptr91 = getelementptr i8, ptr %buf.addr.2.lcssa, i32 2
  %add92 = add i32 %pos.2.lcssa, 2
  %sub93 = add nsw i32 %cnt.2.lcssa, -2
  br label %if.end94

if.end94:                                         ; preds = %if.then75, %while.end.if.end94_crit_edge
  %cnt.3 = phi i32 [ %sub93, %if.then75 ], [ %cnt.2.lcssa, %while.end.if.end94_crit_edge ]
  %pos.3 = phi i32 [ %add92, %if.then75 ], [ %pos.2.lcssa, %while.end.if.end94_crit_edge ]
  %buf.addr.3 = phi ptr [ %add.ptr91, %if.then75 ], [ %buf.addr.2.lcssa, %while.end.if.end94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.3)
  %tobool95.not = icmp eq i32 %cnt.3, 0
  br i1 %tobool95.not, label %if.end94.if.end115_crit_edge, label %if.then96

if.end94.if.end115_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 177) #9
  %29 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i189 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i189 to ptr
  %cpu_domain.i.i190 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i190) #7, !srcloc !41
  %and.i191 = and i32 %31, -13
  %or.i192 = or i32 %and.i191, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i192) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %32 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf.addr.3, i32 -1226833921) #9, !srcloc !54
  %asmresult108 = extractvalue { i32, i32 } %32, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #9, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !43
  %conv109 = trunc i32 %asmresult108 to i8
  %call111 = tail call i32 @pci_user_write_config_byte(ptr noundef %3, i32 noundef %pos.3, i8 noundef zeroext %conv109) #9
  %inc113 = add i32 %pos.3, 1
  br label %if.end115

if.end115:                                        ; preds = %if.then96, %if.end94.if.end115_crit_edge, %land.lhs.true.if.end115_crit_edge
  %pos.4 = phi i32 [ %inc113, %if.then96 ], [ %pos.3, %if.end94.if.end115_crit_edge ], [ %conv, %land.lhs.true.if.end115_crit_edge ]
  tail call void @pci_config_pm_runtime_put(ptr noundef %3) #9
  %conv116 = sext i32 %pos.4 to i64
  %33 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv116, ptr %ppos, align 8
  %34 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cfg_size, align 8
  %conv118 = sext i32 %35 to i64
  %36 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %39, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end115.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.end115.i_size_write.exit_crit_edge:            ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.end115
  %41 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %45 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i193 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i193 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %50, ptrtoint (ptr @lockdep_recursion to i32)
  %51 = inttoptr i32 %add.i28.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %54 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i7.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool20.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i29.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %62 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i9.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %65, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %66 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %69, ptrtoint (ptr @hardirqs_enabled to i32)
  %70 = inttoptr i32 %add47.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %73 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i12.i.i = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %76, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool54.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !60

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.end115.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %77 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %78, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %79 = tail call ptr @llvm.returnaddress(i32 0) #9
  %80 = ptrtoint ptr %79 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %80) #9
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %81 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv118, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %80) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  %82 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %83, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %84 = tail call i32 @llvm.read_register.i32(metadata !29) #9
  %and.i.i.i26.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %87, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %i_size_write.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %nbytes.addr.1, %i_size_write.exit ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @proc_bus_pci_lseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %cfg_size = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg_size, align 8
  %conv = sext i32 %5 to i64
  %call2 = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %off, i32 noundef %whence, i64 noundef %conv) #9
  ret i64 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @security_locked_down(i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1346586880, label %sw.bb
    i32 1346586882, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %domain_nr.i, align 8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ %10, %sw.bb ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_bus_pci_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call2 = tail call zeroext i1 @capable(i32 noundef 17) #9
  br i1 %call2, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @security_locked_down(i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %flags = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %call8 = tail call i32 @pci_mmap_fits(ptr noundef %3, i32 noundef 0, ptr noundef %vma, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %flags.1 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 1, i32 3
  %10 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %call8.1 = tail call i32 @pci_mmap_fits(ptr noundef %3, i32 noundef 1, ptr noundef %vma, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.end14_crit_edge

land.lhs.true.1.if.end14_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %flags.2 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 2, i32 3
  %12 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %call8.2 = tail call i32 @pci_mmap_fits(ptr noundef %3, i32 noundef 2, ptr noundef %vma, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.end14_crit_edge

land.lhs.true.2.if.end14_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %flags.3 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 3, i32 3
  %14 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool7.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool7.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %call8.3 = tail call i32 @pci_mmap_fits(ptr noundef %3, i32 noundef 3, ptr noundef %vma, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.end14_crit_edge

land.lhs.true.3.if.end14_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %flags.4 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 4, i32 3
  %16 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool7.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool7.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %call8.4 = tail call i32 @pci_mmap_fits(ptr noundef %3, i32 noundef 4, ptr noundef %vma, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %tobool9.not.4 = icmp eq i32 %call8.4, 0
  br i1 %tobool9.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.if.end14_crit_edge

land.lhs.true.4.if.end14_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %flags.5 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 5, i32 3
  %18 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool7.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool7.not.5, label %for.inc.4.cleanup_crit_edge, label %land.lhs.true.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.5:                                  ; preds = %for.inc.4
  %call8.5 = tail call i32 @pci_mmap_fits(ptr noundef %3, i32 noundef 5, ptr noundef %vma, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.5)
  %tobool9.not.5 = icmp eq i32 %call8.5, 0
  br i1 %tobool9.not.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.if.end14_crit_edge

land.lhs.true.5.if.end14_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.5.if.end14_crit_edge, %land.lhs.true.4.if.end14_crit_edge, %land.lhs.true.3.if.end14_crit_edge, %land.lhs.true.2.if.end14_crit_edge, %land.lhs.true.1.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge
  %i.075.lcssa = phi i32 [ 0, %land.lhs.true.if.end14_crit_edge ], [ 1, %land.lhs.true.1.if.end14_crit_edge ], [ 2, %land.lhs.true.2.if.end14_crit_edge ], [ 3, %land.lhs.true.3.if.end14_crit_edge ], [ 4, %land.lhs.true.4.if.end14_crit_edge ], [ 5, %land.lhs.true.5.if.end14_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp16 = icmp eq i32 %21, 1
  br i1 %cmp16, label %land.lhs.true17, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true17:                                  ; preds = %if.end14
  %write_combine18 = getelementptr inbounds %struct.pci_filp_private, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %write_combine18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %write_combine18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end28_crit_edge, label %if.then20

land.lhs.true17.if.end28_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then20:                                        ; preds = %land.lhs.true17
  %flags23 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 %i.075.lcssa, i32 3
  %24 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags23, align 4
  %and24 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then20.cleanup_crit_edge, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %land.lhs.true17.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %write_combine.0 = phi i32 [ 0, %land.lhs.true17.if.end28_crit_edge ], [ 0, %if.end14.if.end28_crit_edge ], [ 1, %if.then20.if.end28_crit_edge ]
  %flags31 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 %i.075.lcssa, i32 3
  %26 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags31, align 4
  %and32 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end28.if.end40_crit_edge, label %land.lhs.true34

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true34:                                  ; preds = %if.end28
  %arrayidx30 = getelementptr %struct.pci_dev, ptr %3, i32 0, i32 47, i32 %i.075.lcssa
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx30, align 8
  %conv = zext i32 %29 to i64
  %call37 = tail call zeroext i1 @iomem_is_exclusive(i64 noundef %conv) #9
  br i1 %call37, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true34.if.end40_crit_edge

land.lhs.true34.if.end40_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true34.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  %call42 = tail call i32 @pci_mmap_page_range(ptr noundef %3, i32 noundef %i.075.lcssa, ptr noundef %vma, i32 noundef %31, i32 noundef %write_combine.0) #9
  %32 = tail call i32 @llvm.smin.i32(i32 %call42, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true34.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ -22, %land.lhs.true34.cleanup_crit_edge ], [ %32, %if.end40 ], [ -19, %land.lhs.true.5.cleanup_crit_edge ], [ -19, %for.inc.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iomem_get_mapping() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_mmap_fits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iomem_is_exclusive(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_mmap_page_range(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pci_seq_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %dev.0 = phi ptr [ null, %entry ], [ %call, %while.cond.while.cond_crit_edge ]
  %n.0 = phi i64 [ %1, %entry ], [ %dec, %while.cond.while.cond_crit_edge ]
  %call = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %dev.0) #9
  %cmp.not = icmp eq ptr %call, null
  %dec = add i64 %n.0, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n.0)
  %tobool.not = icmp eq i64 %n.0, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_seq_stop(ptr nocapture noundef readnone %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_dev_put(ptr noundef nonnull %v) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pci_seq_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %v) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_device(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %start12 = alloca i32, align 4
  %end13 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @pci_dev_driver(ptr noundef nonnull %v) #9
  %bus = getelementptr inbounds %struct.pci_dev, ptr %v, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %v, i32 0, i32 6
  %4 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %v, i32 0, i32 7
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor, align 8
  %conv1 = zext i16 %7 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %v, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %conv2 = zext i16 %9 to i32
  %irq = getelementptr inbounds %struct.pci_dev, ptr %v, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %5, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %12 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 0
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 0, ptr noundef %arrayidx, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %14 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start, align 4
  %flags = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 15
  %or = or i32 %and, %15
  %conv7 = zext i32 %or to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %18 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %19 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 1
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 1, ptr noundef %arrayidx.1, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %20 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start, align 4
  %flags.1 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 1, i32 3
  %22 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %23, 15
  %or.1 = or i32 %and.1, %21
  %conv7.1 = zext i32 %or.1 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7.1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %24 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %25 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 2
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 2, ptr noundef %arrayidx.2, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %26 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %start, align 4
  %flags.2 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 2, i32 3
  %28 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %29, 15
  %or.2 = or i32 %and.2, %27
  %conv7.2 = zext i32 %or.2 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7.2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %30 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %31 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 3
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 3, ptr noundef %arrayidx.3, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %start, align 4
  %flags.3 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 3, i32 3
  %34 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %35, 15
  %or.3 = or i32 %and.3, %33
  %conv7.3 = zext i32 %or.3 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7.3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %36 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %37 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 4
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 4, ptr noundef %arrayidx.4, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %38 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %start, align 4
  %flags.4 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 4, i32 3
  %40 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %41, 15
  %or.4 = or i32 %and.4, %39
  %conv7.4 = zext i32 %or.4 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7.4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %42 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %43 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 5
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 5, ptr noundef %arrayidx.5, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %start, align 4
  %flags.5 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 5, i32 3
  %46 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %47, 15
  %or.5 = or i32 %and.5, %45
  %conv7.5 = zext i32 %or.5 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7.5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #9
  %48 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %start, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #9
  %49 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %end, align 4, !annotation !40
  %arrayidx.6 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 6
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef 6, ptr noundef %arrayidx.6, ptr noundef nonnull %start, ptr noundef nonnull %end) #9
  %50 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %start, align 4
  %flags.6 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 6, i32 3
  %52 = ptrtoint ptr %flags.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.6, align 4
  %and.6 = and i32 %53, 15
  %or.6 = or i32 %and.6, %51
  %conv7.6 = zext i32 %or.6 to i64
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv7.6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #9
  br label %for.body11

for.body11:                                       ; preds = %cond.end.for.body11_crit_edge, %if.end
  %i.162 = phi i32 [ %inc26, %cond.end.for.body11_crit_edge ], [ 0, %if.end ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start12) #9
  %54 = ptrtoint ptr %start12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %start12, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end13) #9
  %55 = ptrtoint ptr %end13 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %end13, align 4, !annotation !40
  %arrayidx15 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 %i.162
  call void @pci_resource_to_user(ptr noundef nonnull %v, i32 noundef %i.162, ptr noundef %arrayidx15, ptr noundef nonnull %start12, ptr noundef nonnull %end13) #9
  %56 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx15, align 8
  %end21 = getelementptr %struct.pci_dev, ptr %v, i32 0, i32 47, i32 %i.162, i32 1
  %58 = ptrtoint ptr %end21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %end21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp22 = icmp ult i32 %57, %59
  br i1 %cmp22, label %cond.true, label %for.body11.cond.end_crit_edge

for.body11.cond.end_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %end13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end13, align 4
  %62 = ptrtoint ptr %start12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %start12, align 4
  %sub = sub i32 %61, %63
  %conv24 = zext i32 %sub to i64
  %add = add nuw nsw i64 %conv24, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body11.cond.end_crit_edge
  %cond = phi i64 [ %add, %cond.true ], [ 0, %for.body11.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %cond) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start12) #9
  %inc26 = add nuw nsw i32 %i.162, 1
  %exitcond.not = icmp eq i32 %inc26, 7
  br i1 %exitcond.not, label %for.end27, label %cond.end.for.body11_crit_edge

cond.end.for.body11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11

for.end27:                                        ; preds = %cond.end
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 9) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end27.if.end29_crit_edge, label %if.then28

for.end27.if.end29_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.pci_driver, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 4
  call void @seq_puts(ptr noundef %m, ptr noundef %65) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.end27.if.end29_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/proc.c", i32 423, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/proc.c", i32 426, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/proc.c", i32 433, i32 16}
!6 = !{ptr @__initcall__kmod_proc__236_469_pci_proc_init6, !7, !"__initcall__kmod_proc__236_469_pci_proc_init6", i1 false, i1 false}
!7 = !{!"../drivers/pci/proc.c", i32 469, i32 1}
!8 = distinct !{null, !9, !"proc_initialized", i1 false, i1 false}
!9 = !{!"../drivers/pci/proc.c", i32 20, i32 12}
!10 = !{ptr @proc_bus_pci_dir, !11, !"proc_bus_pci_dir", i1 false, i1 false}
!11 = !{!"../drivers/pci/proc.c", i32 410, i32 31}
!12 = !{ptr @proc_bus_pci_ops, !13, !"proc_bus_pci_ops", i1 false, i1 false}
!13 = !{!"../drivers/pci/proc.c", i32 316, i32 30}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/proc.c", i32 64, i32 3}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pci/proc.c", i32 460, i32 32}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/proc.c", i32 461, i32 2}
!23 = !{ptr @proc_bus_pci_devices_op, !24, !"proc_bus_pci_devices_op", i1 false, i1 false}
!24 = !{!"../drivers/pci/proc.c", i32 403, i32 36}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/proc.c", i32 374, i32 16}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/proc.c", i32 385, i32 17}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2154551868, i64 2154551893}
!40 = !{!"auto-init"}
!41 = !{i64 6379726}
!42 = !{i64 6379923}
!43 = !{i64 2153865156}
!44 = !{i64 2154554387, i64 2154554667, i64 2154555001, i64 2154555335}
!45 = !{i64 2154569586, i64 2154569866, i64 2154570200, i64 2154570534}
!46 = !{i64 2154580724, i64 2154581004, i64 2154581338, i64 2154581672}
!47 = !{i64 2154588037, i64 2154588317, i64 2154588651, i64 2154588985}
!48 = !{i64 2154594866, i64 2154595146, i64 2154595480, i64 2154595814}
!49 = !{i64 2154601862, i64 2154601887}
!50 = !{i64 2154605902, i64 2154606182, i64 2154606516, i64 2154606850}
!51 = !{i64 2154620718, i64 2154620998, i64 2154621332, i64 2154621666}
!52 = !{i64 2154635657, i64 2154635937, i64 2154636271, i64 2154636605}
!53 = !{i64 2154645492, i64 2154645772, i64 2154646106, i64 2154646440}
!54 = !{i64 2154655237, i64 2154655517, i64 2154655851, i64 2154656185}
!55 = !{i64 2154174725}
!56 = !{i64 2149846194}
!57 = !{i64 2149851126}
!58 = !{i64 2149872838}
!59 = !{i64 2149877730}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2149954187}
!62 = !{i64 2149954512}
!63 = !{i64 2154186587}
