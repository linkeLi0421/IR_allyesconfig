; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/highbank-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/highbank-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__initcall__kmod_highbank_cpufreq__170_102_hb_cpufreq_driver_init6 = internal global ptr @hb_cpufreq_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author171 = internal constant [68 x i8] c"highbank_cpufreq.author=Mark Langsdorf <mark.langsdorf@calxeda.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [61 x i8] c"highbank_cpufreq.description=Calxeda Highbank cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [55 x i8] c"highbank_cpufreq.file=drivers/cpufreq/highbank-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"highbank_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@__const.hb_cpufreq_driver_init.devinfo = private unnamed_addr constant { ptr, ptr, i8, [3 x i8], ptr, i32, ptr, i32, ptr, i32, [4 x i8], i64, ptr, [4 x i8] } { ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @.str, i32 0, ptr null, i32 0, ptr null, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, [4 x i8] zeroinitializer }, align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calxeda,highbank\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calxeda,ecx-2000\00", [47 x i8] zeroinitializer }, align 32
@hb_cpufreq_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013highbank_cpufreq: failed to get highbank cpufreq device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hb_cpufreq_driver_init\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/cpufreq/highbank-cpufreq.c\00", [61 x i8] zeroinitializer }, align 32
@hb_cpufreq_driver_init._entry_ptr = internal global ptr @hb_cpufreq_driver_init._entry, section ".printk_index", align 4
@hb_cpufreq_driver_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013highbank_cpufreq: failed to find highbank cpufreq node\0A\00", [38 x i8] zeroinitializer }, align 32
@hb_cpufreq_driver_init._entry_ptr.8 = internal global ptr @hb_cpufreq_driver_init._entry.6, section ".printk_index", align 4
@hb_cpufreq_driver_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013highbank_cpufreq: failed to get cpu0 clock: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@hb_cpufreq_driver_init._entry_ptr.11 = internal global ptr @hb_cpufreq_driver_init._entry.9, section ".printk_index", align 4
@hb_cpufreq_clk_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hb_cpufreq_clk_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hb_cpufreq_driver_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013highbank_cpufreq: failed to register clk notifier: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@hb_cpufreq_driver_init._entry_ptr.14 = internal global ptr @hb_cpufreq_driver_init._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 60, i32 50 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 66, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 67, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 72, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 78, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 85, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"hb_cpufreq_clk_nb\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 54, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [38 x i8] c"../drivers/cpufreq/highbank-cpufreq.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 91, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__initcall__kmod_highbank_cpufreq__170_102_hb_cpufreq_driver_init6, ptr @hb_cpufreq_driver_init._entry, ptr @hb_cpufreq_driver_init._entry.12, ptr @hb_cpufreq_driver_init._entry.6, ptr @hb_cpufreq_driver_init._entry.9, ptr @hb_cpufreq_driver_init._entry_ptr, ptr @hb_cpufreq_driver_init._entry_ptr.11, ptr @hb_cpufreq_driver_init._entry_ptr.14, ptr @hb_cpufreq_driver_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @hb_cpufreq_clk_nb, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_cpufreq_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_cpufreq_driver_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_cpufreq_driver_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_cpufreq_clk_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_cpufreq_driver_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hb_cpufreq_driver_init() #0 align 64 {
entry:
  %devinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %devinfo) #4
  %0 = call ptr @memcpy(ptr %devinfo, ptr @__const.hb_cpufreq_driver_init.devinfo, i32 56)
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @get_cpu_device(i32 noundef 0) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_node_get(ptr noundef %2) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call17 = tail call ptr @clk_get(ptr noundef nonnull %call3, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call17 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %3) #7
  br label %out_put_node

if.end26:                                         ; preds = %if.end16
  %call27 = tail call i32 @clk_notifier_register(ptr noundef %call17, ptr noundef nonnull @hb_cpufreq_clk_nb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call27) #7
  br label %out_put_node

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call ptr @platform_device_register_full(ptr noundef nonnull %devinfo) #4
  br label %out_put_node

out_put_node:                                     ; preds = %if.end35, %do.end32, %if.then19
  %ret.0 = phi i32 [ %3, %if.then19 ], [ %call27, %do.end32 ], [ 0, %if.end35 ]
  call void @of_node_put(ptr noundef nonnull %call8) #4
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %do.end13, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_put_node ], [ -2, %do.end13 ], [ -19, %do.end ], [ -19, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %devinfo) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hb_cpufreq_clk_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readonly %hclk) #0 align 64 {
entry:
  %msg.i34 = alloca [7 x i32], align 4
  %msg.i = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %hclk, i32 0, i32 2
  %1 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_rate, align 4
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %hclk, i32 0, i32 1
  %3 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp1 = icmp ugt i32 %2, %4
  br i1 %cmp1, label %while.cond.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %if.then
  %5 = getelementptr inbounds [7 x i32], ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds [7 x i32], ptr %msg.i, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %i.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %7 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_rate, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg.i) #4
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483647, ptr %msg.i, align 4
  %div.i = udiv i32 %8, 1000000
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %5, align 4
  %11 = call ptr @memset(ptr %6, i32 0, i32 20)
  %call.i = call i32 @pl320_ipc_transmit(ptr noundef nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond41 = icmp eq i32 %inc, 17
  br i1 %exitcond41, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %entry
  %new_rate9 = getelementptr inbounds %struct.clk_notifier_data, ptr %hclk, i32 0, i32 2
  %12 = ptrtoint ptr %new_rate9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_rate9, align 4
  %old_rate10 = getelementptr inbounds %struct.clk_notifier_data, ptr %hclk, i32 0, i32 1
  %14 = ptrtoint ptr %old_rate10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old_rate10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp11 = icmp ult i32 %13, %15
  br i1 %cmp11, label %while.cond13.preheader, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond13.preheader:                           ; preds = %if.then8
  %16 = getelementptr inbounds [7 x i32], ptr %msg.i34, i32 0, i32 1
  %17 = getelementptr inbounds [7 x i32], ptr %msg.i34, i32 0, i32 2
  br label %while.cond13

while.cond13:                                     ; preds = %while.body17.while.cond13_crit_edge, %while.cond13.preheader
  %i.1 = phi i32 [ %inc18, %while.body17.while.cond13_crit_edge ], [ 0, %while.cond13.preheader ]
  %18 = ptrtoint ptr %new_rate9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_rate9, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg.i34) #4
  %20 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2147483647, ptr %msg.i34, align 4
  %div.i35 = udiv i32 %19, 1000000
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.i35, ptr %16, align 4
  %22 = call ptr @memset(ptr %17, i32 0, i32 20)
  %call.i36 = call i32 @pl320_ipc_transmit(ptr noundef nonnull %msg.i34) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg.i34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool16.not = icmp eq i32 %call.i36, 0
  br i1 %tobool16.not, label %while.cond13.cleanup_crit_edge, label %while.body17

while.cond13.cleanup_crit_edge:                   ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body17:                                     ; preds = %while.cond13
  %inc18 = add nuw nsw i32 %i.1, 1
  %exitcond = icmp eq i32 %inc18, 17
  br i1 %exitcond, label %while.body17.cleanup_crit_edge, label %while.body17.while.cond13_crit_edge

while.body17.while.cond13_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond13

while.body17.cleanup_crit_edge:                   ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.body17.cleanup_crit_edge, %while.cond13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 32770, %while.body.cleanup_crit_edge ], [ 0, %while.cond13.cleanup_crit_edge ], [ 32770, %while.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl320_ipc_transmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_highbank_cpufreq__170_102_hb_cpufreq_driver_init6, !1, !"__initcall__kmod_highbank_cpufreq__170_102_hb_cpufreq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 102, i32 1}
!2 = !{ptr @__UNIQUE_ID_author171, !3, !"__UNIQUE_ID_author171", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 111, i32 1}
!4 = !{ptr @__UNIQUE_ID_description172, !5, !"__UNIQUE_ID_description172", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 112, i32 1}
!6 = !{ptr @__UNIQUE_ID_file173, !7, !"__UNIQUE_ID_file173", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 113, i32 1}
!8 = !{ptr @__UNIQUE_ID_license174, !7, !"__UNIQUE_ID_license174", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 60, i32 50}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 66, i32 33}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 67, i32 30}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 72, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hb_cpufreq_driver_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @hb_cpufreq_driver_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 78, i32 3}
!23 = !{ptr @hb_cpufreq_driver_init._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hb_cpufreq_driver_init._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 85, i32 3}
!27 = !{ptr @hb_cpufreq_driver_init._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hb_cpufreq_driver_init._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 91, i32 3}
!31 = !{ptr @hb_cpufreq_driver_init._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @hb_cpufreq_driver_init._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @hb_cpufreq_clk_nb, !34, !"hb_cpufreq_clk_nb", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/highbank-cpufreq.c", i32 54, i32 30}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
