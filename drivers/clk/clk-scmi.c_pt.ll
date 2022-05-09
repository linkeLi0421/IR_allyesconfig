; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-scmi.c_pt.bc'
source_filename = "../drivers/clk/clk-scmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.scmi_clk_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_clk = type { i32, %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.scmi_clock_info = type { [16 x i8], i8, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { i32, [16 x i64] }

@__initcall__kmod_clk_scmi__172_213_scmi_clocks_driver_init6 = internal global ptr @scmi_clocks_driver_init, section ".initcall6.init", align 4
@scmi_clocks_driver = internal global { %struct.scmi_driver, [36 x i8] } { %struct.scmi_driver { ptr @.str.1, ptr @scmi_clocks_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_scmi_clocks_driver_exit = internal global ptr @scmi_clocks_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [52 x i8] c"clk_scmi.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [43 x i8] c"clk_scmi.description=ARM SCMI clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [35 x i8] c"clk_scmi.file=drivers/clk/clk-scmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [24 x i8] c"clk_scmi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_scmi\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi-clocks\00", [20 x i8] zeroinitializer }, align 32
@scmi_id_table = internal constant { [2 x %struct.scmi_device_id], [16 x i8] } { [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 20, ptr @.str.12 }, %struct.scmi_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@scmi_proto_clk_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scmi_clocks_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOFn: invalid clock output count\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scmi_clocks_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/clk-scmi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_clocks_probe._entry_ptr = internal global ptr @scmi_clocks_probe._entry, section ".printk_index", align 4
@scmi_clocks_probe.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid clock info for idx %d\0A\00", [33 x i8] zeroinitializer }, align 32
@scmi_clocks_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register clock %d\0A\00", [35 x i8] zeroinitializer }, align 32
@scmi_clocks_probe._entry_ptr.10 = internal global ptr @scmi_clocks_probe._entry.8, section ".printk_index", align 4
@scmi_clocks_probe.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Registered clock:%s\0A\00", [43 x i8] zeroinitializer }, align 32
@scmi_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @scmi_clk_enable, ptr @scmi_clk_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_clk_recalc_rate, ptr @scmi_clk_round_rate, ptr null, ptr null, ptr null, ptr @scmi_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"scmi_clocks_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 208, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 213, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 209, i32 10 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"scmi_id_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 202, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"scmi_proto_clk_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 16, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 159, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 180, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 189, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 193, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"scmi_clk_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 91, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [26 x i8] c"../drivers/clk/clk-scmi.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 203, i32 25 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_scmi_clocks_driver_exit, ptr @__initcall__kmod_clk_scmi__172_213_scmi_clocks_driver_init6, ptr @scmi_clocks_driver_exit, ptr @scmi_clocks_probe._entry, ptr @scmi_clocks_probe._entry.8, ptr @scmi_clocks_probe._entry_ptr, ptr @scmi_clocks_probe._entry_ptr.10, ptr @scmi_clocks_driver, ptr @.str, ptr @.str.1, ptr @scmi_id_table, ptr @scmi_proto_clk_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @scmi_clk_ops, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_clocks_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_proto_clk_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_clocks_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_clocks_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clocks_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_clocks_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_clocks_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_clocks_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clocks_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %ph = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %handle2 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %2 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ph) #7
  %4 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ph, align 4, !annotation !50
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end:                                           ; preds = %entry
  %devm_protocol_get = getelementptr inbounds %struct.scmi_handle, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devm_protocol_get, align 4
  %call = call ptr %6(ptr noundef %sdev, i8 noundef zeroext 20, ptr noundef nonnull %ph) #7
  store ptr %call, ptr @scmi_proto_clk_ops, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  br label %cleanup63

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ph, align 4
  %call7 = call i32 %9(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %1) #10
  br label %cleanup63

if.end9:                                          ; preds = %if.end6
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call7, i32 4) #7
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %14, i32 4) #7
  %retval.0.i109 = select i1 %13, i32 -1, i32 %spec.select.i
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i109, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup63_crit_edge, label %if.end14

if.end9.cleanup63_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end14:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call7, ptr %call.i, align 4
  %hws15 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp16120.not = icmp eq i32 %call7, 0
  br i1 %cmp16120.not, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %16 = getelementptr inbounds i8, ptr %init.i, i32 20
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i110 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #7
  %tobool18.not = icmp eq ptr %call.i110, null
  br i1 %tobool18.not, label %for.body.cleanup63_crit_edge, label %if.end20

for.body.cleanup63_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup63

if.end20:                                         ; preds = %for.body
  %17 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %info_get = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %info_get to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info_get, align 4
  %20 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ph, align 4
  %call21 = call ptr %19(ptr noundef %21, i32 noundef %idx.0121) #7
  %info = getelementptr inbounds %struct.scmi_clk, ptr %call.i110, i32 0, i32 2
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call21, ptr %info, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.body25, label %if.end34

do.body25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_clocks_probe.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_clocks_probe, %if.then30)) #7
          to label %for.inc [label %if.then30], !srcloc !51

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_clocks_probe.__UNIQUE_ID_ddebug170, ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %idx.0121) #7
  br label %for.inc

if.end34:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %call.i110 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %idx.0121, ptr %call.i110, align 4
  %24 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ph, align 4
  %ph35 = getelementptr inbounds %struct.scmi_clk, ptr %call.i110, i32 0, i32 3
  %26 = ptrtoint ptr %ph35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ph35, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %16, align 4
  %28 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call21, ptr %init.i, align 4
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @scmi_clk_ops, ptr %ops.i, align 4
  %30 = call ptr @memset(ptr %parent_names.i, i32 0, i32 13)
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 64, ptr %flags.i, align 4
  %hw.i = getelementptr inbounds %struct.scmi_clk, ptr %call.i110, i32 0, i32 1
  %init2.i = getelementptr inbounds %struct.scmi_clk, ptr %call.i110, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %init.i, ptr %init2.i, align 4
  %call.i111 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.do.end41_crit_edge

if.end34.do.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

if.end.i:                                         ; preds = %if.end34
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %rate_discrete.i = getelementptr inbounds %struct.scmi_clock_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %rate_discrete.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rate_discrete.i, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool5.not.i = icmp eq i8 %36, 0
  %37 = getelementptr inbounds %struct.scmi_clock_info, ptr %34, i32 0, i32 2
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i112 = icmp slt i32 %39, 1
  br i1 %cmp.i112, label %if.then6.i.do.end41_crit_edge, label %cleanup.i

if.then6.i.do.end41_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

cleanup.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %rates.i = getelementptr inbounds %struct.scmi_clock_info, ptr %34, i32 0, i32 2, i32 0, i32 1
  %40 = ptrtoint ptr %rates.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rates.i, align 8
  %conv.i = trunc i64 %41 to i32
  %sub.i = add nsw i32 %39, -1
  %arrayidx14.i = getelementptr %struct.scmi_clock_info, ptr %34, i32 0, i32 2, i32 0, i32 1, i32 %sub.i
  br label %do.body42

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %37, align 8
  %conv18.i = trunc i64 %43 to i32
  %max_rate20.i = getelementptr inbounds %struct.scmi_clock_info, ptr %34, i32 0, i32 2, i32 0, i32 1
  br label %do.body42

do.end41:                                         ; preds = %if.then6.i.do.end41_crit_edge, %if.end34.do.end41_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %idx.0121) #10
  call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i110) #7
  %arrayidx = getelementptr ptr, ptr %hws15, i32 %idx.0121
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

do.body42:                                        ; preds = %if.else.i, %cleanup.i
  %arrayidx14.sink.i = phi ptr [ %arrayidx14.i, %cleanup.i ], [ %max_rate20.i, %if.else.i ]
  %min_rate.1.i = phi i32 [ %conv.i, %cleanup.i ], [ %conv18.i, %if.else.i ]
  %45 = ptrtoint ptr %arrayidx14.sink.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx14.sink.i, align 8
  %conv15.i = trunc i64 %46 to i32
  call void @clk_hw_set_rate_range(ptr noundef %hw.i, i32 noundef %min_rate.1.i, i32 noundef %conv15.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_clocks_probe.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_clocks_probe, %if.then54)) #7
          to label %do.end59 [label %if.then54], !srcloc !51

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_clocks_probe.__UNIQUE_ID_ddebug171, ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef %48) #7
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %arrayidx60 = getelementptr ptr, ptr %hws15, i32 %idx.0121
  %49 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %hw.i, ptr %arrayidx60, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end59, %do.end41, %if.then30, %do.body25
  %inc = add nuw nsw i32 %idx.0121, 1
  %exitcond.not = icmp eq i32 %inc, %call7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %call62 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #7
  br label %cleanup63

cleanup63:                                        ; preds = %for.end, %for.body.cleanup63_crit_edge, %if.end9.cleanup63_crit_edge, %do.end, %if.then4, %entry.cleanup63_crit_edge
  %retval.2 = phi i32 [ %7, %if.then4 ], [ -22, %do.end ], [ %call62, %for.end ], [ -19, %entry.cleanup63_crit_edge ], [ -12, %if.end9.cleanup63_crit_edge ], [ -12, %for.body.cleanup63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ph) #7
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %enable = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enable, align 4
  %ph = getelementptr i8, ptr %hw, i32 16
  %3 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ph, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %call = tail call i32 %2(ptr noundef %4, i32 noundef %6) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_clk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %disable = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disable, align 4
  %ph = getelementptr i8, ptr %hw, i32 16
  %3 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ph, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %call = tail call i32 %2(ptr noundef %4, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %rate = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate) #7
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rate, align 8, !annotation !50
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %1 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %rate_get = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rate_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rate_get, align 4
  %ph = getelementptr i8, ptr %hw, i32 16
  %4 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ph, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %call = call i32 %3(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rate, align 8
  %conv = trunc i64 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rate_discrete = getelementptr inbounds %struct.scmi_clock_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rate_discrete to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rate_discrete, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.scmi_clock_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  %max_rate = getelementptr inbounds %struct.scmi_clock_info, ptr %1, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %max_rate to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %max_rate, align 8
  %conv = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv)
  %cmp.not = icmp ult i64 %6, %conv
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = trunc i64 %6 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp7.not = icmp ugt i64 %8, %conv
  br i1 %cmp7.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv10 = trunc i64 %8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %step_size = getelementptr inbounds %struct.scmi_clock_info, ptr %1, i32 0, i32 2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %step_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %step_size, align 8
  %11 = xor i64 %6, -1
  %sub15 = add i64 %11, %conv
  %add = add i64 %sub15, %10
  %conv18 = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp192 = icmp ult i64 %add, 4294967296
  br i1 %cmp192, label %if.then196, label %if.else202, !prof !53

if.then196:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %conv197 = trunc i64 %add to i32
  %div200 = udiv i32 %conv197, %conv18
  %conv201 = zext i32 %div200 to i64
  br label %if.end206

if.else202:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv18, i64 %add) #11, !srcloc !54
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  br label %if.end206

if.end206:                                        ; preds = %if.else202, %if.then196
  %ftmp.0 = phi i64 [ %conv201, %if.then196 ], [ %asmresult1.i, %if.else202 ]
  %mul210 = mul i64 %ftmp.0, %10
  %add211 = add i64 %mul210, %6
  %conv212 = trunc i64 %add211 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end206, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv5, %if.then4 ], [ %conv10, %if.then9 ], [ %conv212, %if.end206 ], [ %rate, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = load ptr, ptr @scmi_proto_clk_ops, align 4
  %rate_set = getelementptr inbounds %struct.scmi_clk_proto_ops, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %rate_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rate_set, align 4
  %ph = getelementptr i8, ptr %hw, i32 16
  %3 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ph, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %rate to i64
  %call = tail call i32 %2(ptr noundef %4, i32 noundef %6, i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_clk_scmi__172_213_scmi_clocks_driver_init6, !1, !"__initcall__kmod_clk_scmi__172_213_scmi_clocks_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-scmi.c", i32 213, i32 1}
!2 = !{ptr @__exitcall_scmi_clocks_driver_exit, !1, !"__exitcall_scmi_clocks_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-scmi.c", i32 215, i32 1}
!5 = !{ptr @__UNIQUE_ID_description174, !6, !"__UNIQUE_ID_description174", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-scmi.c", i32 216, i32 1}
!7 = !{ptr @__UNIQUE_ID_file175, !8, !"__UNIQUE_ID_file175", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-scmi.c", i32 217, i32 1}
!9 = !{ptr @__UNIQUE_ID_license176, !8, !"__UNIQUE_ID_license176", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/clk-scmi.c", i32 209, i32 10}
!13 = !{ptr @scmi_clocks_driver, !14, !"scmi_clocks_driver", i1 false, i1 false}
!14 = !{!"../drivers/clk/clk-scmi.c", i32 208, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/clk-scmi.c", i32 159, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scmi_clocks_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @scmi_clocks_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/clk-scmi.c", i32 180, i32 4}
!25 = !{ptr @scmi_clocks_probe.__UNIQUE_ID_ddebug170, !24, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-scmi.c", i32 189, i32 4}
!28 = !{ptr @scmi_clocks_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @scmi_clocks_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-scmi.c", i32 193, i32 4}
!32 = !{ptr @scmi_clocks_probe.__UNIQUE_ID_ddebug171, !31, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!33 = !{ptr @scmi_proto_clk_ops, !34, !"scmi_proto_clk_ops", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-scmi.c", i32 16, i32 41}
!35 = !{ptr @scmi_clk_ops, !36, !"scmi_clk_ops", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-scmi.c", i32 91, i32 29}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-scmi.c", i32 203, i32 25}
!39 = !{ptr @scmi_id_table, !40, !"scmi_id_table", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-scmi.c", i32 202, i32 36}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i64 2148920119, i64 2148920124, i64 2148920137, i64 2148920181, i64 2148920215, i64 2148920236}
!52 = !{i8 0, i8 2}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148945306, i64 2148945586, i64 2148945920, i64 2148946254}
