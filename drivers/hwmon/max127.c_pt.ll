; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max127.c_pt.bc'
source_filename = "../drivers/hwmon/max127.c"
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
%struct.hwmon_channel_info = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.max127_data = type { %struct.mutex, ptr, [8 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_max127__288_347_max127_driver_init6 = internal global ptr @max127_driver_init, section ".initcall6.init", align 4
@max127_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @max127_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max127_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max127_driver_exit = internal global ptr @max127_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [33 x i8] c"max127.file=drivers/hwmon/max127\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [19 x i8] c"max127.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [42 x i8] c"max127.author=Mike Choi <mikechoi@fb.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [46 x i8] c"max127.author=Tao Ren <rentao.bupt@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [53 x i8] c"max127.description=MAX127 Hardware Monitoring driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max127\00", [25 x i8] zeroinitializer }, align 32
@max127_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max127\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max127_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@max127_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @max127_hwmon_ops, ptr @max127_info }, [24 x i8] zeroinitializer }, align 32
@max127_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @max127_is_visible, ptr @max127_read, ptr null, ptr @max127_write }, [16 x i8] zeroinitializer }, align 32
@max127_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.2, ptr null], [24 x i8] zeroinitializer }, align 32
@max127_read_min.min_input_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -5000, i32 0, i32 -10000], [16 x i8] zeroinitializer }, align 32
@max127_read_max.max_input_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5000, i32 5000, i32 10000, i32 10000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@switch.table.max127_is_visible = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 292, i16 420, i16 420], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"max127_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 338, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 341, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"max127_id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 332, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 319, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"max127_chip_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 301, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"max127_hwmon_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 282, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"max127_info\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 288, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"min_input_map\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 144, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"max_input_map\00", align 1
@___asan_gen_.32 = private constant [26 x i8] c"../drivers/hwmon/max127.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 158, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [31 x i8] c"switch.table.max127_is_visible\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_max127_driver_exit, ptr @__initcall__kmod_max127__288_347_max127_driver_init6, ptr @max127_driver_exit, ptr @max127_driver, ptr @.str, ptr @max127_id, ptr @max127_probe.__key, ptr @.str.1, ptr @max127_chip_info, ptr @max127_hwmon_ops, ptr @max127_info, ptr @max127_read_min.min_input_map, ptr @max127_read_max.max_input_map, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @switch.table.max127_is_visible], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_read_min.min_input_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max127_read_max.max_input_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max127_is_visible to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max127_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max127_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max127_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max127_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max127_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 104, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client2 = getelementptr inbounds %struct.max127_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client2, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @max127_probe.__key) #5
  %arrayidx = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %arrayidx, align 1
  %arrayidx.1 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -112, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -96, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -80, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -64, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -48, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -32, ptr %arrayidx.6, align 1
  %arrayidx.7 = getelementptr %struct.max127_data, ptr %call.i, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -16, ptr %arrayidx.7, align 1
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call3 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max127_chip_info, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call3 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max127_is_visible(ptr nocapture noundef readnone %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.max127_is_visible, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max127_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %i2c_data.i.i = alloca [2 x i8], align 1
  %msg.i16.i = alloca %struct.i2c_msg, align 4
  %ctrl_byte.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp.not = icmp eq i32 %type, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %client1.i = getelementptr inbounds %struct.max127_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client1.i, align 4
  %arrayidx.i = getelementptr %struct.max127_data, ptr %1, i32 0, i32 2, i32 %channel
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ctrl_byte.addr.i.i) #5
  %7 = ptrtoint ptr %ctrl_byte.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctrl_byte.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 131071, ptr %8, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr1.i.i, align 2
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ctrl_byte.addr.i.i, ptr %buf.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i, 1
  %..i.i = select i1 %cmp2.not.i.i, i32 0, i32 -5
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ctrl_byte.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.max127_read_input.exit_crit_edge

sw.bb.max127_read_input.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %max127_read_input.exit

if.end.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %i2c_data.i.i) #5
  %17 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %i2c_data.i.i, align 1, !annotation !40
  %18 = getelementptr inbounds [2 x i8], ptr %i2c_data.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %18, align 1, !annotation !40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i16.i) #5
  %20 = getelementptr inbounds i8, ptr %msg.i16.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %22 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr1.i.i, align 2
  %24 = ptrtoint ptr %msg.i16.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msg.i16.i, align 4
  %flags.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i18.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags.i18.i, align 2
  %buf.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i20.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %i2c_data.i.i, ptr %buf.i20.i, align 4
  %27 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i.i, align 8
  %call.i22.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i16.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %cmp.i23.i = icmp slt i32 %call.i22.i, 0
  br i1 %cmp.i23.i, label %if.end.i.max127_read_channel.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.max127_read_channel.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max127_read_channel.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i22.i)
  %cmp2.not.i24.i = icmp eq i32 %call.i22.i, 1
  br i1 %cmp2.not.i24.i, label %if.end6.i, label %if.end.i.i.max127_read_channel.exit.thread.i_crit_edge

if.end.i.i.max127_read_channel.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max127_read_channel.exit.thread.i

max127_read_channel.exit.thread.i:                ; preds = %if.end.i.i.max127_read_channel.exit.thread.i_crit_edge, %if.end.i.max127_read_channel.exit.thread.i_crit_edge
  %retval.0.i25.ph.i = phi i32 [ -5, %if.end.i.i.max127_read_channel.exit.thread.i_crit_edge ], [ %call.i22.i, %if.end.i.max127_read_channel.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i16.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i.i) #5
  br label %max127_read_input.exit

if.end6.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %18, align 1
  %31 = lshr i8 %30, 4
  %32 = zext i8 %31 to i32
  %33 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i2c_data.i.i, align 1
  %conv7.i.i = zext i8 %34 to i32
  %shl.i.i = shl nuw nsw i32 %conv7.i.i, 4
  %or.i.i = or i32 %shl.i.i, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i16.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %i2c_data.i.i) #5
  %conv.i.i = zext i8 %6 to i32
  %and2.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %and4.i.i = and i32 %shl.i.i, 2048
  %and5.i.i = and i32 %or.i.i, 2047
  %sub.i.i = sub nsw i32 %and5.i.i, %and4.i.i
  %mul.i.i = shl nsw i32 %sub.i.i, 1
  %raw.addr.0.i.i = select i1 %tobool3.not.i.i, i32 %or.i.i, i32 %mul.i.i
  %and.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 5000, i32 10000
  %mul6.i.i = mul nsw i32 %raw.addr.0.i.i, %cond.i.i
  %div.i.i = sdiv i32 %mul6.i.i, 4096
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i.i, ptr %val, align 4
  br label %max127_read_input.exit

max127_read_input.exit:                           ; preds = %if.end6.i, %max127_read_channel.exit.thread.i, %sw.bb.max127_read_input.exit_crit_edge
  %status.0.i = phi i32 [ %retval.0.i.i, %sw.bb.max127_read_input.exit_crit_edge ], [ 0, %if.end6.i ], [ %retval.0.i25.ph.i, %max127_read_channel.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %1) #5
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i13 = getelementptr %struct.max127_data, ptr %1, i32 0, i32 2, i32 %channel
  %36 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i13, align 1
  %38 = lshr i8 %37, 2
  %39 = and i8 %38, 3
  %idxprom.i = zext i8 %39 to i32
  %arrayidx2.i = getelementptr [4 x i32], ptr @max127_read_min.min_input_map, i32 0, i32 %idxprom.i
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i14 = getelementptr %struct.max127_data, ptr %1, i32 0, i32 2, i32 %channel
  %43 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i14, align 1
  %45 = lshr i8 %44, 2
  %46 = and i8 %45, 3
  %idxprom.i15 = zext i8 %46 to i32
  %arrayidx2.i16 = getelementptr [4 x i32], ptr @max127_read_max.max_input_map, i32 0, i32 %idxprom.i15
  %47 = ptrtoint ptr %arrayidx2.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx2.i16, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb2, %max127_read_input.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ %status.0.i, %max127_read_input.exit ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max127_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp.not = icmp eq i32 %type, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %arrayidx.i = getelementptr %struct.max127_data, ptr %1, i32 0, i32 2, i32 %channel
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9999, i32 %val)
  %cmp.i = icmp slt i32 %val, -9999
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %5 = or i8 %4, 12
  br label %max127_write_min.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i = icmp slt i32 %val, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.else10.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = and i8 %4, -13
  %7 = or i8 %6, 4
  br label %max127_write_min.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = and i8 %4, -5
  br label %max127_write_min.exit

max127_write_min.exit:                            ; preds = %if.else10.i, %if.then4.i, %if.then.i
  %ctrl.0.i = phi i8 [ %5, %if.then.i ], [ %7, %if.then4.i ], [ %8, %if.else10.i ]
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %ctrl.0.i, ptr %arrayidx.i, align 1
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %val)
  %cmp.i8 = icmp sgt i32 %val, 9999
  %arrayidx.i9 = getelementptr %struct.max127_data, ptr %1, i32 0, i32 2, i32 %channel
  %10 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i9, align 1
  %12 = and i8 %11, -9
  %masksel.i = select i1 %cmp.i8, i8 8, i8 0
  %.sink.i = or i8 %12, %masksel.i
  store i8 %.sink.i, ptr %arrayidx.i9, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %max127_write_min.exit
  tail call void @mutex_unlock(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_max127__288_347_max127_driver_init6, !1, !"__initcall__kmod_max127__288_347_max127_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max127.c", i32 347, i32 1}
!2 = !{ptr @__exitcall_max127_driver_exit, !1, !"__exitcall_max127_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max127.c", i32 349, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/max127.c", i32 350, i32 1}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/max127.c", i32 351, i32 1}
!10 = !{ptr @__UNIQUE_ID_description293, !11, !"__UNIQUE_ID_description293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max127.c", i32 352, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max127.c", i32 341, i32 11}
!14 = !{ptr @max127_driver, !15, !"max127_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max127.c", i32 338, i32 26}
!16 = !{ptr @max127_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/max127.c", i32 319, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @max127_chip_info, !20, !"max127_chip_info", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max127.c", i32 301, i32 37}
!21 = !{ptr @max127_hwmon_ops, !22, !"max127_hwmon_ops", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/max127.c", i32 282, i32 31}
!23 = !{ptr @max127_read_min.min_input_map, !24, !"min_input_map", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/max127.c", i32 144, i32 19}
!25 = !{ptr @max127_read_max.max_input_map, !26, !"max_input_map", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/max127.c", i32 158, i32 19}
!27 = !{ptr @max127_info, !28, !"max127_info", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/max127.c", i32 288, i32 41}
!29 = !{ptr @max127_id, !30, !"max127_id", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/max127.c", i32 332, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
