; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm95241.c_pt.bc'
source_filename = "../drivers/hwmon/lm95241.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.lm95241_data = type { ptr, %struct.mutex, i32, i32, i8, [6 x i8], i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm95241__289_477_lm95241_driver_init6 = internal global ptr @lm95241_driver_init, section ".initcall6.init", align 4
@lm95241_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm95241_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm95241_id, ptr @lm95241_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm95241_driver_exit = internal global ptr @lm95241_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [51 x i8] c"lm95241.author=Davide Rizzo <elpa.rizzo@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [50 x i8] c"lm95241.description=LM95231/LM95241 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"lm95241.file=drivers/hwmon/lm95241\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"lm95241.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm95241\00", [24 x i8] zeroinitializer }, align 32
@lm95241_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm95231\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm95241\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 25, i16 42, i16 43, i16 -2], [24 x i8] zeroinitializer }, align 32
@lm95241_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm95241_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @lm95241_hwmon_ops, ptr @lm95241_info }, [24 x i8] zeroinitializer }, align 32
@lm95241_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @lm95241_is_visible, ptr @lm95241_read, ptr null, ptr @lm95241_write }, [16 x i8] zeroinitializer }, align 32
@lm95241_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.5, ptr @.compoundliteral.7, ptr null], [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm95241_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm95241_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/lm95241.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Updating lm95241 data.\0A\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 524454, i32 524454, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.6 }, [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm95231\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 161, i64 164]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 7, i64 19]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 7, i64 19]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 7]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"lm95241_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 466, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 469, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"lm95241_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 459, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 23, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 446, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"lm95241_chip_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 430, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"lm95241_hwmon_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 424, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"lm95241_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 412, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 112, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [27 x i8] c"../drivers/hwmon/lm95241.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 382, i32 10 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lm95241_driver_exit, ptr @__initcall__kmod_lm95241__289_477_lm95241_driver_init6, ptr @lm95241_driver_exit, ptr @lm95241_driver, ptr @.str, ptr @lm95241_id, ptr @normal_i2c, ptr @lm95241_probe.__key, ptr @.str.1, ptr @lm95241_chip_info, ptr @lm95241_hwmon_ops, ptr @lm95241_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95241_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95241_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95241_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95241_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95241_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95241_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95241_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm95241_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm95241_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lm95241_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95241_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm95241_probe.__key) #5
  %interval.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1000, ptr %interval.i, align 4
  %config.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %config.i, align 4
  %trutherm.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %trutherm.i, align 2
  %call.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext 32) #5
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 5) #5
  %4 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %trutherm.i, align 2
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 7, i8 noundef zeroext %5) #5
  %model.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %model.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %model.i, align 1
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 48, i8 noundef zeroext %7) #5
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call3 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @lm95241_chip_info, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %call3 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95241_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -1) #5
  %6 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %if.end4.cleanup_crit_edge [
    i32 161, label %if.end4.sw.epilog_crit_edge
    i32 164, label %sw.bb6
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end4.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str, %sw.bb6 ], [ @.str.8, %if.end4.sw.epilog_crit_edge ]
  %call7 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm95241_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %entry.sw.epilog7_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog7_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog7

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog7_crit_edge

sw.bb.sw.epilog7_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog7

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %attr, label %sw.bb2.sw.epilog7_crit_edge [
    i32 1, label %sw.bb2.return_crit_edge
    i32 19, label %sw.bb2.return_crit_edge9
    i32 5, label %sw.bb2.sw.bb5_crit_edge
    i32 7, label %sw.bb2.sw.bb5_crit_edge10
    i32 2, label %sw.bb2.sw.bb5_crit_edge11
  ]

sw.bb2.sw.bb5_crit_edge11:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb2.sw.bb5_crit_edge10:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb2.sw.bb5_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5

sw.bb2.return_crit_edge9:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2.sw.epilog7_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog7

sw.bb5:                                           ; preds = %sw.bb2.sw.bb5_crit_edge, %sw.bb2.sw.bb5_crit_edge10, %sw.bb2.sw.bb5_crit_edge11
  br label %return

sw.epilog7:                                       ; preds = %sw.bb2.sw.epilog7_crit_edge, %sw.bb.sw.epilog7_crit_edge, %entry.sw.epilog7_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog7, %sw.bb5, %sw.bb2.return_crit_edge, %sw.bb2.return_crit_edge9, %sw.bb.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog7 ], [ 420, %sw.bb5 ], [ 420, %sw.bb.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge9 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95241_read(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %interval.i = getelementptr inbounds %struct.lm95241_data, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval.i, align 4
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @lm95241_update_device(ptr noundef %dev) #5
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 1, label %sw.bb.i7
    i32 5, label %sw.bb14.i
    i32 7, label %sw.bb28.i
    i32 2, label %sw.bb44.i
    i32 19, label %sw.bb59.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i7:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  br i1 %tobool.not.i, label %sw.bb.i7.if.then.i_crit_edge, label %lor.lhs.false.i

sw.bb.i7.if.then.i_crit_edge:                     ; preds = %sw.bb.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i7
  %config.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i32
  %sub.i = add i32 %channel, -1
  %shl.i = shl nuw i32 1, %sub.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %sw.bb.i7.if.then.i_crit_edge
  %mul.i = shl i32 %channel, 1
  %arrayidx.i = getelementptr %struct.lm95241_data, ptr %call.i, i32 0, i32 5, i32 %mul.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %add.i = or i32 %mul.i, 1
  %arrayidx4.i = getelementptr %struct.lm95241_data, ptr %call.i, i32 0, i32 5, i32 %add.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.i, align 1
  %conv.i.i = zext i8 %9 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %conv1.i.i = zext i8 %11 to i16
  %or.i.i = or i16 %shl.i.i, %conv1.i.i
  %conv3.i.i = sext i16 %or.i.i to i32
  %mul.i.i = mul nsw i32 %conv3.i.i, 1000
  %div.i.i = sdiv i32 %mul.i.i, 256
  br label %return.sink.split

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul7.i = shl i32 %channel, 1
  %arrayidx8.i = getelementptr %struct.lm95241_data, ptr %call.i, i32 0, i32 5, i32 %mul7.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8.i, align 1
  %add11.i = or i32 %mul7.i, 1
  %arrayidx12.i = getelementptr %struct.lm95241_data, ptr %call.i, i32 0, i32 5, i32 %add11.i
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12.i, align 1
  %conv.i111.i = zext i8 %13 to i32
  %shl.i112.i = shl nuw nsw i32 %conv.i111.i, 8
  %conv1.i113.i = zext i8 %15 to i32
  %or.i114.i = or i32 %shl.i112.i, %conv1.i113.i
  %mul.i115.i = mul nuw nsw i32 %or.i114.i, 1000
  %div4.i.i = lshr i32 %mul.i115.i, 8
  br label %return.sink.split

sw.bb14.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 1
  %config17.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %config17.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %config17.i, align 4
  %..i = select i1 %cmp.i, i8 2, i8 4
  %18 = and i8 %17, %..i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not.i = icmp eq i8 %18, 0
  %cond26.i = select i1 %tobool25.not.i, i32 0, i32 -128000
  br label %return.sink.split

sw.bb28.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp29.i = icmp eq i32 %channel, 1
  %config32.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %config32.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config32.i, align 4
  %.119.i = select i1 %cmp29.i, i8 2, i8 4
  %21 = and i8 %20, %.119.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool41.not.i = icmp eq i8 %21, 0
  %cond42.i = select i1 %tobool41.not.i, i32 255875, i32 127875
  br label %return.sink.split

sw.bb44.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp45.i = icmp eq i32 %channel, 1
  %model.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %model.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %model.i, align 1
  %.120.i = select i1 %cmp45.i, i8 1, i8 4
  %24 = and i8 %23, %.120.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool56.not.i = icmp eq i8 %24, 0
  %cond57.i = select i1 %tobool56.not.i, i32 2, i32 1
  br label %return.sink.split

sw.bb59.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp60.i = icmp ne i32 %channel, 1
  %status.i = getelementptr inbounds %struct.lm95241_data, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status.i, align 1
  %27 = zext i1 %cmp60.i to i8
  %storemerge.in.in.i = lshr i8 %26, %27
  %storemerge.in.i = and i8 %storemerge.in.in.i, 1
  %storemerge.i = zext i8 %storemerge.in.i to i32
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb59.i, %sw.bb44.i, %sw.bb28.i, %sw.bb14.i, %if.else.i, %if.then.i, %sw.bb.i
  %storemerge.sink.i.sink = phi i32 [ %4, %sw.bb.i ], [ %storemerge.i, %sw.bb59.i ], [ %cond57.i, %sw.bb44.i ], [ %cond42.i, %sw.bb28.i ], [ %cond26.i, %sw.bb14.i ], [ %div.i.i, %if.then.i ], [ %div4.i.i, %if.else.i ]
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge.sink.i.sink, ptr %val, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95241_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.lm95241_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb.i:                                          ; preds = %sw.bb
  %config1.i = getelementptr inbounds %struct.lm95241_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config1.i, align 4
  %5 = and i8 %4, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %val)
  %cmp.i = icmp slt i32 %val, 130
  br i1 %cmp.i, label %sw.bb.i.if.end24.i_crit_edge, label %if.else.i

sw.bb.i.if.end24.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 590, i32 %val)
  %cmp6.i = icmp ult i32 %val, 590
  br i1 %cmp6.i, label %if.then8.i, label %if.else12.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = or i8 %5, 16
  br label %if.end24.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1850, i32 %val)
  %cmp13.i = icmp ult i32 %val, 1850
  br i1 %cmp13.i, label %if.then15.i, label %if.else19.i

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = or i8 %5, 32
  br label %if.end24.i

if.else19.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = or i8 %4, 48
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else19.i, %if.then15.i, %if.then8.i, %sw.bb.i.if.end24.i_crit_edge
  %convrate.0.i = phi i32 [ 182, %if.then8.i ], [ 1000, %if.then15.i ], [ 2700, %if.else19.i ], [ 76, %sw.bb.i.if.end24.i_crit_edge ]
  %config.0.i = phi i8 [ %6, %if.then8.i ], [ %7, %if.then15.i ], [ %8, %if.else19.i ], [ %5, %sw.bb.i.if.end24.i_crit_edge ]
  %interval.i = getelementptr inbounds %struct.lm95241_data, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %convrate.0.i, ptr %interval.i, align 4
  %10 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %config.0.i, ptr %config1.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 3, i8 noundef zeroext %config.0.i) #5
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i7, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %update_lock.i8 = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i8, i32 noundef 0) #5
  %17 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %attr, label %sw.bb1.return.sink.split_crit_edge [
    i32 5, label %sw.bb.i10
    i32 7, label %sw.bb25.i
    i32 2, label %sw.bb60.i
  ]

sw.bb1.return.sink.split_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb.i10:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i9 = icmp eq i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i = icmp slt i32 %val, 0
  %config.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config.i, align 4
  br i1 %cmp.i9, label %if.then.i, label %if.else8.i

if.then.i:                                        ; preds = %sw.bb.i10
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i11

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = or i8 %19, 2
  br label %if.end22.i

if.else.i11:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = and i8 %19, -3
  br label %if.end22.i

if.else8.i:                                       ; preds = %sw.bb.i10
  br i1 %cmp2.i, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = or i8 %19, 4
  br label %if.end22.i

if.else16.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = and i8 %19, -5
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else16.i, %if.then11.i, %if.else.i11, %if.then3.i
  %.sink.i = phi i8 [ %22, %if.then11.i ], [ %23, %if.else16.i ], [ %20, %if.then3.i ], [ %21, %if.else.i11 ]
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink.i, ptr %config.i, align 4
  %valid.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 4
  %25 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid.i, align 4
  %call24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %.sink.i) #5
  br label %return.sink.split

sw.bb25.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp26.i = icmp eq i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127876, i32 %val)
  %cmp29.i = icmp slt i32 %val, 127876
  %config32.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 7
  %26 = ptrtoint ptr %config32.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %config32.i, align 4
  br i1 %cmp26.i, label %if.then28.i, label %if.else42.i

if.then28.i:                                      ; preds = %sw.bb25.i
  br i1 %cmp29.i, label %if.then31.i, label %if.else36.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = or i8 %27, 2
  br label %if.end56.i

if.else36.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = and i8 %27, -3
  br label %if.end56.i

if.else42.i:                                      ; preds = %sw.bb25.i
  br i1 %cmp29.i, label %if.then45.i, label %if.else50.i

if.then45.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = or i8 %27, 4
  br label %if.end56.i

if.else50.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = and i8 %27, -5
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else50.i, %if.then45.i, %if.else36.i, %if.then31.i
  %.sink168.i = phi i8 [ %30, %if.then45.i ], [ %31, %if.else50.i ], [ %28, %if.then31.i ], [ %29, %if.else36.i ]
  %32 = ptrtoint ptr %config32.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink168.i, ptr %config32.i, align 4
  %valid57.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 4
  %33 = ptrtoint ptr %valid57.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %valid57.i, align 4
  %call59.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 3, i8 noundef zeroext %.sink168.i) #5
  br label %return.sink.split

sw.bb60.i:                                        ; preds = %sw.bb1
  %val.off.i = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val.off.i)
  %switch.i = icmp ult i32 %val.off.i, 2
  br i1 %switch.i, label %if.end66.i, label %sw.bb60.i.return.sink.split_crit_edge

sw.bb60.i.return.sink.split_crit_edge:            ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.end66.i:                                       ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp67.i = icmp eq i32 %channel, 1
  %trutherm.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 9
  %34 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %trutherm.i, align 2
  br i1 %cmp67.i, label %if.then69.i, label %if.else93.i

if.then69.i:                                      ; preds = %if.end66.i
  %36 = and i8 %35, -8
  %37 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %trutherm.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp73.i = icmp eq i32 %val, 1
  %model.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 8
  %38 = ptrtoint ptr %model.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %model.i, align 1
  br i1 %cmp73.i, label %if.then75.i, label %if.else83.i

if.then75.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = or i8 %39, 1
  %41 = ptrtoint ptr %model.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %model.i, align 1
  %42 = or i8 %36, 1
  %43 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %trutherm.i, align 2
  br label %if.end119.i

if.else83.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = and i8 %39, -2
  %45 = ptrtoint ptr %model.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %model.i, align 1
  br label %if.end119.i

if.else93.i:                                      ; preds = %if.end66.i
  %46 = and i8 %35, -113
  %47 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %trutherm.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp98.i = icmp eq i32 %val, 1
  %model101.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 8
  %48 = ptrtoint ptr %model101.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %model101.i, align 1
  br i1 %cmp98.i, label %if.then100.i, label %if.else109.i

if.then100.i:                                     ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = or i8 %49, 4
  %51 = ptrtoint ptr %model101.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %model101.i, align 1
  %52 = or i8 %46, 16
  %53 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %trutherm.i, align 2
  br label %if.end119.i

if.else109.i:                                     ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = and i8 %49, -5
  %55 = ptrtoint ptr %model101.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %model101.i, align 1
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else109.i, %if.then100.i, %if.else83.i, %if.then75.i
  %model120.i = getelementptr inbounds %struct.lm95241_data, ptr %14, i32 0, i32 8
  %56 = ptrtoint ptr %model120.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %model120.i, align 1
  %call121.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 48, i8 noundef zeroext %57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %cmp122.i = icmp slt i32 %call121.i, 0
  br i1 %cmp122.i, label %if.end119.i.return.sink.split_crit_edge, label %if.end125.i

if.end119.i.return.sink.split_crit_edge:          ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.end125.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %trutherm.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %trutherm.i, align 2
  %call127.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 7, i8 noundef zeroext %59) #5
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end125.i, %if.end119.i.return.sink.split_crit_edge, %sw.bb60.i.return.sink.split_crit_edge, %if.end56.i, %if.end22.i, %sw.bb1.return.sink.split_crit_edge, %if.end24.i, %sw.bb.return.sink.split_crit_edge
  %update_lock.i8.sink = phi ptr [ %update_lock.i, %sw.bb.return.sink.split_crit_edge ], [ %update_lock.i, %if.end24.i ], [ %update_lock.i8, %sw.bb1.return.sink.split_crit_edge ], [ %update_lock.i8, %if.end22.i ], [ %update_lock.i8, %if.end56.i ], [ %update_lock.i8, %sw.bb60.i.return.sink.split_crit_edge ], [ %update_lock.i8, %if.end119.i.return.sink.split_crit_edge ], [ %update_lock.i8, %if.end125.i ]
  %retval.0.ph = phi i32 [ -95, %sw.bb.return.sink.split_crit_edge ], [ %call26.i, %if.end24.i ], [ -95, %sw.bb1.return.sink.split_crit_edge ], [ %call24.i, %if.end22.i ], [ %call59.i, %if.end56.i ], [ -22, %sw.bb60.i.return.sink.split_crit_edge ], [ %call121.i, %if.end119.i.return.sink.split_crit_edge ], [ %call127.i, %if.end125.i ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i8.sink) #5
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lm95241_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.lm95241_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %last_updated = getelementptr inbounds %struct.lm95241_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %interval = getelementptr inbounds %struct.lm95241_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #5
  %add = add i32 %call2.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.lm95241_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm95241_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm95241_update_device, %do.end)) #5
          to label %if.then8 [label %do.end], !srcloc !46

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm95241_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #5
  %conv = trunc i32 %call10 to i8
  %arrayidx11 = getelementptr %struct.lm95241_data, ptr %1, i32 0, i32 5, i32 0
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx11, align 1
  %call10.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #5
  %conv.1 = trunc i32 %call10.1 to i8
  %arrayidx11.1 = getelementptr %struct.lm95241_data, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.1, ptr %arrayidx11.1, align 1
  %call10.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #5
  %conv.2 = trunc i32 %call10.2 to i8
  %arrayidx11.2 = getelementptr %struct.lm95241_data, ptr %1, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.2, ptr %arrayidx11.2, align 1
  %call10.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #5
  %conv.3 = trunc i32 %call10.3 to i8
  %arrayidx11.3 = getelementptr %struct.lm95241_data, ptr %1, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.3, ptr %arrayidx11.3, align 1
  %call10.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #5
  %conv.4 = trunc i32 %call10.4 to i8
  %arrayidx11.4 = getelementptr %struct.lm95241_data, ptr %1, i32 0, i32 5, i32 4
  %15 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.4, ptr %arrayidx11.4, align 1
  %call10.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #5
  %conv.5 = trunc i32 %call10.5 to i8
  %arrayidx11.5 = getelementptr %struct.lm95241_data, ptr %1, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.5, ptr %arrayidx11.5, align 1
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #5
  %conv13 = trunc i32 %call12 to i8
  %status = getelementptr inbounds %struct.lm95241_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %status, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %last_updated, align 4
  %valid15 = getelementptr inbounds %struct.lm95241_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %valid15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %valid15, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end, %lor.lhs.false.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #5
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_lm95241__289_477_lm95241_driver_init6, !1, !"__initcall__kmod_lm95241__289_477_lm95241_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm95241.c", i32 477, i32 1}
!2 = !{ptr @__exitcall_lm95241_driver_exit, !1, !"__exitcall_lm95241_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm95241.c", i32 479, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm95241.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm95241.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm95241.c", i32 469, i32 11}
!12 = !{ptr @lm95241_driver, !13, !"lm95241_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm95241.c", i32 466, i32 26}
!14 = !{ptr @lm95241_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm95241.c", i32 446, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lm95241_chip_info, !18, !"lm95241_chip_info", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm95241.c", i32 430, i32 37}
!19 = !{ptr @lm95241_hwmon_ops, !20, !"lm95241_hwmon_ops", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/lm95241.c", i32 424, i32 31}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/lm95241.c", i32 112, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lm95241_update_device.__UNIQUE_ID_ddebug288, !22, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!26 = distinct !{null, !27, !"lm95241_reg_address", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/lm95241.c", i32 66, i32 17}
!28 = !{ptr @lm95241_info, !29, !"lm95241_info", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/lm95241.c", i32 412, i32 41}
!30 = !{ptr @lm95241_id, !31, !"lm95241_id", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/lm95241.c", i32 459, i32 35}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/lm95241.c", i32 382, i32 10}
!34 = !{ptr @normal_i2c, !35, !"normal_i2c", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/lm95241.c", i32 23, i32 29}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{i64 2148996829, i64 2148996834, i64 2148996847, i64 2148996891, i64 2148996925, i64 2148996946}
