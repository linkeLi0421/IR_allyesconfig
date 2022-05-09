; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/pcap_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/pcap_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pcap_ts = type { ptr, ptr, %struct.delayed_work, i16, i16, i16, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pcap_ts__227_249_pcap_ts_driver_init6 = internal global ptr @pcap_ts_driver_init, section ".initcall6.init", align 4
@pcap_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcap_ts_probe, ptr @pcap_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcap_ts_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcap_ts_driver_exit = internal global ptr @pcap_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [54 x i8] c"pcap_ts.description=Motorola PCAP2 touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [45 x i8] c"pcap_ts.author=Daniel Ribeiro / Harald Welte\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [47 x i8] c"pcap_ts.file=drivers/input/touchscreen/pcap_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [20 x i8] c"pcap_ts.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [31 x i8] c"pcap_ts.alias=platform:pcap_ts\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcap-ts\00", [24 x i8] zeroinitializer }, align 32
@pcap_ts_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcap_ts_suspend, ptr @pcap_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pcap_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&pcap_ts->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@pcap_ts_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&pcap_ts->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcap-touchscreen\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcap_ts/input0\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Touch Screen\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcap_ts_read_xy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 79, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pcap_ts: Warning, unhandled read_state %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcap_ts_read_xy\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/pcap_ts.c\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcap_ts_read_xy._entry_ptr = internal global ptr @pcap_ts_read_xy._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"pcap_ts_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 241, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 245, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"pcap_ts_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 232, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 152, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 161, i32 20 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 162, i32 20 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 183, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [39 x i8] c"../drivers/input/touchscreen/pcap_ts.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 77, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_pcap_ts_driver_exit, ptr @__initcall__kmod_pcap_ts__227_249_pcap_ts_driver_init6, ptr @pcap_ts_driver_exit, ptr @pcap_ts_read_xy._entry, ptr @pcap_ts_read_xy._entry_ptr, ptr @pcap_ts_driver, ptr @.str, ptr @pcap_ts_pm_ops, ptr @pcap_ts_probe.__key, ptr @.str.1, ptr @pcap_ts_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcap_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcap_ts_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcap_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcap_ts_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcap_ts_read_xy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcap_ts_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcap_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcap_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 116) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @input_allocate_device() #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.fail_crit_edge, label %do.body6

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

do.body6:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %work = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %7 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @pcap_ts_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry14 = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry14, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pcap_ts_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @pcap_ts_probe.__key.2) #6
  %read_state = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %read_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %read_state, align 2
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  tail call void @pcap_set_ts_bits(ptr noundef %13, i32 noundef 786432) #6
  %input = getelementptr inbounds %struct.pcap_ts, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call2, ptr %input, align 4
  %driver_data.i.i85 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 8
  %15 = ptrtoint ptr %driver_data.i.i85 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i85, align 4
  %16 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.4, ptr %call2, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 1
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.5, ptr %phys, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 256, ptr %version, align 2
  %parent30 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %22 = ptrtoint ptr %parent30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent30, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 31
  %23 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pcap_ts_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 32
  %24 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pcap_ts_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %25 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10, ptr %evbit, align 8
  %arrayidx31 = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 10
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1024, ptr %arrayidx31, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 24, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #6
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  %call33 = tail call i32 @input_register_device(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %fail_allocate

if.end36:                                         ; preds = %do.body6
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %call38 = tail call i32 @pcap_to_irq(ptr noundef %30, i32 noundef 1) #6
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call38, ptr noundef nonnull @pcap_ts_event_touch, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool40.not = icmp eq i32 %call.i, 0
  br i1 %tobool40.not, label %if.end36.cleanup_crit_edge, label %fail_register

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail_register:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_unregister_device(ptr noundef nonnull %call2) #6
  br label %fail

fail_allocate:                                    ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_free_device(ptr noundef nonnull %call2) #6
  br label %fail

fail:                                             ; preds = %fail_allocate, %fail_register, %if.end.fail_crit_edge
  %err.0 = phi i32 [ %call33, %fail_allocate ], [ %call.i, %fail_register ], [ -12, %if.end.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @pcap_to_irq(ptr noundef %3, i32 noundef 1) #6
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #6
  %work = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 2
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %input = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcap_ts_work(ptr noundef %work) #2 align 64 {
entry:
  %ch = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ch) #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %read_state = getelementptr i8, ptr %work, i32 106
  %2 = ptrtoint ptr %read_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_state, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 17
  tail call void @pcap_set_ts_bits(ptr noundef %1, i32 noundef %shl) #6
  %4 = ptrtoint ptr %read_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp = icmp eq i8 %5, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds [2 x i8], ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %ch, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %6, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %call6 = call i32 @pcap_adc_async(ptr noundef %10, i8 noundef zeroext 1, i32 noundef 0, ptr noundef nonnull %ch, ptr noundef nonnull @pcap_ts_read_xy, ptr noundef %add.ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ch) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcap_set_ts_bits(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %read_state = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %read_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %read_state, align 2
  %work = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcap_ts_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  %read_state = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %read_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %read_state, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @pcap_set_ts_bits(ptr noundef %4, i32 noundef 786432) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcap_to_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_event_touch(i32 noundef %pirq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_state = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %read_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp eq i8 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %read_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %read_state, align 2
  %work = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcap_adc_async(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcap_ts_read_xy(ptr noundef %data, ptr nocapture noundef readonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read_state = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %read_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_state, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 2, label %sw.bb
    i8 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %res, align 2
  %5 = add i16 %4, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1022, i16 %5)
  %6 = icmp ult i16 %5, 1022
  br i1 %6, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %pressure = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %pressure to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %pressure, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %8 = ptrtoint ptr %read_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %read_state, align 2
  %work = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 0) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %res, align 2
  %y = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %y, align 2
  %arrayidx11 = getelementptr i16, ptr %res, i32 1
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11, align 2
  %x = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %x to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %x, align 4
  %16 = add i16 %14, -1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1022, i16 %16)
  %17 = icmp ult i16 %16, -1022
  %18 = add i16 %11, -1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1022, i16 %18)
  %19 = icmp ult i16 %18, -1022
  %or.cond = select i1 %17, i1 true, i1 %19
  br i1 %or.cond, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %22 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  br label %if.end49

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = zext i16 %14 to i32
  %input35 = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %input35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input35, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef 0, i32 noundef %conv13) #6
  %26 = ptrtoint ptr %input35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input35, align 4
  %28 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %y, align 2
  %conv40 = zext i16 %29 to i32
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 1, i32 noundef %conv40) #6
  %30 = ptrtoint ptr %input35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input35, align 4
  tail call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %32 = ptrtoint ptr %input35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input35, align 4
  %pressure43 = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 5
  %34 = ptrtoint ptr %pressure43 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pressure43, align 4
  %conv44 = zext i16 %35 to i32
  tail call void @input_event(ptr noundef %33, i32 noundef 3, i32 noundef 24, i32 noundef %conv44) #6
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then30
  %.sink = phi i8 [ 2, %if.else ], [ 5, %if.then30 ]
  %.sink88 = phi i32 [ 2, %if.else ], [ 0, %if.then30 ]
  %36 = ptrtoint ptr %read_state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %read_state, align 2
  %work46 = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i86 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %work46, i32 noundef %.sink88) #6
  %input50 = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 1
  %38 = ptrtoint ptr %input50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input50, align 4
  tail call void @input_event(ptr noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %1 to i32
  %input51 = getelementptr inbounds %struct.pcap_ts, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %input51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input51, align 4
  %dev = getelementptr inbounds %struct.input_dev, ptr %41, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end49, %if.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @pcap_set_ts_bits(ptr noundef %3, i32 noundef 1048576) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_ts_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_state = getelementptr inbounds %struct.pcap_ts, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %read_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_state, align 2
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 17
  tail call void @pcap_set_ts_bits(ptr noundef %3, i32 noundef %shl) #6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_pcap_ts__227_249_pcap_ts_driver_init6, !1, !"__initcall__kmod_pcap_ts__227_249_pcap_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 249, i32 1}
!2 = !{ptr @__exitcall_pcap_ts_driver_exit, !1, !"__exitcall_pcap_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 251, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 252, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 253, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 254, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 245, i32 11}
!14 = !{ptr @pcap_ts_driver, !15, !"pcap_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 241, i32 31}
!16 = !{ptr @pcap_ts_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 152, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pcap_ts_probe.__key.2, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 161, i32 20}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 162, i32 20}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 183, i32 28}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 77, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pcap_ts_read_xy._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @pcap_ts_read_xy._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @pcap_ts_pm_ops, !36, !"pcap_ts_pm_ops", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/pcap_ts.c", i32 232, i32 32}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
