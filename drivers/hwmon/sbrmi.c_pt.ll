; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sbrmi.c_pt.bc'
source_filename = "../drivers/hwmon/sbrmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.sbrmi_mailbox_msg = type { i8, i8, i32, i32 }
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
%struct.sbrmi_data = type { ptr, %struct.mutex, i32 }

@__initcall__kmod_sbrmi__292_355_sbrmi_driver_init6 = internal global ptr @sbrmi_driver_init, section ".initcall6.init", align 4
@sbrmi_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @sbrmi_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sbrmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sbrmi_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sbrmi_driver_exit = internal global ptr @sbrmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [49 x i8] c"sbrmi.author=Akshay Gupta <akshay.gupta@amd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [62 x i8] c"sbrmi.description=Hwmon driver for AMD SB-RMI emulated sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [31 x i8] c"sbrmi.file=drivers/hwmon/sbrmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [18 x i8] c"sbrmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sbrmi\00", [26 x i8] zeroinitializer }, align 32
@sbrmi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amd,sbrmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sbrmi_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sbrmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sbrmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@sbrmi_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @sbrmi_hwmon_ops, ptr @sbrmi_info }, [24 x i8] zeroinitializer }, align 32
@rmi_mailbox_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Firmware fail to indicate command completion\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rmi_mailbox_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hwmon/sbrmi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_mailbox_xfer._entry_ptr = internal global ptr @rmi_mailbox_xfer._entry, section ".printk_index", align 4
@sbrmi_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @sbrmi_is_visible, ptr @sbrmi_read, ptr null, ptr @sbrmi_write }, [16 x i8] zeroinitializer }, align 32
@sbrmi_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.7, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 82432, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 14, i64 16]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 14, i64 16]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"sbrmi_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 345, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 348, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"sbrmi_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 337, i32 49 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"sbrmi_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 331, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 313, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"sbrmi_chip_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 280, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 158, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"sbrmi_hwmon_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 274, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"sbrmi_info\00", align 1
@___asan_gen_.52 = private constant [25 x i8] c"../drivers/hwmon/sbrmi.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 268, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_sbrmi_driver_exit, ptr @__initcall__kmod_sbrmi__292_355_sbrmi_driver_init6, ptr @rmi_mailbox_xfer._entry, ptr @rmi_mailbox_xfer._entry_ptr, ptr @sbrmi_driver_exit, ptr @sbrmi_driver, ptr @.str, ptr @sbrmi_of_match, ptr @sbrmi_id, ptr @sbrmi_probe.__key, ptr @.str.1, ptr @sbrmi_chip_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sbrmi_hwmon_ops, ptr @sbrmi_info, ptr @.compoundliteral, ptr @.compoundliteral.7], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_mailbox_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbrmi_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sbrmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sbrmi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sbrmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sbrmi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbrmi_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %msg.i = alloca %struct.sbrmi_mailbox_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.sbrmi_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sbrmi_probe.__key) #7
  %call.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i = icmp slt i32 %call.i26, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %call.i26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5_crit_edge, label %sbrmi_enable_alert.exit

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

sbrmi_enable_alert.exit:                          ; preds = %if.end.i
  %1 = trunc i32 %call.i26 to i8
  %conv.i = and i8 %1, -17
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %sbrmi_enable_alert.exit.cleanup_crit_edge, label %sbrmi_enable_alert.exit.if.end5_crit_edge

sbrmi_enable_alert.exit.if.end5_crit_edge:        ; preds = %sbrmi_enable_alert.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

sbrmi_enable_alert.exit.cleanup_crit_edge:        ; preds = %sbrmi_enable_alert.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %sbrmi_enable_alert.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %2 = call ptr @memset(ptr %msg.i, i32 0, i32 12)
  %3 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %msg.i, align 4
  %read.i = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %read.i, align 1
  %call.i27 = call fastcc i32 @rmi_mailbox_xfer(ptr noundef nonnull %call.i, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i28 = icmp slt i32 %call.i27, 0
  br i1 %cmp.i28, label %sbrmi_get_max_pwr_limit.exit.thread, label %if.end9

sbrmi_get_max_pwr_limit.exit.thread:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %data_out.i = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg.i, i32 0, i32 3
  %5 = ptrtoint ptr %data_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_out.i, align 4
  %pwr_limit_max.i = getelementptr inbounds %struct.sbrmi_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %pwr_limit_max.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pwr_limit_max.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call10 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @sbrmi_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %call10 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sbrmi_get_max_pwr_limit.exit.thread, %sbrmi_enable_alert.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ %call3.i, %sbrmi_enable_alert.exit.cleanup_crit_edge ], [ %call.i27, %sbrmi_get_max_pwr_limit.exit.thread ], [ %call.i26, %if.end.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_mailbox_xfer(ptr noundef %data, ptr nocapture noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sbrmi_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 63, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.exit_unlock_crit_edge, label %if.end

entry.exit_unlock_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg, align 4
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 56, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.exit_unlock_crit_edge, label %for.cond.preheader

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

for.cond.preheader:                               ; preds = %if.end
  %data_in = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_in, align 4
  %conv = trunc i32 %7 to i8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 57, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.cond.preheader.exit_unlock_crit_edge, label %for.cond

for.cond.preheader.exit_unlock_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

for.cond:                                         ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_in, align 4
  %shr.1 = lshr i32 %11, 8
  %conv.1 = trunc i32 %shr.1 to i8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call9.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 58, i8 noundef zeroext %conv.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp10.1 = icmp slt i32 %call9.1, 0
  br i1 %cmp10.1, label %for.cond.exit_unlock_crit_edge, label %for.cond.1

for.cond.exit_unlock_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

for.cond.1:                                       ; preds = %for.cond
  %14 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_in, align 4
  %shr.2 = lshr i32 %15, 16
  %conv.2 = trunc i32 %shr.2 to i8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call9.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 59, i8 noundef zeroext %conv.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp10.2 = icmp slt i32 %call9.2, 0
  br i1 %cmp10.2, label %for.cond.1.exit_unlock_crit_edge, label %for.cond.2

for.cond.1.exit_unlock_crit_edge:                 ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

for.cond.2:                                       ; preds = %for.cond.1
  %18 = ptrtoint ptr %data_in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_in, align 4
  %shr.3 = lshr i32 %19, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call9.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 60, i8 noundef zeroext %conv.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %cmp10.3 = icmp slt i32 %call9.3, 0
  br i1 %cmp10.3, label %for.cond.2.exit_unlock_crit_edge, label %for.cond.3

for.cond.2.exit_unlock_crit_edge:                 ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

for.cond.3:                                       ; preds = %for.cond.2
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %call15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 64, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %for.cond.3.exit_unlock_crit_edge, label %for.cond.3.do.body_crit_edge

for.cond.3.do.body_crit_edge:                     ; preds = %for.cond.3
  br label %do.body

for.cond.3.exit_unlock_crit_edge:                 ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

do.body:                                          ; preds = %if.end28.do.body_crit_edge, %for.cond.3.do.body_crit_edge
  %retry.0 = phi i32 [ %dec, %if.end28.do.body_crit_edge ], [ 10, %for.cond.3.do.body_crit_edge ]
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %call21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.body.exit_unlock_crit_edge, label %if.end25

do.body.exit_unlock_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end25:                                         ; preds = %do.body
  %and26 = and i32 %call21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool.not = icmp eq i32 %and26, 0
  br i1 %tobool.not, label %if.end28, label %do.end

if.end28:                                         ; preds = %if.end25
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %dec = add nsw i32 %retry.0, -1
  %tobool29.not = icmp eq i32 %retry.0, 0
  br i1 %tobool29.not, label %if.end28.do.end35_crit_edge, label %if.end28.do.body_crit_edge

if.end28.do.body_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end28.do.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %cmp30 = icmp slt i32 %retry.0, 0
  br i1 %cmp30, label %do.end.do.end35_crit_edge, label %if.end37

do.end.do.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end35:                                         ; preds = %do.end.do.end35_crit_edge, %if.end28.do.end35_crit_edge
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %exit_unlock

if.end37:                                         ; preds = %do.end
  %read = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 1
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %read, align 1, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38.not = icmp eq i8 %29, 0
  br i1 %tobool38.not, label %if.end37.if.end56_crit_edge, label %for.cond40.preheader

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

for.cond40.preheader:                             ; preds = %if.end37
  %data_out = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 3
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %call47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %for.cond40.preheader.exit_unlock_crit_edge, label %if.end51

for.cond40.preheader.exit_unlock_crit_edge:       ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end51:                                         ; preds = %for.cond40.preheader
  %32 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_out, align 4
  %or = or i32 %33, %call47
  store i32 %or, ptr %data_out, align 4
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %call47.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.1)
  %cmp48.1 = icmp slt i32 %call47.1, 0
  br i1 %cmp48.1, label %if.end51.exit_unlock_crit_edge, label %if.end51.1

if.end51.exit_unlock_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end51.1:                                       ; preds = %if.end51
  %shl.1 = shl i32 %call47.1, 8
  %36 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_out, align 4
  %or.1 = or i32 %37, %shl.1
  store i32 %or.1, ptr %data_out, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %call47.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.2)
  %cmp48.2 = icmp slt i32 %call47.2, 0
  br i1 %cmp48.2, label %if.end51.1.exit_unlock_crit_edge, label %if.end51.2

if.end51.1.exit_unlock_crit_edge:                 ; preds = %if.end51.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end51.2:                                       ; preds = %if.end51.1
  %shl.2 = shl i32 %call47.2, 16
  %40 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_out, align 4
  %or.2 = or i32 %41, %shl.2
  store i32 %or.2, ptr %data_out, align 4
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %call47.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.3)
  %cmp48.3 = icmp slt i32 %call47.3, 0
  br i1 %cmp48.3, label %if.end51.2.exit_unlock_crit_edge, label %if.end51.3

if.end51.2.exit_unlock_crit_edge:                 ; preds = %if.end51.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_unlock

if.end51.3:                                       ; preds = %if.end51.2
  call void @__sanitizer_cov_trace_pc() #9
  %shl.3 = shl i32 %call47.3, 24
  %44 = ptrtoint ptr %data_out to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_out, align 4
  %or.3 = or i32 %45, %shl.3
  store i32 %or.3, ptr %data_out, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end51.3, %if.end37.if.end56_crit_edge
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = trunc i32 %call21 to i8
  %conv59 = or i8 %48, 2
  %call60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 2, i8 noundef zeroext %conv59) #7
  br label %exit_unlock

exit_unlock:                                      ; preds = %if.end56, %if.end51.2.exit_unlock_crit_edge, %if.end51.1.exit_unlock_crit_edge, %if.end51.exit_unlock_crit_edge, %for.cond40.preheader.exit_unlock_crit_edge, %do.end35, %do.body.exit_unlock_crit_edge, %for.cond.3.exit_unlock_crit_edge, %for.cond.2.exit_unlock_crit_edge, %for.cond.1.exit_unlock_crit_edge, %for.cond.exit_unlock_crit_edge, %for.cond.preheader.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge, %entry.exit_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %entry.exit_unlock_crit_edge ], [ %call2, %if.end.exit_unlock_crit_edge ], [ %call15, %for.cond.3.exit_unlock_crit_edge ], [ -5, %do.end35 ], [ %call60, %if.end56 ], [ %call47, %for.cond40.preheader.exit_unlock_crit_edge ], [ %call47.1, %if.end51.exit_unlock_crit_edge ], [ %call47.2, %if.end51.1.exit_unlock_crit_edge ], [ %call47.3, %if.end51.2.exit_unlock_crit_edge ], [ %call9, %for.cond.preheader.exit_unlock_crit_edge ], [ %call9.1, %for.cond.exit_unlock_crit_edge ], [ %call9.2, %for.cond.1.exit_unlock_crit_edge ], [ %call9.3, %for.cond.2.exit_unlock_crit_edge ], [ %call21, %do.body.exit_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sbrmi_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cond = icmp eq i32 %type, 4
  br i1 %cond, label %sw.bb, label %entry.sw.epilog3_crit_edge

entry.sw.epilog3_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3

sw.bb:                                            ; preds = %entry
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %sw.bb.sw.epilog3_crit_edge [
    i32 9, label %sw.bb.return_crit_edge
    i32 16, label %sw.bb.return_crit_edge4
    i32 14, label %sw.bb2
  ]

sw.bb.return_crit_edge4:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.sw.epilog3_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog3:                                       ; preds = %sw.bb.sw.epilog3_crit_edge, %entry.sw.epilog3_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog3, %sw.bb2, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge4
  %retval.0 = phi i16 [ 0, %sw.epilog3 ], [ 420, %sw.bb2 ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb.return_crit_edge4 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbrmi_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %msg = alloca %struct.sbrmi_mailbox_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = call ptr @memset(ptr %msg, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %read = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %read, align 1
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 9, label %if.end.sw.epilog_crit_edge
    i32 14, label %sw.bb2
    i32 16, label %sw.epilog.thread
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pwr_limit_max = getelementptr inbounds %struct.sbrmi_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pwr_limit_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pwr_limit_max, align 4
  %data_out = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %data_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data_out, align 4
  br label %if.end8

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %storemerge = phi i8 [ 3, %sw.bb2 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %storemerge, ptr %msg, align 4
  %call4 = call fastcc i32 @rmi_mailbox_xfer(ptr noundef %1, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end8_crit_edge

sw.epilog.if.end8_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog.if.end8_crit_edge, %sw.epilog.thread
  %ret.018 = phi i32 [ 0, %sw.epilog.thread ], [ %call4, %sw.epilog.if.end8_crit_edge ]
  %data_out9 = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %data_out9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_out9, align 4
  %mul = mul i32 %10, 1000
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.018, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbrmi_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %msg = alloca %struct.sbrmi_mailbox_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = call ptr @memset(ptr %msg, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %attr)
  %cmp1.not = icmp eq i32 %attr, 14
  %or.cond = or i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %val)
  %cmp2 = icmp sgt i32 %val, 999
  %div = sdiv i32 %val, 1000
  %cond = select i1 %cmp2, i32 %div, i32 0
  %pwr_limit_max = getelementptr inbounds %struct.sbrmi_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %pwr_limit_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwr_limit_max, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %cond, i32 %4)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %msg, align 4
  %data_in = getelementptr inbounds %struct.sbrmi_mailbox_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %data_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %data_in, align 4
  %call9 = call fastcc i32 @rmi_mailbox_xfer(ptr noundef %1, ptr noundef nonnull %msg)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_sbrmi__292_355_sbrmi_driver_init6, !1, !"__initcall__kmod_sbrmi__292_355_sbrmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sbrmi.c", i32 355, i32 1}
!2 = !{ptr @__exitcall_sbrmi_driver_exit, !1, !"__exitcall_sbrmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sbrmi.c", i32 357, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sbrmi.c", i32 358, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sbrmi.c", i32 359, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/sbrmi.c", i32 348, i32 11}
!12 = !{ptr @sbrmi_driver, !13, !"sbrmi_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sbrmi.c", i32 345, i32 26}
!14 = !{ptr @sbrmi_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sbrmi.c", i32 313, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/sbrmi.c", i32 158, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rmi_mailbox_xfer._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rmi_mailbox_xfer._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sbrmi_chip_info, !26, !"sbrmi_chip_info", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/sbrmi.c", i32 280, i32 37}
!27 = !{ptr @sbrmi_hwmon_ops, !28, !"sbrmi_hwmon_ops", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/sbrmi.c", i32 274, i32 31}
!29 = !{ptr @sbrmi_info, !30, !"sbrmi_info", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/sbrmi.c", i32 268, i32 41}
!31 = !{ptr @sbrmi_of_match, !32, !"sbrmi_of_match", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/sbrmi.c", i32 337, i32 49}
!33 = !{ptr @sbrmi_id, !34, !"sbrmi_id", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/sbrmi.c", i32 331, i32 35}
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
